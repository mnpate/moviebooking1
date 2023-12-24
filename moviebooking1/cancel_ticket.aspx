<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cancel_ticket.aspx.cs" Inherits="moviebooking1.cancel_ticket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: left">
        <table>
            <tr>
                <td >
                    <asp:Label ID="Label1" runat="server" Text="Enter Book No" Font-Bold="True" Width="174px"></asp:Label></td>
                <td >
                    <asp:TextBox ID="txtbno" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbno"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="Label2" runat="server" Text="Enter User Name " Width="138px" Font-Bold="True"></asp:Label></td>
                <td >
                    <asp:TextBox ID="txtuname" runat="server"></asp:TextBox></td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuname"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td >
                </td>
                <td >
                </td>
                <td >
                </td>
            </tr>
            <tr>
                <td >
                </td>
                <td >
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" OnClick="Button1_Click"
                        Text="Cancel" /></td>
                <td >
                    <asp:Label ID="Label3" runat="server"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>
