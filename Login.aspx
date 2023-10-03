<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" MasterPageFile="~/Home.Master"  Inherits="Industrial_Experts.Login" %>

<asp:Content ID="Body" ContentPlaceHolderID="HomeMain" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
        <link href="Content/bootstrap.css" rel="stylesheet" />

</head>
<body style=" background-color:antiquewhite">
  <%--  <form id="form1" runat="server" class=".text-center form-control text-center align-content-center">--%>
     <h1 class="text-center align-content-center mb-3" >Login To Your Account</h1> <br />
        
      
        <div class="row mt-lg-5 mb-lg-5">
             <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">
             <asp:Label ID="Lblrole" runat="server" Text="Select Your Role"></asp:Label>
              </div>
            <div class="col-sm-4">
                     <asp:DropDownList ID="RoleDrop" runat="server" CssClass=" form-control" >
                         <asp:ListItem Value="1" Text="Customer"></asp:ListItem>
                         <asp:ListItem Value="2" Text="Employee"></asp:ListItem>
                          <asp:ListItem Value="3" Text="Contractor"></asp:ListItem>
                         <asp:ListItem Value="4" Text="Admin"></asp:ListItem>
                     </asp:DropDownList>
                </div>
            
             <div class="col-sm-3">
                   </div>
            </div>


        <div class="row mb-2">
             <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">
             <asp:Label ID="Lblemail" runat="server" Text="Email"></asp:Label>
              </div>
            <div class="col-sm-4">
            <asp:TextBox Class="form-control" ID="Txtemail" runat="server"></asp:TextBox>
                </div>
             <asp:RequiredFieldValidator ID="rfvemail" runat="server" CssClass="text-center mt-2" ControlToValidate="Txtemail" ValidationGroup="g1" ErrorMessage="Please enter your Email" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
             <div class="col-sm-3">
                   </div>
            </div>


<div class="row mb-2 mt-lg-5">
              <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">

           <asp:Label ID="Lblpassword" runat="server" Text="Password"></asp:Label>
              </div>
            <div class="col-sm-4">
            <asp:TextBox Class="form-control" ID="Txtpassword" TextMode="Password" runat="server"></asp:TextBox>
                 </div>
            <asp:RequiredFieldValidator ID="rfvPasswordReq" runat="server" ControlToValidate="Txtpassword" CssClass="text-center mt-2" ValidationGroup="g1" ErrorMessage="Password is required" SetFocusOnError="true" ForeColor="Red" 
                 Display="Dynamic"></asp:RequiredFieldValidator>
        </div>


        
          <div class=" d-flex justify-content-center  mt-4" >
               
                <a href="#!">Forgot password?</a>
            </div>
         <div class=" d-flex justify-content-center  mt-4" >
               
                <asp:Label ID="lblmes" runat="server" CssClass="text-danger text-md-center"></asp:Label>
            </div>
          <div class=" d-flex justify-content-center">
          
         <asp:Button ID="btnlogin" runat="server" Text="Login"  CssClass=" btn btn-primary me-4 mt-lg-5"  OnClick="btnlogin_Click" ValidationGroup="g1"/>
        
            
          </div>
<%--    </form>--%>

</body>
</html>
    </asp:Content>