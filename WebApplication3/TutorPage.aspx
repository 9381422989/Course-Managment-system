<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.master" AutoEventWireup="true" CodeBehind="TutorPage.aspx.cs" Inherits="WebApplication3.TutorPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> This is a Teacher  page...!</h1>
    <div style="background-color:azure;">
        <table border="1">
            <tr>
                <td> Tutor name </td>
                <td>
                    <asp:TextBox ID="TxtTutorname" runat="server" REQUIRED></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td> Email </td>
                <td>
                    <asp:TextBox ID="TxtEmail" runat="server" input type="Email"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td> Phone</td>
                <td>
                    <asp:TextBox ID="TxtPhone" runat="server" input type="tel" pattern="[0-9]{10}"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td> Course </td>
                <td>
                    <asp:DropDownList ID="DDLCourse" runat="server" DataSourceID="SqlDataSource1" AppendDataBoundItems="true" DataTextField="cname" DataValueField="cname">
                        <asp:ListItem Value="0" Text="---select course----"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [cname] FROM [coursetable]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td> Qualification</td>
                <td>
                    <asp:TextBox ID="TxtQualification" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> Join date</td>
                <td>
                    <asp:TextBox ID="LitJoindate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ButTutor" runat="server" Text="Insert" OnClick="ButTutor_Click"/>
                </td>
            
            
                 <td>
                <asp:Label ID="LabMsg" runat="server" Text=""  ForeColor="Green" ></asp:Label>
                 </td>
              </tr> 

            </table>
        </div>
    </asp:Content>