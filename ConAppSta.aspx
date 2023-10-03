<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConAppSta.aspx.cs" MasterPageFile="~/BackToDash.Master" Inherits="Industrial_Experts.ConAppSta" %>
<asp:Content ID="ConAppSta" runat="server" ContentPlaceHolderID="ContentPlaceHolderBackToDash">
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
               <asp:GridView ID="ConAppStaGrid" runat="server" Height="150px" AutoGenerateColumns="False" OnRowCommand="ConAppStaGrid_RowCommand" CssClass="table table-condensed table-hover text-center mt-3">
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
        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <div class="btn-group">
                <asp:Button ID="Accept" runat="server" CssClass="btn btn-primary mb-lg-2" Text="Accept" OnClick="Accept_Click"  CommandName="Acc" CommandArgument='<%# Bind("ConId") %>'/> 
                    <asp:Button ID="Reject" runat="server" CssClass="btn btn-danger mb-lg-2" Text="Reject" OnClick="Reject_Click" CommandName="Rej" CommandArgument='<%# Bind("ConId") %>'/> 
                 </div>
             
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
</body>
</html>
</asp:Content>