<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpAppSta.aspx.cs" MasterPageFile="~/BackToDash.Master" Inherits="Industrial_Experts.EmpAppSta" %>
<asp:Content runat="server" ID="CtApproved" ContentPlaceHolderID="ContentPlaceHolderBackToDash" >
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
   
               <asp:GridView ID="ApprovedReqGrid" runat="server" Height="150px" AutoGenerateColumns="False" OnRowCommand="ApprovedReqGrid_RowCommand" CssClass="table table-condensed table-hover text-center">
    <Columns>
        <asp:TemplateField HeaderText="First Name">
            <ItemTemplate>
                <%# Eval("Fname") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Address">
            <ItemTemplate>
                <%# Eval("Address") %>
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
             <%# Eval("Amount") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <div class="btn-group">
                <asp:Button ID="btnEnd" runat="server" CssClass="btn btn-primary mb-lg-2" Text="End" CommandArgument='<%# Bind("EmpId") %>' CommandName="EmpId" />
                 </div>
             
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
    
</body>
</html>
</asp:Content>