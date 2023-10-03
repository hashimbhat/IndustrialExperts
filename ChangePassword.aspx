<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" MasterPageFile="~/BackToDash.Master" Inherits="Industrial_Experts.ChangePassword" %>
<asp:Content runat="server" ID="ChangePwd" ContentPlaceHolderID="ContentPlaceHolderBackToDash">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
     
      <div class="d-flex justify-content-around">
            <div class="form-outline mb-2">
                <asp:Label ID="Lbloldpass" runat="server" Text="Enter Current Password"  Font-Bold="true" Font-Size="Large" ></asp:Label>
            </div>
        </div>
    <div class="d-flex justify-content-around">
            <div class="form-outline mb-4">
                <asp:TextBox ID="Txtcurpass" runat="server" TextMode="Password" CssClass=" form-control mb-2"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="rfvcurpass" runat="server" ControlToValidate="Txtcurpass"  CssClass="text-center mt-2" ValidationGroup="g1" ErrorMessage="Please enter your Current Password" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
       
        </div>
       <div class="d-flex justify-content-around">
            <div class="form-outline mb-2">
                <asp:Label ID="Lalnewpass" runat="server" Text="Enter New Password"  Font-Bold="true" Font-Size="Large" ></asp:Label>
            </div>
        </div>
    <div class="d-flex justify-content-around">
            <div class="form-outline mb-4">
                <asp:TextBox ID="Txtnewpass" runat="server" TextMode="Password" CssClass=" form-control mb-2"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtnewpass"  CssClass="text-center mt-2" ValidationGroup="g1" ErrorMessage="Please enter your New Password" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
       
        </div>
        <div class="d-flex justify-content-around">
            <div class="form-outline mb-2">
                <asp:Label ID="Lblconfirmpass" runat="server" Text="Confirm Password"  Font-Bold="true" Font-Size="Large" ></asp:Label>
            </div>
        </div>
    <div class="d-flex justify-content-around">
            <div class="form-outline mb-4">
                <asp:TextBox ID="Txtconfirmpass" runat="server" TextMode="Password" CssClass=" form-control mb-2"></asp:TextBox>
                 <asp:CompareValidator ID="rfv" runat="server"  ControlToCompare="Txtnewpass" ControlToValidate="Txtconfirmpass"  CssClass="text-center mt-2" ValidationGroup="g1" Display="Dynamic" ErrorMessage="Password does not match" ForeColor ="Red"></asp:CompareValidator>
                </div>
        
         
        </div>
        <div class="d-flex justify-content-around">
            <div class="form-outline mb-4">
               <asp:Button runat="server" ID="submit" CssClass="btn btn-primary" OnClick="submit_Click" Text="Submit" ValidationGroup="g1"  />
                </div>
            
        </div>
    <div class=" mt-5 text-center">
    <asp:Label ID="lblmes" runat="server" CssClass="text-center"></asp:Label>

</div>

</body>
</html>
</asp:Content>