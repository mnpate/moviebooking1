﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin1.aspx.cs" Inherits="moviebooking1.Admin.AdminLogin1" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>DarkPan - Bootstrap 5 Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

    
</head>

<body>
    <div class="container-fluid pt-4 px-4" >
                <div class="row g-4" style=" margin-left:300px">
                    <%--<div class="col-sm-12 col-xl-6">--%>
                    <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4" style="width:600px">
                        <div class="bg-secondary rounded h-100 p-4">
                            <h6 class="mb-4">Admin Login</h6>
                            <form runat="server">
                                <div class="mb-3">
                                    <label for="email" class="form-label" id="txt_email">Email</label>
<%--                                    <input type="textbox" class="form-control" id="first name"
                                        aria-describedby="firstname">--%>
                                    <asp:TextBox ID="txtemail" class="form-control" runat="server"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <label for="password" class="form-label">Password</label>
                                    <%--<input type="password" class="form-control" id="txt_password">--%>
                                    <asp:TextBox ID="txtpass" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                 
                                
                                <%--<button type="submit" class="btn btn-primary">ADD</button>--%>
                                <asp:Button ID="btnlogin" class="btn btn-primary" runat="server" style="margin-left:250px" Text="ADD" OnClick="btnlogin_Click"/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
