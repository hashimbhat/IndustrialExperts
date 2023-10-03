<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContractorSignup.aspx.cs" MasterPageFile="~/Site.Master" Inherits="Industrial_Experts.ContractorSignup" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <title></title>
</head>
<body>
         <h1 class="text-center align-content-center mb-3" >Contractor SignUp</h1> <br />
        
                  
                 
                  <h4 class="text-center align-content-center mb-3">Please fill your data carefully</h4><br />
        
              
        
         <div class="row mb-2">
              <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">
            <asp:Label ID="Lblfname" runat="server" Text="Full Name"></asp:Label>
          </div>
        <div class="col-sm-4">
            <asp:TextBox Class="form-control" ID="Txtfname" runat="server"></asp:TextBox>
            </div>
          <asp:RequiredFieldValidator ID="rfvname" runat="server" CssClass="text-center mt-2 ms-5" ValidationGroup="g1" ControlToValidate="Txtfname" ErrorMessage="Please enter your name" SetFocusOnError="true"
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
              <asp:RequiredFieldValidator ID="rvfaddress" CssClass="text-center mt-2 ms-5" ValidationGroup="g1" runat="server" ControlToValidate="Txtaddress" ErrorMessage="Please enter your Address" SetFocusOnError="true"
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
             <asp:RequiredFieldValidator ID="rfvemail" runat="server" CssClass="text-center mt-2 ms-5" ValidationGroup="g1" ControlToValidate="Txtemail" ErrorMessage="Please enter your Address" SetFocusOnError="true"
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
            <asp:RequiredFieldValidator ID="rfvPasswordReq" runat="server" CssClass="text-center mt-2 ms-5" ValidationGroup="g1" ControlToValidate="Txtpassword" ErrorMessage="Password is required" SetFocusOnError="true" ForeColor="Red" 
                 Display="Dynamic"></asp:RequiredFieldValidator>
              <div class="col-sm-3">
                   </div>
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
           <asp:CompareValidator ID="rfv" runat="server" CssClass="text-center mt-2 ms-5" ValidationGroup="g1"  ControlToCompare="Txtpassword" ControlToValidate="Txtconfirmpassword" Display="Dynamic" ErrorMessage="password does not match" ForeColor ="Red"></asp:CompareValidator>
        <div class="col-sm-3">
                   </div> 
       </div>
         <div class="row mb-2">
              <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">
             <asp:Label ID="Lblitiregistrationno" runat="server" Text="ITI Registration NO"></asp:Label>
              </div>
             <div class="col-sm-4">
            <asp:TextBox Class="form-control" ID="Txtitiregistrationno" runat="server"></asp:TextBox>
        </div>
             <asp:RequiredFieldValidator ID="rfvitiregistrationno" runat="server" CssClass="text-center mt-2 ms-5" ValidationGroup="g1" ControlToValidate="Txtitiregistrationno" ErrorMessage="Please enter your Valid Registration number" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
              <div class="col-sm-3">
                   </div>
            </div>
        
        <div class="row mb-2">
             <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">
            <asp:Label ID="lbldocument" runat="server" Text="Contractors License Number"></asp:Label>
          </div>
        <div class="col-sm-4">
            <%--<asp:FileUpload ID="DocumentUpload" runat="server" CssClass="form-control" />
            <asp:Button ID="btnupload" runat="server" CssClass="form-control mt-3 mb-3 bg-light" Text="Upload"  />--%>
            <asp:TextBox ID="Txtcontid" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
              <asp:RequiredFieldValidator ID="rfcontid" runat="server"  CssClass="text-center mt-2 ms-5" ValidationGroup="g1" ControlToValidate="Txtcontid" ErrorMessage="Please enter your Govt. Contractors License Number" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
             <div class="col-sm-3">
                   </div>
             <div class="col-sm-3">
                   </div>
            </div>
         <br />
          <div class=" d-flex justify-content-center">
         <asp:Button ID="btnsubmit" runat="server" Text="submit"  CssClass=" btn btn-primary " OnClick="btnsubmit_Click"  ValidationGroup="g1" /><br />
             <br />
            <asp:Button ID="btnback" runat="server" Text="back" OnClick="btnback_Click" CssClass="btn btn-info ms-4" />
              </div>
</body>
</html>
   </asp:Content>