<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PendingRequest.aspx.cs"  MasterPageFile="~/BackToAdmin.Master"  Inherits="Industrial_Experts.RequestGrid" %>
<asp:Content ID="BackAdmin" ContentPlaceHolderID="BackToAdminPage" runat="server">
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
 
     <asp:GridView ID="Approvedgrid" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="EmpId" OnRowCommand="Approvedgrid_RowCommand"
    
        Height="390px" Width="1525px"  AutoGenerateColumns="False" CssClass="table table-condensed table-hover" >
         <Columns>


             <asp:TemplateField HeaderText="EmpId" InsertVisible="False" SortExpression="EmpId">
                 <EditItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("EmpId") %>'></asp:Label>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmpId") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Fname" SortExpression="Fname">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Fname") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("Fname") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Address" SortExpression="Address">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label3" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Email" SortExpression="Email">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="PhoneNo" SortExpression="PhoneNo">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("PhoneNo") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label5" runat="server" Text='<%# Bind("PhoneNo") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="ItiRegNo" SortExpression="ItiRegNo">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ItiRegNo") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label6" runat="server" Text='<%# Bind("ItiRegNo") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="StudentId" SortExpression="StudentId">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("StudentId") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label7" runat="server" Text='<%# Bind("StudentId") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Certifications" SortExpression="Certifications">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Certifications") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label8" runat="server" Text='<%# Bind("Certifications") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>


             <asp:TemplateField ShowHeader="False">
                 <ItemTemplate>
                     <asp:LinkButton ID="btnval" runat="server" CausesValidation="false" CssClass="btn btn-info" Text="Validate" CommandName="Validate"  CommandArgument='<%# Eval("ItiRegNo") %>' OnClick="btnval_Click" ></asp:LinkButton>
                 </ItemTemplate>
             </asp:TemplateField>


         </Columns>
     </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialExpertsConnectionString %>" SelectCommand="SELECT [EmpId], [Fname], [Address], [Email], [PhoneNo], [ItiRegNo], [StudentId], [Certifications] FROM [EmployeeDetails]"></asp:SqlDataSource>
    
     <div class="text-center fs-5">
         <asp:Label ID="lbldel" runat="server" CssClass=" text-danger"></asp:Label>
     </div>
        
   
</body>
</html>
    </asp:Content>