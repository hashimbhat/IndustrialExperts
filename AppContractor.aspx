<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppContractor.aspx.cs" MasterPageFile="~/BackToAdmin.Master" Inherits="Industrial_Experts.AppContractor" %>
<asp:Content ID="BackAdmin" ContentPlaceHolderID="BackToAdminPage" runat="server">
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
   <asp:GridView ID="AppContDrid" runat="server"  Height="390px" Width="1525px"  AutoGenerateColumns="False" CssClass="table table-condensed table-hover" DataKeyNames="ContractorId" DataSourceID="AppContractorSource">
       <Columns>
           <asp:BoundField DataField="ContractorId" HeaderText="ContractorId" InsertVisible="False" ReadOnly="True" SortExpression="ContractorId" />
           <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
           <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
           <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
           <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
           <asp:BoundField DataField="ItiRegNo" HeaderText="ItiRegNo" SortExpression="ItiRegNo" />
           <asp:BoundField DataField="ContractorLicNo" HeaderText="ContractorLicNo" SortExpression="ContractorLicNo" />
       </Columns>


   </asp:GridView>
    <asp:SqlDataSource ID="AppContractorSource" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialExpertsConnectionString %>" SelectCommand="SELECT [ContractorId], [Fname], [Address], [Email], [PhoneNo], [ItiRegNo], [ContractorLicNo] FROM [ApprovedContDetails]"></asp:SqlDataSource>
</body>
</html>
    </asp:Content>