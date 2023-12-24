<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Movies_new.aspx.cs" Inherits="moviebooking1.Admin.Movies_new" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Style="margin-top: 15px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Movie_Id" HeaderText="Movie_Id" ReadOnly="True" SortExpression="Movie_Id" />
                    <asp:BoundField DataField="Movie_Name" HeaderText="Movie_Name" SortExpression="Movie_Name" />
                    <asp:BoundField DataField="Show_Time" HeaderText="Show_Time" SortExpression="Show_Time" />
                    <asp:BoundField DataField="Theatre_Id" HeaderText="Theatre_Id" SortExpression="Theatre_Id" />
                    <asp:BoundField DataField="Theatre" HeaderText="Theatre" SortExpression="Theatre" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
