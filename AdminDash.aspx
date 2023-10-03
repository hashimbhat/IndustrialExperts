<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDash.aspx.cs" MasterPageFile="~/Home.Master" Inherits="Industrial_Experts.AdminDash" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="HomeMain" runat="server">

<!DOCTYPE html>

 <html>
<head >
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>

</head>
<body style="background-color:beige">
    <div class="text-center">
        <h1>Welcome to your dashboard</h1>
        </div>

    <div class="container text-center mb-lg-5" style=" margin-top:150px;  margin-bottom:200px">
  <div class="row align-items-start">
    <div class="col">
       <asp:Button ID="Pendingbtn" runat="server" Text="Pending Requests" CssClass="btn btn-lg btn-outline-success" OnClick="Pendingbtn_Click"/>
    </div>
    <div class="col">
     <asp:Button ID="Approvedbtn" runat="server" Text="Approved Requests" CssClass="btn btn-lg btn-outline-success" OnClick="Approvedbtn_Click"/>
    </div>
    <div class="col">
   <asp:Button ID="UpdateEmpbtn" runat="server" Text="Update Employee Data" OnClick="UpdateEmpbtn_Click" CssClass="btn btn-lg btn-outline-success"/>
    </div>
  </div>
</div>
    <div class="container text-center mb-lg-5" style="margin-top:100px">
  <div class="row align-items-start">
    <div class="col">
     <asp:Button ID="ContReqbtn" runat="server" Text="Contractor Requests" CssClass="btn btn-lg btn-outline-info" OnClick="ContReqbtn_Click"/>
    </div>
    <div class="col">
      <asp:Button ID="ApprovedContReqbtn" runat="server" Text="App. Contractor Requests"  CssClass="btn btn-lg btn-outline-info" OnClick="ApprovedContReqbtn_Click" />
    </div>
    <div class="col">
      <asp:Button ID="UpdateContbtn" runat="server" Text="Upadate Contractor Data" OnClick="UpdateContbtn_Click"  CssClass="btn btn-lg btn-outline-info"/>
    </div>
  </div>
</div>
    <div class="container text-center mb-lg-5" style="margin-top:100px;">
  <div class="row align-items-start">
    <div class="col">
     <asp:Button ID="AddServicesbtn" runat="server" Text="Add Service" OnClick="AddServicesbtn_Click" CssClass="btn btn-lg btn-outline-primary"/>
    </div>
    <div class="col">
    <asp:Button ID="Servicesbtn" runat="server" Text="Current Services" OnClick="Servicesbtn_Click" CssClass="btn btn-lg btn-outline-primary"/>
    </div>
    <div class="col">
      <asp:Button ID="Recordbtn" runat="server" Text="Work Record" OnClick="Recordbtn_Click" CssClass="btn btn-lg btn-outline-primary"/>
    </div>
  </div>
</div>
</body>
</html>
    </asp:Content>