<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAddServices.aspx.cs" MasterPageFile="~/BackToAdmin.Master" Inherits="Industrial_Experts.AdminAddServices" %>
<asp:Content ContentPlaceHolderID="BackToAdminPage" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <link href="Content/bootstrap.css" rel="stylesheet" />

    <title></title>
</head>
<body>
    <h1 class="text-center">Add a new  ITI certification</h1><br />
    <br />
    <br />
    <div class="row mb-2">
        <div class="d-flex justify-content-center">
            
            <asp:Label ID="Lblservicename" runat="server" Text="Certificate Name"  ></asp:Label>
            </div>
        </div>
             <div class="row mb-4">
        <div class="d-flex justify-content-center">
            <asp:TextBox ID="Txtservicename" runat="server" CssClass=" form-control w-50"></asp:TextBox>
             
        </div>
                             <br />
<asp:RequiredFieldValidator ID="service" runat="server" ControlToValidate="Txtservicename" ErrorMessage="Please Enter Certificate Name" CssClass="text-center mt-2" 
    SetFocusOnError="true" Font-Bold="true"   ForeColor="Red" Display="Dynamic" ValidationGroup="g1"></asp:RequiredFieldValidator>
   
            </div>
        

    <div class=" d-flex justify-content-center">

         <asp:Button ID="btnsubmit" runat="server" Text="submit"  CssClass=" btn btn-primary " OnClick="btnsubmit_Click" ValidationGroup="g1"/><br />
             <br />
           
              </div>
    <div class="text-center mt-3 ">
        <asp:Label ID="lblmes" runat="server"></asp:Label>

    </div>

</body>
</html>
</asp:Content>