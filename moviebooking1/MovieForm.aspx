<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MovieForm.aspx.cs" Inherits="moviebooking1.MovieForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left: auto; margin-right: auto; border-radius: 25px; background-color: cornsilk;" class="auto-style2">
        <br />
        <asp:Button ID="Button7" runat="server" Style="border-radius: 25px;" Width="121px" BackColor="#009999" BorderColor="Red" BorderStyle="Solid" Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#66FF99" Height="35px" CssClass="auto-style29" Text="LogOut" />
        <br />
        <br />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="277px" Style="margin-left: auto; margin-right: auto" Width="548px" ImageUrl="~/assets/images/2nm.jpg" /><br />
        <br />
        <br />
        <br />
        <div style="margin-left: auto; margin-right: auto;" class="auto-style1">
            <asp:Calendar ID="datepicker" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="125px" ShowGridLines="True" Width="295px" SelectedDate="07/15/2018 14:17:30" Style="margin-left: auto; margin-right: auto">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>





            <br />

            <br />
            <br />

            <asp:Label ID="Label19" runat="server" Font-Bold="True" ForeColor="Red" Text="20% Discount" Visible="False"></asp:Label>
            <br />
            <div style="height: 380px; background-color: gold; border-radius: 15px;">
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Select Items for Purchase" Font-Size="Larger"></asp:Label>

                <hr>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Ticket Type"></asp:Label>

                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Quantity"></asp:Label>

                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Price"></asp:Label>
                <br />
                <hr>
                <br />
                <br />

                <asp:CheckBox ID="CheckBox1" runat="server" Text="IMAX General (14-64)" AutoPostBack="True" />

                <asp:TextBox ID="tbGeneral" runat="server" type="number" min="1" Width="37px" Style="border-radius: 7px;" AutoPostBack="True" Enabled="False">1</asp:TextBox>

                <asp:Label ID="Label10" runat="server" Text="x$15"></asp:Label>nbsp
				
                <br />
                <br />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="IMAX Senior And Children" AutoPostBack="True" />

                <asp:TextBox ID="tbSenior" runat="server" type="number" min="1" Width="37px" Style="border-radius: 7px;" AutoPostBack="True" Enabled="False">1</asp:TextBox>

                <asp:Label ID="Label11" runat="server" Text="x$5"></asp:Label>
                <br />
                <br />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="IMAX Tuesday Special" AutoPostBack="True" />





                <br />
                <br />
                <hr>

                <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Admissions Summary"></asp:Label>

                <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Total:"></asp:Label>
                <b>$</b>
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="8.50"></asp:Label>
                <br />

                <br />

                <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Total Items:"></asp:Label>

                <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="1"></asp:Label>
            </div>


            <br />
            <br />
            <br />
            <br />

            <br />
            <br />

        </div>
        <br />

        <asp:Button ID="Button6" runat="server" Style="border-radius: 25px;" Width="152px" BackColor="#009999" BorderColor="Red" BorderStyle="Solid" Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#66FF99" Height="35px" CssClass="auto-style29" Text="ConfirmationPage" />
        <br />
        <br />


    </div>
</asp:Content>
