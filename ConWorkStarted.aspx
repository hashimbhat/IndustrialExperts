<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConWorkStarted.aspx.cs" MasterPageFile="~/BackToDash.Master" Inherits="Industrial_Experts.ConWorkStarted" %>
<asp:Content runat="server" ID="ConStar" ContentPlaceHolderID="ContentPlaceHolderBackToDash"> 
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
   <asp:Label ID="lblmes" runat="server" CssClass="text-center"></asp:Label>
 <%--              <asp:GridView ID="ContStarted" runat="server" Height="150px" AutoGenerateColumns="False"CssClass="table table-condensed table-hover text-center mt-3">
    <Columns>
       
        <asp:TemplateField HeaderText="Contractor Email">
            <ItemTemplate>
                <%# Eval("EmpEmail") %>
            </ItemTemplate>
        </asp:TemplateField>
      
        <asp:TemplateField HeaderText="Contract Description">
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
     </Columns>
 </asp:GridView>--%>
         <asp:GridView ID="ContWorkStaGrid" runat="server" Height="150px" AutoGenerateColumns="False"  CssClass="table table-condensed table-hover text-center mt-3">
    <Columns>
       
        <asp:TemplateField HeaderText="Contractor Email">
            <ItemTemplate>
                <%# Eval("EmpEmail") %>
            </ItemTemplate>
        </asp:TemplateField>
      
        <asp:TemplateField HeaderText="Contract Description">
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
            </Columns>
</asp:GridView>

</body>
</html>
    </asp:Content>