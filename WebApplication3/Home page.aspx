<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home page.aspx.cs" Inherits="WebApplication3.Home_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 35px;
        }
        .auto-style2 {
            width: 141px;
        }
        .auto-style3 {
            height: 35px;
            width: 141px;
        }
    </style>
</head>
<body style="background-image:url('images/image1.jpeg')" >
    <form id="form1" runat="server">
        <div>
            <center> 
                <h1 style ="color:blue;">COURSE MANAGMENT SYSTEM </h1>
                <h2 style ="color:blue;"> ASP.NET PROJECT</h2>
                <marquee direction="right"><h3 style="color:red;"><STRONG>ONLY ADMIN CAN LOGIN NO OTHERS ARE NOT  ALLOWED</STRONG></h3></marquee>
               
                <hr />
                <div style="background-color:azure;height:150px;width:250px;">
                <table border="1">
                    <tr>
                        <td> ADMIN USER </td>

                        <td class="auto-style2">
                            <asp:TextBox ID="Txtadminid" runat="server" BackColor="White" BorderColor="#FF3300" BorderStyle="Dotted" ForeColor="Lime"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td> PASSWORD </td>
                        <td class="auto-style2"> <asp:TextBox ID="Txtpwdadmin" runat="server" TextMode="Password" BorderColor="Red" BorderStyle="Dotted" ForeColor="#66FF33"></asp:TextBox></td>
                       
                       
                    </tr>
                    
                       
                       
                    <tr>
                        <td class="auto-style1"> <asp:Button ID="Buttonlogin" runat="server" Text="Login" OnClick="Buttonlogin_Click" BackColor="Black" BorderColor="#66FF66" ForeColor="Lime" /></td>
                        <td class="auto-style3"> 
                            <asp:Button ID="Button1" runat="server" BackColor="Black" BorderStyle="Dotted" ForeColor="#009933" OnClick="Button1_Click" Text="RESET" />
                            <asp:Label ID="Labmsg" runat="server" BorderColor="#660066" ForeColor="Red"></asp:Label></td>
                    </tr>
                </table>
                     </div>
                    
            </center>
        </div>
        
       
    </form>
    <p>
    </p>
</body>
</html>
