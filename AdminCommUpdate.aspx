<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCommUpdate.aspx.cs" MasterPageFile="~/BackToDash.Master" Inherits="Industrial_Experts.AdminCommUpdate" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderBackToDash">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    
         <div class="row mb-2 mt-5">
              <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">
            <asp:Label ID="Lblfname" runat="server" Text="Full Name"></asp:Label>
          </div>
        <div class="col-sm-4">
            <asp:TextBox CssClass="form-control" ID="Txtfname" runat="server"></asp:TextBox>
            </div>
        
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
            <asp:TextBox CssClass="form-control" ID="Txtaddress" runat="server"></asp:TextBox>
                  </div>
        
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
            <asp:TextBox CssClass="form-control" ID="Txtemail" runat="server"></asp:TextBox>
                </div>
           
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
          
              <div class="col-sm-3">
                   </div>
          </div>



      
    
         <div class="row mb-2">
              <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">
             <asp:Label ID="Lblitiregistrationno" runat="server" Text="ITI Registration Number"></asp:Label>
              </div>
             <div class="col-sm-4">
            <asp:TextBox CssClass="form-control" ID="Txtitiregistrationno" runat="server"></asp:TextBox>
        </div>
          
              <div class="col-sm-3">
                   </div>
            </div>
        <div class="row mb-2">
             <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">
            <asp:Label ID="lblId" runat="server" Text="Student Id"></asp:Label>
          </div>
        <div class="col-sm-4">
          

            <asp:TextBox ID="Txtstuid" runat="server" CssClass=" form-control"  ></asp:TextBox>

        </div>
            
             <div class="col-sm-3">
                   </div>
          </div>
       <div class="row mb-2 ">
               <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">
            <asp:Label ID="lblcertificate" runat="server" Text="Certifications"></asp:Label>
          </div>
        <div class="col-sm-4">
             
            
           <asp:TextBox ID="Certifications" runat="server" CssClass=" form-control"  ></asp:TextBox>
                 




            </div>
          
              <div class="col-sm-3">
                   </div>
          </div>

      <div class="row mb-2 ">
          <div class="col-sm-3">
              </div>
     <div class="col-sm-2">
       <asp:Label ID="lblconlicno" runat="server" Text="Contractor License Number"></asp:Label>
     </div>
   <div class="col-sm-4">
        
       
      <asp:TextBox ID="Txtconlicno" runat="server" CssClass=" form-control"  ></asp:TextBox>
            




       </div>
     
         <div class="col-sm-3">
              </div>
     </div>
        <br />
          <div class=" d-flex justify-content-center">
         <asp:Button ID="btnsubmit" runat="server" Text="Update" OnClick="btnsubmit_Click" CssClass=" btn btn-primary me-4" /><br />
           
            <asp:Button ID="btnback" runat="server" Text="Back" OnClick="btnback_Click"  CssClass="btn btn-info" />
              
              
              </div>
    <div class=" mt-5 text-center">
        <asp:Label runat="server" ID="lblmes"  CssClass="fs-3"></asp:Label>
    </div>
</body>
</html>
</asp:Content>