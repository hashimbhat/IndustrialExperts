<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpAddCer.aspx.cs" MasterPageFile="~/BackToDash.Master"  Inherits="Industrial_Experts.EmpAddCer" %>
<asp:Content ID="EmpAddCer" runat="server" ContentPlaceHolderID="ContentPlaceHolderBackToDash">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    </head>
<body>
    <%--<form id="form1" runat="server">--%>
       <h1 class="d-flex justify-content-center">Add Certification</h1>
    <br />
    <br>
 
             <div class="d-flex justify-content-around">
            <div class="form-outline mb-2">
                <asp:Label ID="Lblcertification" runat="server" Text="Select Certificate"   Font-Bold="true" Font-Size="Large" ></asp:Label>
                    <asp:ListBox ID="Listcert" runat="server" CssClass="form-select mb-3 mt-2 form-select-sm selectable"   SelectionMode="Multiple"  >
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
        </div>
                 
    <div class="d-flex justify-content-center">
     <asp:Button ID="btnsubmit" runat="server" Text="submit"  CssClass=" btn btn-primary " OnClick="btnsubmit_Click"  ValidationGroup="g1" /><br />
        
          
              </div>
      <div class="d-flex justify-content-center">

  <asp:Label runat="server" ID="Lblmess"></asp:Label>
          
              </div>
    <%--</form>--%>


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