<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDash.aspx.cs" MasterPageFile="~/Home.Master" Inherits="Industrial_Experts.EmployeeDash" %>
<asp:Content ContentPlaceHolderID="HomeMain" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
      <link href="Content/bootstrap.css" rel="stylesheet" /> 
</head>
<body style="background-color:beige">
      <h1 class="mb-5 mt-5 text-center">Welcome to your dashboard.</h1> 
        <div class="container text-center mt-5"> 
  <div class="row"> 
    <div class="col-6 col-sm-3 mb-5 mt-5 m-5" > 
        <asp:Button ID="btnprofile" runat="server" Text="Profile" OnClick="btnprofile_Click" CssClass="btn btn-lg btn-outline-primary" /> 
    </div> 
    <div class="col-6 col-sm-3 mb-5 mt-5 m-5">  
        <asp:Button ID="btnaddcert" runat="server" Text="Add Certificate" CssClass="btn btn-lg btn-outline-primary" OnClick="btnaddcert_Click"   /> 
 
    </div> 
      <div class="col-6 col-sm-3 mb-5 mt-5 m-4">  
        <asp:Button ID="btncngpass" runat="server" Text="Change Password" OnClick="btncngpass_Click" CssClass="btn btn-lg btn-outline-primary"   /> 
 
    </div> 
 
    <!-- Force next columns to break to new line --> 
    <div class="w-100"></div> 
 
    <div class="col-6 col-sm-3 mt-5 m-5"  > 
        <asp:Button ID="btnapprequests" runat="server" Text="Appointment Requests" CssClass="btn btn-lg btn-outline-primary text-center" OnClick="btnapprequests_Click"  /> 
 
    </div> 
    <div class="col-6 col-sm-3 mt-5 m-5">  
        <asp:Button ID="btnappstatus" runat="server" Text="Appointment Status"  CssClass="btn btn-lg btn-outline-primary" OnClick="btnappstatus_Click" /> 
 
    </div> 
        <div class="col-6 col-sm-3 mt-5 m-5">  
        <asp:Button ID="btnworkhistory" runat="server" Text="Work History" OnClick="btnworkhistory_Click"  CssClass="btn btn-lg btn-outline-primary"  /> 
 
    </div> 
      <div class="col-12 mt-4">  
        <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="btn btn-lg btn-outline-danger me-5 mt-5"  /> 
 
    </div> 
 
  </div> 
</div> 
         
</body>
</html>
</asp:Content>