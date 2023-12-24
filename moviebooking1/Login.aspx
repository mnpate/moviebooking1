<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="moviebooking1.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/Login.css">
    <title>Form Input Wave</title>
</head>
<body>
    <form class="box" action="" method="post" runat="server">
        <h1>Login</h1>
        <%--<input type="text" name="" placeholder="username">--%>
        <asp:TextBox ID="txt_username" placeholder="User Name" runat="server"></asp:TextBox>
        <%--<input type="password" name="" placeholder="Password">--%>
        <asp:TextBox ID="txt_password" placeholder="Password" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click"/>
        <br />
    </form>        
</body>
</html>
