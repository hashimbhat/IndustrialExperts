<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUpdateData.aspx.cs" MasterPageFile="~/BackToDash.Master" Inherits="Industrial_Experts.AdminUpdateData" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderBackToDash">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
        <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>
body {
width: 100%;
margin: 5px;
background:#eaece5;
}

.table-condensed tr th {
border: 0px solid #6e7bd9;
color: white;
background-color: #6e7bd9;
}

.table-condensed, .table-condensed tr td {
border: 0px solid #000;
}

tr:nth-child(even) {
background: #f8f7ff
}

tr:nth-child(odd) {
background: #fff;
}
.wider-textbox{
    width:300px;

}
</style>
</head>
<body>
    <asp:Label ID="lblmes" runat="server" ></asp:Label>
    <br />
                <div class="d-flex d-xxl-inline-flex mb-2 mt-3">
<asp:TextBox ID="txtsearch" runat="server" CssClass="form-control text-center  wider-textbox"  PlaceHolder="Search ITI Regestration Number"></asp:TextBox>

            <asp:Button ID="btnsearch" runat="server" CssClass=" btn  btn-info ms-2" OnClick="btnsearch_Click"  Text="Search"/>
                 <asp:Button ID="BtnRefresh" runat="server" CssClass=" btn  btn-info ms-2" OnClick="BtnRefresh_Click"  Text="Refresh"/>
                </div>
    <asp:GridView runat="server" ID="UpdateEmp" Height="150px" AutoGenerateColumns="False"
        CssClass="table table-condensed table-hover text-center mt-3" OnRowCommand="UpdateEmp_RowCommand" OnRowDeleting="UpdateEmp_RowDeleting" DataKeyNames="ItiRegNo">
        <Columns>
       <asp:TemplateField HeaderText="Name">
         <ItemTemplate>
        <%# Eval("Fname") %>
    </ItemTemplate>
</asp:TemplateField>
           <asp:TemplateField HeaderText="Adderss">
         <ItemTemplate>
        <%# Eval("Address") %>
    </ItemTemplate>
</asp:TemplateField>

      <asp:TemplateField HeaderText="Worker Email">
      <ItemTemplate>
          <%# Eval("Email") %>
      </ItemTemplate>
  </asp:TemplateField>

                <asp:TemplateField HeaderText="Phone Number">
    <ItemTemplate>
        <%# Eval("PhoneNo") %>
    </ItemTemplate>
</asp:TemplateField>

                <asp:TemplateField HeaderText="ITI Regestration NO">
    <ItemTemplate>
        <%# Eval("ItiRegNo") %>
    </ItemTemplate>
</asp:TemplateField>

                <asp:TemplateField HeaderText="Student Id">
    <ItemTemplate>
        <%# Eval("StudentId") %>
    </ItemTemplate>
</asp:TemplateField>

                <asp:TemplateField HeaderText="Certifications">
    <ItemTemplate>
        <%# Eval("Certifications") %>
    </ItemTemplate>
</asp:TemplateField>

                                      <asp:TemplateField>
    <ItemTemplate>
      <asp:Button ID="btnupdate" runat="server" Text="Update" CommandName="Update" CommandArgument='<%# Eval("ItiRegNo") %>' CssClass="btn btn-primary" />
       
     </ItemTemplate>
</asp:TemplateField>
                                                  <asp:TemplateField>
    <ItemTemplate>
      <asp:Button ID="btndel" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("ItiRegNo") %>' CssClass="btn btn-danger" />
       
     </ItemTemplate>
</asp:TemplateField>


        </Columns>
    </asp:GridView>
  
</body>
</html>
</asp:Content>