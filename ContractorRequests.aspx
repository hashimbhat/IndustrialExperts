<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContractorRequests.aspx.cs" MasterPageFile="~/BackToAdmin.Master" Inherits="Industrial_Experts.ContractorRequests" %>
<asp:Content ID="BackAdmin" ContentPlaceHolderID="BackToAdminPage" runat="server">
<!DOCTYPE html>

<html>
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
    <asp:GridView ID="Contractorgrid" runat="server" OnRowCommand="Contractorgrid_RowCommand"   Height="390px" Width="1525px"  AutoGenerateColumns="False" CssClass="table table-condensed table-hover" DataKeyNames="ContractorId" DataSourceID="ContractorConn">
        <Columns>


             
            
            
            <asp:TemplateField HeaderText="ContractorId" InsertVisible="False" SortExpression="ContractorId">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ContractorId") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ContractorId") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="PhoneNo" SortExpression="PhoneNo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PhoneNo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("PhoneNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="ContractorLicNo" SortExpression="ContractorLicNo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ContractorLicNo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("ContractorLicNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="btnval" runat="server" CausesValidation="false" CommandName="Validate" CommandArgument='<%# Eval("ItiRegNo") %>' Text="Validate" CssClass="btn btn-info"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>












        </Columns>

</asp:GridView>
    <asp:SqlDataSource ID="ContractorConn" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialExpertsConnectionString %>" SelectCommand="SELECT [ContractorId], [Fname], [Address], [PhoneNo], [Email], [ItiRegNo], [ContractorLicNo] FROM [ContractorDetails]"></asp:SqlDataSource>
      
     <div class="text-center fs-5">
         <asp:Label ID="lbldel" runat="server" CssClass=" text-danger"></asp:Label>
     </div>
</body>
</html>
    </asp:Content>