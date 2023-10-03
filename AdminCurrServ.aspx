<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCurrServ.aspx.cs" MasterPageFile="~/BackToDash.Master" Inherits="Industrial_Experts.AdminCurrServ" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderBackToDash">
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
    <asp:Label ID="lblmes" runat="server" CssClass="text-center"></asp:Label>
     <asp:GridView ID="AdminCurrServices" runat="server" Height="100px" AutoGenerateColumns="False" CssClass="table table-condensed table-hover text-center mt-3">
         
     
       <Columns>
      <asp:TemplateField HeaderText="Customer Name">
          <ItemTemplate>
              <%# Eval("ServiceName") %>
          </ItemTemplate>
      </asp:TemplateField>
       </Columns>
     
     
     
     
     
     
     </asp:GridView>
</body>
</html>
</asp:Content>