<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpAppointmentReq.aspx.cs" MasterPageFile="~/BackToDash.Master" Inherits="Industrial_Experts.EmpAppointmentReq"  EnableEventValidation="false" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderBackToDash" >
<!DOCTYPE html>

<html>
<head>
    <title></title>
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>
body {
width: 100%;
margin: 5px;
background:#eaece5;
}

.table-condensed tr th {
border: 0px solid #6e7bd9;
color: white;
background-color: #6e7bd9;
}

.table-condensed, .table-condensed tr td {
border: 0px solid #000;
}

tr:nth-child(even) {
background: #f8f7ff
}

tr:nth-child(odd) {
background: #fff;
}
</style>
</head>
<body>
    
        <div>





           <%-- <asp:GridView ID="AppointmentReqGrid" runat="server" Height="390px" Width="1525px"  AutoGenerateColumns="False" CssClass="table table-condensed table-hover">
            </asp:GridView>--%>

        <%--    <asp:GridView ID="AppointmentReqGrid" runat="server"  Height="150px" AutoGenerateColumns="False" CssClass="table table-condensed table-hover">
    <Columns>
        <asp:BoundField DataField="Fname" HeaderText="First Name" />
        <asp:BoundField DataField="Address" HeaderText="Address" />
        <asp:BoundField DataField="Email" HeaderText="Email" />
        <asp:BoundField DataField="PhoneNo" HeaderText="Phone Number" />
        <asp:BoundField DataField="WorkDesc" HeaderText="Work Description" />
        <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
        <asp:BoundField DataField="AddressSite" HeaderText="Address Site" />
        <asp:ButtonField CommandName="Cancel" ControlStyle-CssClass=" btn btn-primary" Text="Approve" />
        <asp:ButtonField CommandName="Cancel" ControlStyle-CssClass=" btn btn-danger"  Text="Deny" />
    </Columns>
</asp:GridView>--%>
            <asp:Label ID="lblmes" runat="server" CssClass="text-center"></asp:Label>
           <asp:GridView ID="AppointmentReqGrid" runat="server" Height="150px" AutoGenerateColumns="False" OnRowCommand="AppointmentReqGrid_RowCommand" CssClass="table table-condensed table-hover text-center mt-3">
    <Columns>
        <asp:TemplateField HeaderText="First Name">
            <ItemTemplate>
                <%# Eval("Fname") %>
            </ItemTemplate>
        </asp:TemplateField>
       
        <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <%# Eval("Email") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Phone Number">
            <ItemTemplate>
                <%# Eval("PhoneNo") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Work Description">
            <ItemTemplate>
                <%# Eval("WorkDesc") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Start Date">
            <ItemTemplate>
                <%# Eval("StartDate") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Address Site">
            <ItemTemplate>
                <%# Eval("AddressSite") %>
            </ItemTemplate>
        </asp:TemplateField>
          <asp:TemplateField HeaderText="Status">
            <ItemTemplate>
                <%# Eval("Status") %>
            </ItemTemplate>
        </asp:TemplateField>
         <asp:TemplateField HeaderText="Amount">
            <ItemTemplate>
            <asp:TextBox ID="txtamount" runat="server" CssClass=" form-control "></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <div class="btn-group">
                <asp:Button ID="btnApprove" runat="server" CssClass="btn btn-primary" Text="Approve" CommandName="Approve" OnClick="btnApprove_Click" CommandArgument='<%# Bind("EmpId") %>' />
                 </div>
                <div class="btn-group">
                <asp:Button ID="btnDeny" runat="server" CssClass="btn btn-danger"  Text="Deny" CommandName="Deny" CommandArgument='<%# Bind("EmpId") %>'  />
                    </div>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

            <div class="text-center text-danger">
                <asp:Label ID="lblapprove" runat="server" ></asp:Label>

            </div>

           




        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialExpertsConnectionString %>"
    SelectCommand="SELECT [Fname], [Address], [Email], [PhoneNo], [StartDate], [WorkDesc], [AddressSite], [Status] FROM [AppointmentsEmp]">
</asp:SqlDataSource>

    
</body>
</html>
</asp:Content>