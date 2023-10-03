<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContractorDash.aspx.cs" MasterPageFile="~/Home.Master" Inherits="Industrial_Experts.ContractorDash" %>
<asp:Content ContentPlaceHolderID="HomeMain" runat="server">
 <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
      <link href="Content/bootstrap.css" rel="stylesheet" /> 
</head>
<body style="background-color:beige">
             
         <h1 style="font-family:Arial;color:black" class="mb-5 mt-5 text-center">Welcome to your dashboard.</h1> 
    <div class="container text-center"> 
  <div class="row"> 
    <div class="col-6 col-sm-3 mb-5 mt-5 m-5" > 
        <asp:Button ID="btnprofile" runat="server" Text="Profile" OnClick="btnprofile_Click"  CssClass="btn btn-lg btn-outline-primary"/> 
    </div> 
    <div class="col-6 col-sm-3 mt-5 m-5 mb-5">  
        <asp:Button ID="btncontrequests" runat="server" Text="Contract Requests" OnClick="btncontrequests_Click" CssClass="btn btn-lg btn-outline-primary"   /> 
 
    </div> 
      <div class="col-6 col-sm-3 mb-5 mt-5 m-4">  
        <asp:Button ID="btncontstatus" runat="server" Text="Approved Contract" OnClick="btncontstatus_Click" CssClass="btn btn-lg btn-outline-primary"  /> 
 
    </div> 
 
    <!-- Force next columns to break to new line --> 
    <div class="w-100"></div> 


         <div class="col-6 col-sm-3 mb-5 mt-5 m-5" > 
        <asp:Button ID="btnworkhistory" runat="server" Text="Work History " OnClick="btnworkhistory_Click"   CssClass="btn btn-lg btn-outline-primary"/> 
    </div> 
    <div class="col-6 col-sm-3 mt-5 m-5 mb-5">  
        <asp:Button ID="btnchangepass" runat="server" Text="Change Password"  CssClass="btn btn-lg btn-outline-primary"   /> 
 
    </div> 
      <div class="col-6 col-sm-3 mb-5 mt-5 m-4">  
        <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="btn btn-lg btn-outline-danger"  /> 
 
    </div> 
 
  <%--  <div class="col-12 mb-5 mt-5"  > 
        <asp:Button ID="btnchangepass" runat="server" Text="Change Password" CssClass="btn btn-lg btn-outline-primary" style="margin-right:40px"/> 
 
    </div> 
     
      <div class="col-12 mt-4 mb-5 mt-5">  
        <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="btn btn-lg btn-outline-danger me-5"/> 
 
    </div> --%>
 
  </div> 
</div> 
</body>
</html>
</asp:Content>
