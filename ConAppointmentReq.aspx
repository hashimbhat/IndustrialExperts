<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConAppointmentReq.aspx.cs" MasterPageFile="~/BackToDash.Master"  Inherits="Industrial_Experts.ConAppointmentReq" %>
<asp:Content ID="ConAppGrid" runat="server" ContentPlaceHolderID="ContentPlaceHolderBackToDash" >
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
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
     <asp:Label ID="lblmes" runat="server" CssClass="text-center"></asp:Label>
           <asp:GridView ID="AppointmentReqConGrid" runat="server" Height="150px" AutoGenerateColumns="False" OnRowCommand="AppointmentReqConGrid_RowCommand"  CssClass="table table-condensed table-hover text-center mt-3">
    <Columns>
        <asp:TemplateField HeaderText="Customer Name">
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
                <asp:Button ID="btnApprove" runat="server" CssClass="btn btn-primary" Text="Approve" CommandName="Approve" CommandArgument='<%# Bind("ConId") %>' />
                 </div>
                <div class="btn-group">
                <asp:Button ID="btnDeny" runat="server" CssClass="btn btn-danger"  Text="Deny" CommandName="Deny" CommandArgument='<%# Bind("ConId") %>'   />
                    </div>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

            <div class="text-center text-danger">
                <asp:Label ID="lblapprove" runat="server" ></asp:Label>

            </div>

</body>
</html>
</asp:Content>