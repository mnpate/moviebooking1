<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="moviebooking1.Register" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Animated Login Form</title>
    <link rel="stylesheet" href="assets/css/Register.css">
</head>
<body>
    
    <form class="box" method="post" runat="server">
        <h1>Registar</h1>
        <%--<input type="text" name="" placeholder="First Name">--%>
        <asp:TextBox ID="txt_firstname" placeholder="First Name" runat="server"></asp:TextBox>
        <%--<input type="text" name="" placeholder="Last Name">--%>
        <asp:TextBox ID="txt_lastname" placeholder="Last Name" runat="server"></asp:TextBox>
        <%--<input type="text" name="" placeholder="Email Id">--%>
        <asp:TextBox ID="txt_emailid" placeholder="Email Id" runat="server"></asp:TextBox>
        <%--<input type="number" name="" placeholder="Contact No:">--%>
        <asp:TextBox ID="number" placeholder="Phone No" runat="server"></asp:TextBox>
        <%--<input type="text" name="" placeholder="City">--%>
        <asp:TextBox ID="txt_city" placeholder="City" runat="server"></asp:TextBox>
        <%--<input type="password" name="" placeholder="Password">--%>
        <asp:TextBox ID="txt_password" placeholder="Password" runat="server"></asp:TextBox>
        
        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
    </form>    
</body>
</html>
