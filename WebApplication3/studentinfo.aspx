<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentinfo.aspx.cs" Inherits="WebApplication3.studentinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url('images/image4.jpeg')">
    <center>
    <h1>STUDENT DETAILS LIST</h1>
    </center>
    <form id="form1" runat="server">
        <div>
            <center>

                
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="stid" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="stid" HeaderText="stid" InsertVisible="False" ReadOnly="True" SortExpression="stid" />
                        <asp:BoundField DataField="stfname" HeaderText="stfname" SortExpression="stfname" />
                        <asp:BoundField DataField="stlname" HeaderText="stlname" SortExpression="stlname" />
                        <asp:BoundField DataField="stfathername" HeaderText="stfathername" SortExpression="stfathername" />
                        <asp:BoundField DataField="stfatherphone" HeaderText="stfatherphone" SortExpression="stfatherphone" />
                        <asp:BoundField DataField="stemail" HeaderText="stemail" SortExpression="stemail" />
                        <asp:BoundField DataField="stphone" HeaderText="stphone" SortExpression="stphone" />
                        <asp:BoundField DataField="coursejoin" HeaderText="coursejoin" SortExpression="coursejoin" />
                        <asp:BoundField DataField="coursefees" HeaderText="coursefees" SortExpression="coursefees" />
                        <asp:BoundField DataField="fristinstallment" HeaderText="fristinstallment" SortExpression="fristinstallment" />
                        <asp:BoundField DataField="feesdues" HeaderText="feesdues" SortExpression="feesdues" />
                        <asp:BoundField DataField="joindate" HeaderText="joindate" SortExpression="joindate" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString9 %>" DeleteCommand="DELETE FROM [student] WHERE [stid] = @stid" InsertCommand="INSERT INTO [student] ([stfname], [stlname], [stfathername], [stfatherphone], [stemail], [stphone], [coursejoin], [coursefees], [fristinstallment], [feesdues], [joindate]) VALUES (@stfname, @stlname, @stfathername, @stfatherphone, @stemail, @stphone, @coursejoin, @coursefees, @fristinstallment, @feesdues, @joindate)" SelectCommand="SELECT * FROM [student]" UpdateCommand="UPDATE [student] SET [stfname] = @stfname, [stlname] = @stlname, [stfathername] = @stfathername, [stfatherphone] = @stfatherphone, [stemail] = @stemail, [stphone] = @stphone, [coursejoin] = @coursejoin, [coursefees] = @coursefees, [fristinstallment] = @fristinstallment, [feesdues] = @feesdues, [joindate] = @joindate WHERE [stid] = @stid">
                    <DeleteParameters>
                        <asp:Parameter Name="stid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="stfname" Type="String" />
                        <asp:Parameter Name="stlname" Type="String" />
                        <asp:Parameter Name="stfathername" Type="String" />
                        <asp:Parameter Name="stfatherphone" Type="String" />
                        <asp:Parameter Name="stemail" Type="String" />
                        <asp:Parameter Name="stphone" Type="String" />
                        <asp:Parameter Name="coursejoin" Type="String" />
                        <asp:Parameter Name="coursefees" Type="Int32" />
                        <asp:Parameter Name="fristinstallment" Type="Int32" />
                        <asp:Parameter Name="feesdues" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="joindate" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="stfname" Type="String" />
                        <asp:Parameter Name="stlname" Type="String" />
                        <asp:Parameter Name="stfathername" Type="String" />
                        <asp:Parameter Name="stfatherphone" Type="String" />
                        <asp:Parameter Name="stemail" Type="String" />
                        <asp:Parameter Name="stphone" Type="String" />
                        <asp:Parameter Name="coursejoin" Type="String" />
                        <asp:Parameter Name="coursefees" Type="Int32" />
                        <asp:Parameter Name="fristinstallment" Type="Int32" />
                        <asp:Parameter Name="feesdues" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="joindate" />
                        <asp:Parameter Name="stid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                
            </center>
            <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">BACK </asp:LinkButton>
        </div>
    </form>
</body>
</html>
