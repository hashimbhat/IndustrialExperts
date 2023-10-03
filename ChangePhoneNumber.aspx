<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePhoneNumber.aspx.cs" MasterPageFile="~/Home.Master" Inherits="Industrial_Experts.ChangePhoneNumber" %>
<asp:Content ID="cphone" runat="server" ContentPlaceHolderID="HomeMain">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
     <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <h1 class="d-flex justify-content-center">Change Phone Number</h1>
    <br />
    <h6 class="d-flex justify-content-center">Please Enter New Phone Number</h6>
    <br />
    <%--<form id="form1" runat="server">--%>
        <div class="d-flex justify-content-center">
            <div class="row mb-2">
            <asp:Label ID="Lblphone" runat="server" Text="Phone Number" Font-Bold="true" Font-Size="Large"></asp:Label>
        </div>
            </div>
     <div class="d-flex justify-content-center">
            <div class="row mb-4">
                
                <asp:TextBox ID="Txtphone" runat="server" CssClass="form-control"></asp:TextBox>
 <asp:RequiredFieldValidator ID="rfvphone" runat="server" CssClass="text-center mt-2 ms-5" ValidationGroup="g1" ControlToValidate="Txtphone" ErrorMessage="Please enter your Phone Number" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
     
            </div>
            </div>
      <div class=" d-flex justify-content-center">
         <asp:Button ID="btnsubmit" runat="server" Text="submit"  CssClass=" btn btn-primary " OnClick="btnsubmit_Click"  ValidationGroup="g1" /><br />
             <br />
            <asp:Button ID="btnback" runat="server" Text="back"   CssClass="btn btn-info ms-4" OnClick="btnback_Click" />

              </div>
          <div class="d-flex justify-content-center">
              <asp:Label runat="server" ID="Lblmes"></asp:Label>


          </div>
    <%--</form>--%>
</body>

</html>
</asp:Content>