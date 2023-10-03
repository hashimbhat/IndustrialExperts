<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Industrial_Experts.index" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <link href="Content/bootstrap.css" rel="stylesheet" />
    <title>
</title>
    <style>
        .text{
            font-family:Arial;
            font-size:large;
            margin-left:150px;
            font-weight:bold;
            color:black;
            margin-bottom:50px;
            margin-top:50px;
        }
        .image{
            margin-left:160px;
            margin-top:10px;
            
            
        }
        .button{
            text-align:center;
            border-bottom-left-radius:20px;
            border-top-left-radius:20px;
            border-top-right-radius:20px;
            border-bottom-right-radius:20px;
            font-family:Calibri;
            margin-left:550px;
            
           
        }
        .body{
            background-color:grey;
        }
    </style>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body class="body">
    
        <div class="image">
            <asp:Image ID="homeimg" runat="server" ImageUrl="~/Homimg.jpg" Height  ="500px" Width="1000px"/>
                </div>

            <div>
            <p class="text">
                We have best of the industrial professionals registered with Gov ITI's.They can fix and manage 
                most of the industrial<br /> equipments you are surrounded with,and used on daily basis.These experts
                might have solutions to your problems. You'll find pumbers,electicians,welders,conractors,and many more professionals whome you need to accomplish your work with ease.
            </p>
                </div>
            <div class="button">
                <div>
                    <asp:Button ID="cusbtn" runat="server" OnClick="cusbtn_Click"  Text="Signup as customer" CssClass="form-control font-monospace" BackColor="Wheat" Height="45px" Width="200px" BorderColor="#333333"  ForeColor="Black"/>
                </div>
                <br />
                <div>
                    <asp:Button ID="empbtn" runat="server" OnClick="empbtn_Click1" Text="Signup as employee" CssClass="form-control font-monospace "  BackColor="wheat" Height="45px" Width="200px" BorderColor="#333333"  ForeColor="Black"/>
                </div>
                <br />
                <div>
                    <asp:Button ID="conbtn" runat="server" OnClick="conbtn_Click"  Text="Signup as contractor" CssClass="form-control font-monospace" BackColor="wheat" Height="45px" Width="200px" BorderColor="#333333"  ForeColor="#000000"/>
                </div>
                
            </div>

        

 
</body>
</html>
</asp:Content>
