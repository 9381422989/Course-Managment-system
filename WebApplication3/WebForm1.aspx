<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <marquee><h3 style ="background-color:red;"> WELCOME ADMIN</h3></marquee>
   <h1 style="background-color:blue;">THIS IS ADMIN PAGE</h1>
    <hr />
    <body>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">COURSELIST</asp:LinkButton>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">STUDENTLIST</asp:LinkButton>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">TEACHERLIST</asp:LinkButton>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    </body>
   
    </asp:Content>
