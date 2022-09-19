<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="courseinfo.aspx.cs" Inherits="WebApplication3.courseinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url('images/image4.jpeg')">
    <h1> COURSE DETAILS LIST</h1>
    <form id="form1" runat="server">
        <div>
            <center>
            <asp:GridView ID="coursetable" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                    <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                    <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                    <asp:BoundField DataField="cfees" HeaderText="cfees" SortExpression="cfees" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString8 %>" DeleteCommand="DELETE FROM [coursetable] WHERE [cid] = @cid" InsertCommand="INSERT INTO [coursetable] ([cname], [duration], [cfees]) VALUES (@cname, @duration, @cfees)" SelectCommand="SELECT * FROM [coursetable]" UpdateCommand="UPDATE [coursetable] SET [cname] = @cname, [duration] = @duration, [cfees] = @cfees WHERE [cid] = @cid">
                <DeleteParameters>
                    <asp:Parameter Name="cid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="cname" Type="String" />
                    <asp:Parameter Name="duration" Type="String" />
                    <asp:Parameter Name="cfees" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cname" Type="String" />
                    <asp:Parameter Name="duration" Type="String" />
                    <asp:Parameter Name="cfees" Type="Int32" />
                    <asp:Parameter Name="cid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
                </center>
            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">BACK</asp:LinkButton>
        </div>
    </form>
</body>
</html>
