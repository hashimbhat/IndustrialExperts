<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustWork.aspx.cs" MasterPageFile="~/BackToDash.Master" Inherits="Industrial_Experts.CustWork" %>
<asp:Content ID="CussWork" runat="server" ContentPlaceHolderID="ContentPlaceHolderBackToDash">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    
    <div class="container text-center mt-5">
  <div class="row justify-content-start">
       <div class="col-6">
     <asp:Button runat="server" ID="btnempwork" CssClass="btn btn-lg btn-outline-primary" OnClick="btnempwork_Click" Text="Appointments" />
    </div>
    <div class="col-6">
      <asp:Button runat="server" ID="btnconwork" CssClass="btn btn-lg btn-outline-primary" OnClick="btnconwork_Click" Text="Contracts"/>
    </div>
      </div>
        </div>



</body>
</html>
</asp:Content>