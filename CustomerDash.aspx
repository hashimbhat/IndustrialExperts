<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDash.aspx.cs" MasterPageFile="~/CustomerMaster.Master" Inherits="Industrial_Experts.CustDash" %>
<asp:Content ContentPlaceHolderID="CustomerServices" runat="server">
 <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
    /* Default styles for all screen sizes */
    .card {
        background-color: #9bfeca;
        border-radius: 15px;
    }

    .card-body {
        text-align: center;
    }

    .card-title {
       
        
    }

    /* Styles for medium screens and above (width > 768px) */
    @media (min-width: 768px) {
        .card-title {
          
        }
    }

    /* Styles for large screens and above (width > 992px) */
    @media (min-width: 992px) {
        .card-title {
           
        }
    }

    /* Styles for extra-large screens and above (width > 1200px) */
    @media (min-width: 1200px) {
        .card-title {
            
        }
    }
</style>
   <%-- ServiceSelected(<%# Eval("ServiceName") %>)--%>
    <title></title>
</head>
<body>
    <div class="container mt-5">
                          
                    <h3 class=" text-center">Here Are Our Services</h3>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1"  >
                   <ItemTemplate >
                    <div class=" card mt-lg-3 mb-lg-3 " style="background-color:#9bfeca; border-radius:15px">  

                   
                      <div class="card-body text-center ">
                          <asp:Button ID="btnselectservice" runat="server" CssClass="card-title fs-5 btn" Text='<%# Eval("ServiceName") %>' OnClick='btnselectservice_Click' />

                        </div>
                    
                    
                    
                    
                    </div>
    </ItemTemplate>


                </asp:Repeater>
            
                    </div>
                   
             









                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialExpertsConnectionString %>" SelectCommand="SELECT [ServiceName], [ServiceImg] FROM [Service]"></asp:SqlDataSource>
            
</body>
</html>
</asp:Content>