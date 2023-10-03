<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerSingup.aspx.cs" MasterPageFile="~/Site.Master" Inherits="Industrial_Experts.CustomerSingup" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
   <%-- <form id="form1" runat="server" class=".text-center form-control text-center align-content-center">--%>
         
             
               
              <h1 class="text-center align-content-center">Welcome to Customer Sign-Up</h1> <br />
          
                  
                 
                          <h4 class="text-center align-content-center mb-5">Please fill your data carefully</h4>
        
       
              
        <div class="row mx-auto">

         <div class="row mb-2 ">
               <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">
            <asp:Label ID="Lblfname" runat="server" Text="Full Name"></asp:Label>
          </div>
        <div class="col-sm-4">
            <asp:TextBox Class="form-control" ID="Txtfname" runat="server"></asp:TextBox>
            </div>
          <asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="Txtfname" CssClass="text-center mt-2" ValidationGroup="g1" ErrorMessage="Please enter your name" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
              <div class="col-sm-3">
                   </div>
          </div>
          <div class="row mb-2">
               <div class="col-sm-3">
                   </div>

          <div class="col-sm-2">
        
             <asp:Label ID="Lbladdress" runat="server" Text="Address"></asp:Label>
              </div>
              <div class="col-sm-4">
            <asp:TextBox Class="form-control" ID="Txtaddress" runat="server"></asp:TextBox>
                  </div>
              <asp:RequiredFieldValidator ID="rvfaddress" runat="server" ControlToValidate="Txtaddress" CssClass="text-center mt-2" ValidationGroup="g1" ErrorMessage="Please enter your Address" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
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


             <div class="row mb-2 ">
               <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">
            <asp:Label ID="Lblphone" runat="server" Text="Phone Number"></asp:Label>
          </div>
        <div class="col-sm-4">
            <asp:TextBox Class="form-control" ID="Txtphone" runat="server"></asp:TextBox>
            </div>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtphone" CssClass="text-center mt-2" ValidationGroup="g1" ErrorMessage="Please enter your phone no." SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
              <div class="col-sm-3">
                   </div>
          </div>



         <div class="row mb-2">
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
       <div class="row mb-2">
            <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">

             <asp:Label ID="LblConfirmPassword" runat="server" Text="ConfirmPassword"></asp:Label>
              </div>
           <div class="col-sm-4">
            <asp:TextBox Class="form-control" ID="Txtconfirmpassword" TextMode="Password" runat="server"></asp:TextBox>
        </div>
           <asp:CompareValidator ID="rfv" runat="server"  ControlToCompare="Txtpassword" ControlToValidate="Txtconfirmpassword" ValidationGroup="g1" CssClass="text-center" Display="Dynamic" ErrorMessage="password does not match" ForeColor ="Red"></asp:CompareValidator>
            <div class="col-sm-3">
                   </div>
        </div>
            </div>
        <br />
      
      <div class=" d-flex justify-content-center">
          
         <asp:Button ID="btnsubmit" runat="server" Text="Submit"  CssClass=" btn btn-primary me-4"  ValidationGroup="g1" OnClick="btnsubmit_Click"/>
        
            <asp:Button ID="btnback" runat="server" Text="back"  CssClass="btn btn-info" OnClick="btnback_Click"   />
          </div>
         

</body>
</html>
    </asp:Content>