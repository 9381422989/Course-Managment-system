<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.master" AutoEventWireup="true" CodeBehind="StudentPage.aspx.cs" Inherits="WebApplication3.StudentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> This is a Student page....!</h1>
    <div style ="background-color:azure; margin-left: 87px; margin-right: 167px;">
        <table border="1">
            <tr>
                <td> Student Frist Name  </td>
                <td>
                    <asp:TextBox ID="TxtStname" runat="server" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> Student Last Name </td>
                <td>
                    <asp:TextBox ID="TxtStlast" runat="server" REQUIRED></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> Father Name</td>
                <td>
                    <asp:TextBox ID="TxtFatherName" runat="server"  REQUIRED></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Father Phone</td>
                <td>
                    <asp:TextBox ID="TxtFatherPhone" runat="server" input type="tel" pattern="[0-9]{10}"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="TxtStEmail" runat="server" input type="Email" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> Phone </td>
                <td>
                    <asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> Course Name</td>
                <td>
                    <asp:DropDownList ID="DDLCourseName" runat="server" AutoPostBack="True" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cname" OnSelectedIndexChanged="DDLCourseName_selectedIndexChanged">
                        <asp:ListItem Value="0" Text="--select course--"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [cname] FROM [coursetable]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>  Course Fees</td>
                <td>
                    <asp:Label ID="LabCourseFees" runat="server" Text=""></asp:Label>
                  
                </td>
              
             
            </tr>
            <tr>
                <td> Installments </td>
                <td>
                    <asp:TextBox ID="TxtCourseInstallment" runat="server" AutoPostBack="true" OnTextChanged ="TxtCourseInstallment_TextChanged" ></asp:TextBox>
                   </td>
            </tr>
            <tr>
                <td>Fee Due</td>
                <td>
                    <asp:Label ID="LabDueFees" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td> Join Date</td>
                <td>
                    <asp:TextBox ID="LitJoindate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ButStudent" runat="server" Text="Insert Record" OnClick="ButStudent_Click" />
                </td>
                <td>
                    <asp:Label ID="Labmsg" runat="server" Text="" ForeColor="Green"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
