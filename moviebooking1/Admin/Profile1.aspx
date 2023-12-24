<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Profile1.aspx.cs" Inherits="moviebooking1.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid pt-4 px-4" >
                <div class="row g-4" style=" margin-left:300px">
                    <%--<div class="col-sm-12 col-xl-6">--%>
                    <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4" style="width:600px">
                        <div class="bg-secondary rounded h-100 p-4">
                            <h6 class="mb-4">Add Admin</h6>
                            <form runat="server">
                                <div class="mb-3">
                                    <label for="firstname" class="form-label" id="txt_firstname">First Name</label>
<%--                                    <input type="textbox" class="form-control" id="first name"
                                        aria-describedby="firstname">--%>
                                    <asp:TextBox ID="txtfnm" class="form-control" runat="server"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <label for="lastname" class="form-label">Last Name</label>
                                    <asp:TextBox ID="txtlnm" class="form-control" runat="server"></asp:TextBox>
      
                                </div>

                                <div class="mb-3">
                                    <label for="contactno" class="form-label">Contact No</label>
                                    <%--<input type="contact" class="form-control" id="txt_contactno"
                                        aria-describedby="contactno">--%>
                                    <asp:TextBox ID="txtcno" class="form-control" runat="server"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <label for="emailaddress" class="form-label">Email address</label>
                                    <%--<input type="email" class="form-control" id="txt_email"
                                        aria-describedby="emailHelp">--%>
                                    <asp:TextBox ID="txtemail" class="form-control" runat="server"></asp:TextBox>
                                    <%--<div id="emailHelp" class="form-text">We'll never share your email with anyone else.
                                    </div>--%>
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Password</label>
                                    <%--<input type="password" class="form-control" id="txt_password">--%>
                                    <asp:TextBox ID="txtpass" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                 <div class="mb-3">
                                    <label for="cpassword" class="form-label">comfirm Password</label>
                                    <%--<input type="password" class="form-control" id="txt_password">--%>
                                     <asp:TextBox ID="txtcpass" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                <label for="formFile" class="form-label">Default file input example</label>
                                    <asp:FileUpload ID="FileUpload1" class="form-label" runat="server" />
                                    <asp:Label ID="lbl_fumsg" runat="server" Text="Label"></asp:Label>
                            </div>
                                <%--<button type="submit" class="btn btn-primary">ADD</button>--%>
                                <asp:Button ID="Submit" class="btn btn-primary" runat="server" style="margin-left:250px" Text="ADD" OnClick="Submit_Click" />

                                <br><br><br>
                           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Admin_Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="Admin_Id" HeaderText="Admin_Id" InsertVisible="False" ReadOnly="True" SortExpression="Admin_Id" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="CPassword" HeaderText="CPassword" SortExpression="CPassword" />
            <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
        </Columns>
                               <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                               <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                               <RowStyle BackColor="White" ForeColor="#330099" />
                               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                               <SortedAscendingCellStyle BackColor="#FEFCEB" />
                               <SortedAscendingHeaderStyle BackColor="#AF0101" />
                               <SortedDescendingCellStyle BackColor="#F6F0C0" />
                               <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MovieDB1ConnectionString4 %>" DeleteCommand="DELETE FROM [Admin] WHERE [Admin_Id] = @Admin_Id" InsertCommand="INSERT INTO [Admin] ([FirstName], [LastName], [ContactNo], [Email], [Password], [CPassword], [img]) VALUES (@FirstName, @LastName, @ContactNo, @Email, @Password, @CPassword, @img)" ProviderName="<%$ ConnectionStrings:MovieDB1ConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [Admin]" UpdateCommand="UPDATE [Admin] SET [FirstName] = @FirstName, [LastName] = @LastName, [ContactNo] = @ContactNo, [Email] = @Email, [Password] = @Password, [CPassword] = @CPassword, [img] = @img WHERE [Admin_Id] = @Admin_Id">
        <DeleteParameters>
            <asp:Parameter Name="Admin_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="CPassword" Type="String" />
            <asp:Parameter Name="img" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="CPassword" Type="String" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="Admin_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
                                </form>
                        </div>
                    </div>
                </div>
            </div>


    

</asp:Content>
