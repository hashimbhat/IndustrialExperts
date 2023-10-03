<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerServices.aspx.cs" MasterPageFile="~/CustomerMaster.Master" Inherits="Industrial_Experts.Plumbers" %>
<asp:Content runat="server" ContentPlaceHolderID="CustomerServices">
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
    








        <asp:GridView ID="CustomerServices" runat="server" AutoGenerateColumns="False" CssClass="table table-condensed table-hover mt-lg-5 " OnRowCommand="CustomerServices_RowCommand" >
    <Columns>
      
        <asp:TemplateField HeaderText="Name">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Fname") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Fname") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Address">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Email">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Certifications">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Certifications") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Certifications") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="btnbooking" runat="server" CausesValidation="false" CommandName="Booking" Text="Book An Appointment" Font-Bold="true" OnClick="btnbooking_Click" CommandArgument='<%# Eval("Email") %>' ></asp:LinkButton>
            </ItemTemplate>
            <ControlStyle CssClass="btn btn-primary text-white btn-sm" />
        </asp:TemplateField>
        
    </Columns>
</asp:GridView>





    <%-- <asp:GridView ID="SelectedServices" runat="server"  Height="390px" Width="1525px"  AutoGenerateColumns="False" CssClass="table table-condensed table-hover"  >
            <Columns>--%>




<%--                <asp:TemplateField HeaderText="Address" SortExpression="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fname" SortExpression="Fname">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Fname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Fname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Certifications" SortExpression="Certifications">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Certifications") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Certifications") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>




            </Columns>

        </asp:GridView>--%>
        
        
     <%--   <asp:SqlDataSource ID="Plumber" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialExpertsConnectionString %>"
            SelectCommand="SELECT [Address], [Fname], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE [Certifications] = 'Plumbing (One Year)' OR [Certifications]='Plumbing (Two Year)' "></asp:SqlDataSource>
        --%>
        
   <%--    <asp:SqlDataSource ID="SelectedPlumber" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialExpertsConnectionString %>"
    SelectCommand="SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE ([Certifications] = @Certifications)">
    <SelectParameters>
        <asp:SessionParameter Name="Certifications" SessionField="SelectedServiceName" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>--%>
           
</body>
</html>
</asp:Content>