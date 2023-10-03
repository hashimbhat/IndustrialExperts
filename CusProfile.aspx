<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CusProfile.aspx.cs" MasterPageFile="~/BackToDash.Master" Inherits="Industrial_Experts.CusProfile" %>
<asp:Content ID="cuupro" runat="server" ContentPlaceHolderID="ContentPlaceHolderBackToDash">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
  <link href="Content/bootstrap.css" rel="stylesheet" />
</head>

    <body>
    <h1 class="d-flex justify-content-center mb-5">Customer Profile</h1>
    <%--<form id="form1" runat="server">--%>
        <div class="d-flex justify-content-around">
            <div class="form-outline mb-2">
                <asp:Label ID="Lblfullname" runat="server" Text="Full Name"  Font-Bold="true" Font-Size="Large" ></asp:Label>
            </div>
        </div>
    <div class="d-flex justify-content-around">
            <div class="form-outline mb-4">
                <asp:TextBox ID="Txtfullname" runat="server" CssClass=" form-control"></asp:TextBox>
                </div>
        </div>
    <div class="d-flex justify-content-around">
            <div class="form-outline mb-2">
                <asp:Label ID="Lbladdress" runat="server" Text="Address" Font-Bold="true" Font-Size="Large"></asp:Label>
                </div>
        </div>
     <div class="d-flex justify-content-around">
            <div class="form-outline mb-4">
                <asp:TextBox ID="Txtaddress" runat="server" CssClass=" form-control"></asp:TextBox><br />
                <a class="d-flex justify-content-end" href="ChangeAddress.aspx">change address</a>

                </div>
         </div>
     <div class="d-flex justify-content-around">
            <div class="form-outline mb-2">
                <asp:Label ID="Lblemail" runat="server" Text="Email ID"   Font-Bold="true" Font-Size="Large"></asp:Label>
                </div>
        </div>
     <div class="d-flex justify-content-around">
            <div class="form-outline mb-4">
                <asp:TextBox ID="Txtemail" runat="server" CssClass=" form-control"></asp:TextBox><br />
                <a class="d-flex justify-content-end" href="ChangeEmail.aspx">Change Email</a>

                </div>
         </div>
     <div class="d-flex justify-content-around">
            <div class="form-outline mb-2">
                <asp:Label ID="Lblphone" runat="server" Text="Phone Number"   Font-Bold="true" Font-Size="Large"></asp:Label>
                </div>
        </div>
     <div class="d-flex justify-content-around">
            <div class="form-outline mb-4">
                <asp:TextBox ID="Txtphone" runat="server" CssClass=" form-control"></asp:TextBox><br />
                <a class="d-flex justify-content-end" href="ChangePhoneNumber.aspx">Change Phone Number</a>

                </div>
         </div>
         <div class="d-flex justify-content-around mt-3">
            <div class="form-outline mb-4">
                <asp:Button runat="server" ID="Btnchangepass" Text="Change Password" CssClass=" btn btn-lg btn-primary " OnClick="Btnchangepass_Click" />

                </div>
         </div>
  
    <%--</form>--%>
</body>
</html>
</asp:Content>