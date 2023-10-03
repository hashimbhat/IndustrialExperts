<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeEmail.aspx.cs" MasterPageFile="~/Home.Master" Inherits="Industrial_Experts.ChangeEmail" %>
<asp:Content ID="cemail" runat="server" ContentPlaceHolderID="HomeMain">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
       <link href="Content/bootstrap.css" rel="stylesheet" />

</head>
<body>
    <h1 class="d-flex justify-content-center">Change Email</h1><br />
    <h6  class="d-flex justify-content-center">Please Enter Your Currect Email ID</h6><br />
    <%--<form id="form1" runat="server">--%>
        <div class="d-flex justify-content-center">
             <div class="form-outline mb-3">
                 <asp:Label ID="Lblemail" runat="server" Text="Email ID"  Font-Bold="true" Font-Size="Large"></asp:Label> 
                  <asp:TextBox ID="Txtemail" runat="server"  CssClass="form-control"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="rfvemail" runat="server" CssClass="text-center "  ValidationGroup="g1" ControlToValidate="Txtemail" ErrorMessage="Please enter your Email" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
             </div>
        </div>
    <div class="d-flex justify-content-center">
             <div class="form-outline mb-3">
                 <asp:Label ID="Lblotp" runat="server" Text="OTP"  Font-Bold="true" Font-Size="Large"></asp:Label> 
                 <asp:TextBox ID="Txtotp" runat="server" CssClass="form-control"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="Rfvotp" runat="server" CssClass="text-center" ValidationGroup="g1" ControlToValidate="Txtotp" ErrorMessage="Please enter your OTP" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
             </div>
        </div>
    <div class="d-flex justify-content-center">
         <div class="form-outline mb-3">

             <asp:Button ID="Btngetotp" runat="server" Text="Get OTP" CssClass=" btn btn-sm btn-secondary" />

 </div>


    </div>
    <br />
      <h6  class="d-flex justify-content-center">Please Enter Your New Email ID</h6><br />
    <%--<form id="form1" runat="server">--%>
        <div class="d-flex justify-content-center">
             <div class="form-outline mb-3">
                 <asp:Label ID="Label1" runat="server" Text="Email ID"  Font-Bold="true" Font-Size="Large"></asp:Label> 
                  <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-center" ValidationGroup="g1" ControlToValidate="Txtemail" ErrorMessage="Please enter your Email" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
             </div>
        </div>
    <div class="d-flex justify-content-center ">
             <div class="form-outline mb-3">
                 <asp:Label ID="Label2" runat="server" Text="OTP"  Font-Bold="true" Font-Size="Large"></asp:Label> 
                 <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="text-center " ValidationGroup="g1" ControlToValidate="Txtotp" ErrorMessage="Please enter your OTP" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
             </div>
        </div>
      <div class="d-flex justify-content-center">
         <div class="form-outline mb-3">

             <asp:Button ID="Btngetnewotp" runat="server" Text="Get OTP" CssClass=" btn btn-sm btn-secondary" />

 </div>


    </div>
    <br />
    <div class=" d-flex justify-content-center">
         <asp:Button ID="btnsubmit" runat="server" Text="submit"  CssClass=" btn btn-primary btn-lg "  ValidationGroup="g1" /><br />
             <br />
            
              </div>
    <%--</form>--%>
</body>

</html>
</asp:Content>