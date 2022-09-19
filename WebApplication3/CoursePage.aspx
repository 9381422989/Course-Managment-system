<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.master" AutoEventWireup="true" CodeBehind="CoursePage.aspx.cs" Inherits="WebApplication3.CoursePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Welcome to CoursePage</h1>
    <div style ="background-color:azure;">
    <table border ="1">
        <tr>
            <td> Course Name</td>
            <td>
                <asp:TextBox ID="TxtCoursename" runat="server" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td> Course Duration</td>
            <td>
                <asp:TextBox ID="TxtDuration" runat="server" Required></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td> Course Fees</td>
            <td>
                <asp:TextBox ID="TxtFees" runat="server" Required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="ButCourse" runat="server" Text="Insert New Course" OnClick="ButCourse_Click" style="height: 29px" />
            </td>
            <td>
                <asp:Label ID="LabMsg" runat="server" Text="" ForeColor="Green"></asp:Label>
            </td>
        </tr>
    </table>
        </div>
</asp:Content>
