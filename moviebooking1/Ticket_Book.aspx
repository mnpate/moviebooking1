<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ticket_Book.aspx.cs" Inherits="moviebooking1.Ticket_Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <html lang="zxx">
	<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Home</title>

	<link rel="stylesheet" href="assets/css/Ticket_Book.css">
	<link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
		rel="stylesheet">
</head>
    
    <div class="container" id="progress-container-id" style="assets/css/Ticket_Book.css">
        <div class="row">
            <div class="col">
                <div class="px-0 pt-4 pb-0 mt-3 mb-3">
                    <form id="form">
                        <ul id="progressbar" class="progressbar-class">
                            <li class="active" id="step1" align="center">Show timing selection</li>
                            <li id="step2" class="not_active" align="center">Seat Selection</li>
                            <li id="step3" class="not_active" align="center">Payment</li>
                            <li id="step4" class="not_active" align="center">E-Ticket</li>
                        </ul>
                        <br>
                        <fieldset>
                            <div id="screen-select-div">
                                <h2>Show time Selection</h2>
                                <div class="carousel carousel-nav" data-flickity='{"contain": true, "pageDots": false }'>
                                    <div class="carousel-cell" id="1" onclick="myFunction(1)">
                                        <div class="date-numeric">13</div>
                                        <div class="date-day">Today</div>
                                    </div>

                                    <div class="carousel-cell" id="2" onclick="myFunction(2)">
                                        <div class="date-numeric">14</div>
                                        <div class="date-day">Tomorrow</div>
                                    </div>
                                    <div class="carousel-cell" id="3" onclick="myFunction(3)">
                                        <div class="date-numeric">15</div>
                                        <div class="date-day">Monday</div>
                                    </div>
                                    <div class="carousel-cell" id="4" onclick="myFunction(4)">
                                        <div class="date-numeric">16</div>
                                        <div class="date-day">Tuesday</div>
                                    </div>
                                    <div class="carousel-cell" id="5" onclick="myFunction(5)">
                                        <div class="date-numeric">17</div>
                                        <div class="date-day">Wednesday</div>
                                    </div>
                                    <div class="carousel-cell" id="6" onclick="myFunction(6)">
                                        <div class="date-numeric">18</div>
                                        <div class="date-day">Thursday</div>
                                    </div>
                                    <div class="carousel-cell" id="7" onclick="myFunction(7)">
                                        <div class="date-numeric">19</div>
                                        <div class="date-day">Friday</div>
                                    </div>
                                    <div class="carousel-cell" id="8" onclick="myFunction(8)">
                                        <div class="date-numeric">20</div>
                                        <div class="date-day">Saturday</div>
                                    </div>
                                    <div class="carousel-cell" id="9" onclick="myFunction(9)">
                                        <div class="date-numeric">21</div>
                                        <div class="date-day">Sunday</div>
                                    </div>
                                </div>
                                <ul class="time-ul">
                                    <li class="time-li">
                                        <div class="screens">
                                            Screen 1
                                        </div>
                                        <div class="time-btn">
                                            <%--<button class="screen-time" onclick="timeFunction()">
                                                1:05 PM
                                            </button>--%>
                                            <%--<button class="screen-time"> 1:05 PM </button>--%>
                                            <asp:Button ID="Button1" class="screen-time" runat="server" Text="7:00 AM " />
                                            <asp:Button ID="Button2" class="screen-time" runat="server" Text="9:00 AM " />
                                            <asp:Button ID="Button3" class="screen-time" runat="server" Text="10:30 AM " />
                                            <asp:Button ID="Button4" class="screen-time" runat="server" Text="12:30 AM " />
                                        </div>
                                    </li>
                                    <li class="time-li">
                                        <div class="screens">
                                            Screen 2
                                        </div>
                                        <div class="time-btn">
                                            <asp:Button ID="Button5" class="screen-time" runat="server" Text="8:00 AM " />
                                            <asp:Button ID="Button6" class="screen-time" runat="server" Text="8:30 AM " />
                                            <asp:Button ID="Button7" class="screen-time" runat="server" Text="8:45 AM " />
                                        </div>
                                    </li>
                                    <li class="time-li">
                                        <div class="screens">
                                            Screen 3
                                        </div>
                                        <div class="time-btn">
                                            <asp:Button ID="Button8" class="screen-time" runat="server" Text="3:30 PM " />
                                            <asp:Button ID="Button9" class="screen-time" runat="server" Text="10:30 PM " />
                                        </div>
                                    </li>
                                    <li class="time-li">
                                        <div class="screens">
                                            Screen 4
                                        </div>
                                        <div class="time-btn">
                                            <asp:Button ID="Button10" class="screen-time" runat="server" Text="9:05 AM " />
                                            <asp:Button ID="Button11" class="screen-time" runat="server" Text="11:00 AM " />
                                            <asp:Button ID="Button12" class="screen-time" runat="server" Text="3:00 PM " />
                                            <asp:Button ID="Button13" class="screen-time" runat="server" Text="7:00 PM " />
                                            <asp:Button ID="Button14" class="screen-time" runat="server" Text="10:00 PM " />
                                            <asp:Button ID="Button15" class="screen-time" runat="server" Text="11:00 PM " />
                                        </div>
                                    </li>
                                    
                                </ul>
                            </div>
                            <%--<input id="screen-next-btn" type="button" name="next-step" class="next-step" value="Continue Booking"
                                disabled />--%>

                            <asp:Button ID="Button16" runat="server" Text="Continue Booking" OnClick="Button16_Click" />

                        </fieldset>

                    </form>
                </div>
            </div>
        </div>
    </div>

    <link href="assets/css/Ticket_Book.css" rel="stylesheet" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="assets/css/style-starter.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://npmcdn.com/flickity@2/dist/flickity.css">
    <link href="assets/css/progress.css" rel="stylesheet" />
    <link href="assets/css/ticket-booking.css" rel="stylesheet" />
    <link href="assets/css/e-ticket.css" rel="stylesheet" />
    <link href="assets/css/payment.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700" rel="stylesheet">

    <script>
        let prevId = "1";

        window.onload = function () {
            document.getElementById("screen-next-btn").disabled = true;
        }

        function timeFunction() {
            document.getElementById("screen-next-btn").disabled = false;
        }

        function myFunction(id) {
            document.getElementById(prevId).style.background = "rgb(243, 235, 235)";
            document.getElementById(id).style.background = "#df0e62";
            prevId = id;
        }
    </script>

    <script src="https://npmcdn.com/flickity@2/dist/flickity.pkgd.js"></script>
    <script type="text/javascript" src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'>
    </script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="assets/js/theme-change.js"></script>

    <script type="text/javascript" src="assets/js/ticket-booking.js"></script>

        </html>

</asp:Content>
