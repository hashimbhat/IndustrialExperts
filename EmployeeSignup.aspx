<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeSignup.aspx.cs" MasterPageFile="~/Site.Master"  Inherits="Industrial_Experts.EmployeeSignup" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
               
              <h1 class="text-center align-content-center mb-3" >Employee Sign-Up</h1> <br />
          
                  
                 
                  <h4 class="text-center align-content-center mb-1" >Please fill your data carefully</h4><br />
        
              
        
         <div class="row mb-2">
              <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">
            <asp:Label ID="Lblfname" runat="server" Text="Full Name"></asp:Label>
          </div>
        <div class="col-sm-4">
            <asp:TextBox CssClass="form-control" ID="Txtfname" runat="server"></asp:TextBox>
            </div>
          <asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="Txtfname"  CssClass="text-center mt-2" ValidationGroup="g1" ErrorMessage="Please enter your name" SetFocusOnError="true"
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
            <asp:TextBox CssClass="form-control" ID="Txtaddress" runat="server"></asp:TextBox>
                  </div>
              <asp:RequiredFieldValidator ID="rvfaddress" runat="server" ControlToValidate="Txtaddress"   CssClass="text-center mt-2" ValidationGroup="g1" ErrorMessage="Please enter your Address" SetFocusOnError="true"
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
            <asp:TextBox CssClass="form-control" ID="Txtemail" runat="server"></asp:TextBox>
                </div>
             <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="Txtemail"  CssClass="text-center mt-2" ValidationGroup="g1" ErrorMessage="Please enter your Address" SetFocusOnError="true"
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
            <asp:TextBox CssClass="form-control" ID="Txtpassword" TextMode="Password" runat="server"></asp:TextBox>
                 </div>
            <asp:RequiredFieldValidator ID="rfvPasswordReq" runat="server" ControlToValidate="Txtpassword"  CssClass="text-center mt-2 " ValidationGroup="g1" ErrorMessage="Password is required" SetFocusOnError="true" ForeColor="Red" 
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
            <asp:TextBox CssClass="form-control" ID="Txtconfirmpassword" TextMode="Password" runat="server"></asp:TextBox>
        </div>
           <asp:CompareValidator ID="rfv" runat="server"  ControlToCompare="Txtpassword" ControlToValidate="Txtconfirmpassword"  CssClass="text-center mt-2" ValidationGroup="g1" Display="Dynamic" ErrorMessage="password does not match" ForeColor ="Red"></asp:CompareValidator>
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
            <asp:TextBox CssClass="form-control" ID="Txtitiregistrationno" runat="server"></asp:TextBox>
        </div>
             <asp:RequiredFieldValidator ID="rfvitiregistrationno" runat="server"  CssClass="text-center mt-2 ms-5" ValidationGroup="g1" ControlToValidate="Txtitiregistrationno" ErrorMessage="Please enter your Valid Registration number" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
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
             <asp:RequiredFieldValidator ID="rfstudentid" runat="server"  CssClass="text-center mt-2 ms-5" ValidationGroup="g1" ControlToValidate="Txtstuid" ErrorMessage="Please enter your student id" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
             <div class="col-sm-3">
                   </div>
          </div>
       <div class="row mb-2 ">
               <div class="col-sm-3">
                   </div>
          <div class="col-sm-2">
            <asp:Label ID="lblcertificate" runat="server" Text="Select your certifications"></asp:Label>
          </div>
        <div class="col-sm-4">
             
            
            <asp:ListBox ID="Listcert" runat="server" CssClass="form-select mb-3 form-select-sm selectable"   SelectionMode="Multiple"  >
    <asp:ListItem Text="Plumbing (One Year)" CssClass=" mt-2 mb-2" Value="1"></asp:ListItem>
    <asp:ListItem Text="Mechanic Motor Vehicle (Tow Year)" CssClass=" mt-2 mb-2"  Value="2"></asp:ListItem>
    <asp:ListItem Text="Refrigerator & Air Conditioning Technician (Tow Year)" CssClass=" mt-2 mb-2"  Value="3"></asp:ListItem>
    <asp:ListItem Text="Turner (Tow Year)" CssClass=" mt-2 mb-2"  Value="4"></asp:ListItem>
                 <asp:ListItem Text="Machinist (Tow Year)" CssClass=" mt-2 mb-2"  Value="5"></asp:ListItem>
                 <asp:ListItem Text="Computer Operator & Programming Assistant (One Year)" CssClass=" mt-2 mb-2"  Value="6"></asp:ListItem>
                 <asp:ListItem Text="Stenographer Secretarial Assistant (One Year)" CssClass=" mt-2 mb-2"  Value="7"></asp:ListItem>
                 <asp:ListItem Text="Welder (One Year)" CssClass=" mt-2 mb-2"  Value="8"></asp:ListItem>
                 <asp:ListItem Text="Mechanic Deisel (One Year)" CssClass=" mt-2 mb-2"  Value="9"></asp:ListItem>
                 <asp:ListItem Text="Front office Assistant (Women's Wing)(One Year)" CssClass=" mt-2 mb-2"  Value="10"></asp:ListItem>
                 <asp:ListItem Text="Faction Design & Technology (Women's Wing)(One Year)" CssClass=" mt-2 mb-2"  Value="11"></asp:ListItem>
                <asp:ListItem Text="Data Entry Operator (Women's Wing)(Six Months)" CssClass=" mt-2 mb-2"  Value="12"></asp:ListItem>
                <asp:ListItem Text="Computer Operator & Programming Assistant (Tow Year)" CssClass=" mt-2 mb-2"  Value="13"></asp:ListItem>
                   <asp:ListItem Text="Stenographer Secretarial Assistant (Tow Year)" CssClass=" mt-2 mb-2"  Value="14"></asp:ListItem>
                <asp:ListItem Text="Wood Carving Skills (One Year)" Value="15" CssClass=" mt-2 mb-2" ></asp:ListItem>
                <asp:ListItem Text="Paper Machie (One Year)" Value="16" CssClass=" mt-2 mb-2" ></asp:ListItem>
</asp:ListBox>
                 




            </div>
          <asp:RequiredFieldValidator ID="rflistcert" runat="server" ControlToValidate="Listcert" CssClass="text-center mt-2" ValidationGroup="g1" ErrorMessage="Please select your certifications" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
              <div class="col-sm-3">
                   </div>
          </div>
        <br />
          <div class=" d-flex justify-content-center">
         <asp:Button ID="btnsubmit" runat="server" Text="submit" CssClass=" btn btn-primary me-4" ValidationGroup="g1" OnClick="btnsubmit_Click"/><br />
           
            <asp:Button ID="btnback" runat="server" Text="back" OnClick="btnback_Click" CssClass="btn btn-info" />
              </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(function () {
        var isMouseDown = false;
        var lastSelectedItem = null;

        $(".selectable option").mousedown(function (e) {
            e.preventDefault();
            isMouseDown = true;
            lastSelectedItem = this;
            toggleSelected(this);
            return false;
        })
            .mousemove(function () {
                if (isMouseDown) {
                    toggleSelected(this);
                }
            });

        $(document).mouseup(function () {
            isMouseDown = false;
        });

        function toggleSelected(item) {
            $(item).prop("selected", !$(item).prop("selected"));
            if (lastSelectedItem != null) {
                var start = $(".selectable option").index(lastSelectedItem);
                var end = $(".selectable option").index(item);
                $(".selectable option").slice(Math.min(start, end), Math.max(start, end) + 1).prop("selected", $(item).prop("selected"));
            }
        }
    });
</script>
</body>
</html>
    </asp:Content>