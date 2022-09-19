<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tutorinfo.aspx.cs" Inherits="WebApplication3.tutorinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body  style="background-image:url('images/image4.jpeg')">
    <center><h1> TEACHER DETAILS LIST</h1></center>
    <form id="form1" runat="server">
        <div>
            
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="tid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="tid" HeaderText="tid" InsertVisible="False" ReadOnly="True" SortExpression="tid" />
                    <asp:BoundField DataField="tname" HeaderText="tname" SortExpression="tname" />
                    <asp:BoundField DataField="temail" HeaderText="temail" SortExpression="temail" />
                    <asp:BoundField DataField="tphone" HeaderText="tphone" SortExpression="tphone" />
                    <asp:BoundField DataField="tcourse" HeaderText="tcourse" SortExpression="tcourse" />
                    <asp:BoundField DataField="tqualification" HeaderText="tqualification" SortExpression="tqualification" />
                    <asp:BoundField DataField="joindate" HeaderText="joindate" SortExpression="joindate" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString10 %>" DeleteCommand="DELETE FROM [tutor] WHERE [tid] = @tid" InsertCommand="INSERT INTO [tutor] ([tname], [temail], [tphone], [tcourse], [tqualification], [joindate]) VALUES (@tname, @temail, @tphone, @tcourse, @tqualification, @joindate)" SelectCommand="SELECT * FROM [tutor]" UpdateCommand="UPDATE [tutor] SET [tname] = @tname, [temail] = @temail, [tphone] = @tphone, [tcourse] = @tcourse, [tqualification] = @tqualification, [joindate] = @joindate WHERE [tid] = @tid">
                <DeleteParameters>
                    <asp:Parameter Name="tid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="tname" Type="String" />
                    <asp:Parameter Name="temail" Type="String" />
                    <asp:Parameter Name="tphone" Type="String" />
                    <asp:Parameter Name="tcourse" Type="String" />
                    <asp:Parameter Name="tqualification" Type="String" />
                    <asp:Parameter DbType="Date" Name="joindate" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tname" Type="String" />
                    <asp:Parameter Name="temail" Type="String" />
                    <asp:Parameter Name="tphone" Type="String" />
                    <asp:Parameter Name="tcourse" Type="String" />
                    <asp:Parameter Name="tqualification" Type="String" />
                    <asp:Parameter DbType="Date" Name="joindate" />
                    <asp:Parameter Name="tid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
         <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton7_Click">BACK</asp:LinkButton>
    </form>
    
</body>
</html>
