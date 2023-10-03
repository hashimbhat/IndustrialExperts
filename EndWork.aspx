<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EndWork.aspx.cs" MasterPageFile="~/BackToDash.Master" Inherits="Industrial_Experts.EndWork" %>
<asp:Content runat="server" ID="EndWork" ContentPlaceHolderID="ContentPlaceHolderBackToDash">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    <div class="row mb-2">
    <div class="d-flex justify-content-center">
        
        <asp:Label ID="Lblserviceimage" runat="server" Text="Upload Work Image(Create a collage of different images)"  ></asp:Label>
        </div>
        </div>
         <div class="row mb-4">
        <div class="d-flex justify-content-center">
         <asp:FileUpload ID="serviceimage" runat="server" CssClass="form-control w-50" />
            </div>
                  <asp:RequiredFieldValidator ID="rfvphoto" runat="server" ControlToValidate="serviceimage"  CssClass="text-center mt-2" ValidationGroup="g1" ErrorMessage="Please upload photo of work" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div class="row mb-4">
        <div class="d-flex justify-content-center">
        <asp:Button runat="server" ID="btngetotp" CssClass=" btn btn-lg btn-secondary me-5" Text="Send OTP To User" />
         
      <asp:TextBox runat="server" ID="txtotp" CssClass="form-control w-25" PlaceHolder="Enter OTP "></asp:TextBox>

                  </div>
                  <asp:RequiredFieldValidator ID="rfvopt" runat="server" ControlToValidate="txtotp"  CssClass="text-center mt-2" ValidationGroup="g1" ErrorMessage="Please enter OTPs" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    
     <div class="row mb-4">
        <div class="d-flex justify-content-center">
       <asp:Label runat="server" ID="lblmess" Font-Bold="true"  ></asp:Label>
                   </div>
    </div>


    <div class=" d-flex justify-content-center">

         <asp:Button ID="btnsubmit" runat="server" Text="End Work"  CssClass=" btn btn-primary " ValidationGroup="g1" OnClick="btnsubmit_Click" /><br />
        </div>
</body>
</html>
    </asp:Content>
