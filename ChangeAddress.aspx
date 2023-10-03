<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeAddress.aspx.cs" MasterPageFile="~/Home.Master" Inherits="Industrial_Experts.ChangeAddress" %>
<asp:Content ID="cadd" runat="server" ContentPlaceHolderID="HomeMain">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
     <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <h1 class="d-flex justify-content-center">Change Address</h1>
    <br />
    <br />
    <%--<form id="form1" runat="server">--%>
        <div class="d-flex justify-content-center">
          <div class="form-outline mb-2">
              <asp:Label ID="Lbladdress" runat="server" Text="New Address" Font-Bold="true" Font-Size="Large"></asp:Label>
              
              </div>
        </div>
     <div class="d-flex justify-content-center">
         <asp:TextBox ID="TxtAddress" runat="server" CssClass=" form-control w-50"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvemail" runat="server" CssClass="text-center mt-2 ms-5" ValidationGroup="g1" ControlToValidate="TxtAddress" ErrorMessage="Please enter your Address" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
     
     </div>
    <br />
    <div class=" d-flex justify-content-center">
         <asp:Button ID="btnsubmit" runat="server" Text="submit"  CssClass=" btn btn-primary " OnClick="btnsubmit_Click"  ValidationGroup="g1" /><br />
             <br />
            <asp:Button ID="btnback" runat="server" Text="back" CssClass="btn btn-info ms-4" OnClick="btnback_Click" />
              </div>
         
          <div class="d-flex justify-content-center">
              <asp:Label runat="server" ID="Lblmes"></asp:Label>


          </div>
    <%--</form>--%>
</body>
</html>
    </asp:Content>