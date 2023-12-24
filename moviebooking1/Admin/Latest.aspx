<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Latest.aspx.cs" Inherits="moviebooking1.Admin.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <div class="container-fluid pt-4 px-4" >
                <div class="row g-4" style=" margin-left:300px">
                    <%--<div class="col-sm-12 col-xl-6">--%>
                    <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4" style="width:600px">
                        <div class="bg-secondary rounded h-100 p-4">
                            <h6 class="mb-4">Add Latest Movie</h6>
                           
                                <div class="mb-3">
                                    <label for="firstname" class="form-label" id="txt_mname">Movie Name</label>
<%--                                    <input type="textbox" class="form-control" id="first name"
                                        aria-describedby="firstname">--%>
                                    <asp:TextBox ID="txt_moviename" class="form-control" runat="server"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <label for="duration" class="form-label" id="txt_drt">Duration</label>
<%--                                    <input type="textbox" class="form-control" id="first name"
                                        aria-describedby="firstname">--%>
                                    <asp:TextBox ID="txt_duration" class="form-control" runat="server"></asp:TextBox>
                                </div>
                        

                                <div class="mb-3">
                                    <label for="description" class="form-label" id="txt_desc">Description</label>
                                    <%--<input type="contact" class="form-control" id="txt_contactno"
                                        aria-describedby="contactno">--%>
                                    <asp:TextBox ID="txt_description" class="form-control" runat="server"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                <label for="formFile" class="form-label">Latest Movie Image</label><br />
                                    <asp:FileUpload ID="FileUpload1" class="form-label" runat="server" />
                                    <asp:Label ID="lbl_fumsg" runat="server" Text="Label"></asp:Label>
                            </div>
                                <%--<button type="submit" class="btn btn-primary">ADD</button>--%>
                                <asp:Button ID="Submit" class="btn btn-primary" runat="server" style="margin-left:250px" Text="ADD" OnClick="Submit_Click" />
                          


                        </div>
                    </div>
                </div>
            </div>
        <%--<div style="margin-left:300px">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Movie_Id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                        <asp:BoundField DataField="Movie_Id" HeaderText="Movie_Id" InsertVisible="False" ReadOnly="True" SortExpression="Movie_Id" />
                                        <asp:BoundField DataField="Movie_Name" HeaderText="Movie_Name" SortExpression="Movie_Name" />
                                        <asp:BoundField DataField="Show_Time" HeaderText="Show_Time" SortExpression="Show_Time" />
                                        <asp:BoundField DataField="Movie_Details" HeaderText="Movie_Details" SortExpression="Movie_Details" />
                                        <asp:BoundField DataField="Theatre_Name" HeaderText="Theatre_Name" SortExpression="Theatre_Name" />
                                        <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MovieDB1ConnectionString4 %>" DeleteCommand="DELETE FROM [Movie] WHERE [Movie_Id] = @original_Movie_Id AND [Movie_Name] = @original_Movie_Name AND [Show_Time] = @original_Show_Time AND [Movie_Details] = @original_Movie_Details AND [Theatre_Name] = @original_Theatre_Name AND [Image] = @original_Image" InsertCommand="INSERT INTO [Movie] ([Movie_Name], [Show_Time], [Movie_Details], [Theatre_Name], [Image]) VALUES (@Movie_Name, @Show_Time, @Movie_Details, @Theatre_Name, @Image)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Movie]" UpdateCommand="UPDATE [Movie] SET [Movie_Name] = @Movie_Name, [Show_Time] = @Show_Time, [Movie_Details] = @Movie_Details, [Theatre_Name] = @Theatre_Name, [Image] = @Image WHERE [Movie_Id] = @original_Movie_Id AND [Movie_Name] = @original_Movie_Name AND [Show_Time] = @original_Show_Time AND [Movie_Details] = @original_Movie_Details AND [Theatre_Name] = @original_Theatre_Name AND [Image] = @original_Image">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_Movie_Id" Type="Int32" />
                                        <asp:Parameter Name="original_Movie_Name" Type="String" />
                                        <asp:Parameter Name="original_Show_Time" Type="String" />
                                        <asp:Parameter Name="original_Movie_Details" Type="String" />
                                        <asp:Parameter Name="original_Theatre_Name" Type="String" />
                                        <asp:Parameter Name="original_Image" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="Movie_Name" Type="String" />
                                        <asp:Parameter Name="Show_Time" Type="String" />
                                        <asp:Parameter Name="Movie_Details" Type="String" />
                                        <asp:Parameter Name="Theatre_Name" Type="String" />
                                        <asp:Parameter Name="Image" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Movie_Name" Type="String" />
                                        <asp:Parameter Name="Show_Time" Type="String" />
                                        <asp:Parameter Name="Movie_Details" Type="String" />
                                        <asp:Parameter Name="Theatre_Name" Type="String" />
                                        <asp:Parameter Name="Image" Type="String" />
                                        <asp:Parameter Name="original_Movie_Id" Type="Int32" />
                                        <asp:Parameter Name="original_Movie_Name" Type="String" />
                                        <asp:Parameter Name="original_Show_Time" Type="String" />
                                        <asp:Parameter Name="original_Movie_Details" Type="String" />
                                        <asp:Parameter Name="original_Theatre_Name" Type="String" />
                                        <asp:Parameter Name="original_Image" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
            </div>--%>
                          
          </form>


</asp:Content>
