<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustScheCon.aspx.cs" MasterPageFile="~/BackToDash.Master" Inherits="Industrial_Experts.CustScheCon" %>
<asp:Content ID="SchCoN" runat="server" ContentPlaceHolderID="ContentPlaceHolderBackToDash">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
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
    <div class="text-center">
      <asp:Label ID="lblmes" runat="server" CssClass="fs-1"></asp:Label>
        </div>
               <asp:GridView ID="CustScheConGrid" runat="server" Height="150px" AutoGenerateColumns="False" OnRowCommand="CustScheConGrid_RowCommand" CssClass="table table-condensed table-hover text-center mt-3">
    <Columns>
       
        <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                <%# Eval("FName") %>
            </ItemTemplate>
        </asp:TemplateField>
      
        <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <%# Eval("Email") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Address">
            <ItemTemplate>
                <%# Eval("Address") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Phone Number">
            <ItemTemplate>
                <%# Eval("PhoneNo") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <asp:Button ID="BookConApp" runat="server" CssClass="btn btn-primary" Font-Bold="true" OnClick="BookConApp_Click" CommandName="Booking" CommandArgument='<%# Eval("Email") %>'   Text="Book An Appointment"></asp:Button>
       
            </ItemTemplate>

        </asp:TemplateField>
         
       
    </Columns>
</asp:GridView>

</body>
</html>
</asp:Content>