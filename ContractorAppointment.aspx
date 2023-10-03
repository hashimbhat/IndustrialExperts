<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContractorAppointment.aspx.cs" MasterPageFile="~/BackToDash.Master" Inherits="Industrial_Experts.ContractorAppointment" %>
<asp:Content ID="ConApp" runat="server" ContentPlaceHolderID="ContentPlaceHolderBackToDash"> 
<!DOCTYPE html>

<html>
<head>
    <title></title>
        <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    
              <div class="container mt-5">
            <div class="form-group mb-lg-3">
                <asp:Label ID="lblExplainWork" runat="server" Text="Explain Work:" CssClass="fs-4"></asp:Label>
                <asp:TextBox ID="txtExplainWork" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control" ></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="rfvwork" runat="server" CssClass="text-center mt-2 ms-5" ValidationGroup="g1" ControlToValidate="txtExplainWork" ErrorMessage="Please enter work description" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>


            <div class="form-group mb-lg-3">
                <asp:Label ID="lblStartDate" runat="server" Text="Start Date:" CssClass="fs-4" ></asp:Label>
                <div class="input-group">
                    <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control"  Placeholder="YYYY-MM-DD"></asp:TextBox>
                  
                </div>
            </div>
 <asp:RequiredFieldValidator ID="rfdate" runat="server" CssClass="text-center mt-2 ms-5" ValidationGroup="g1" ControlToValidate="txtStartDate" ErrorMessage="Please enter date, on which you want to start work" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>


            <div class="form-group mb-lg-3">
                <asp:Label ID="lblAddress" runat="server" Text="Address of Site:" CssClass="fs-4"></asp:Label>
                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

                   <asp:RequiredFieldValidator ID="rfaddress" runat="server" CssClass="text-center mt-2 ms-5" ValidationGroup="g1" ControlToValidate="txtAddress" ErrorMessage="Please enter adress of work site" SetFocusOnError="true"
              ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>



            <div class="text-center ">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit"  CssClass="btn btn-primary mt-lg-5" ValidationGroup="g1" OnClick="btnSubmit_Click" />
            </div>
        </div>
     
    <div>
        <asp:Label runat="server" ID="Alert" CssClass="alert alert-dismissible fade show"></asp:Label>


    </div>
    
  
</body>
</html>
  </asp:Content> 
