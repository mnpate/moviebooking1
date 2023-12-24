<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="moviebooking1.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <html lang="zxx">
	<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Home</title>

	<link rel="stylesheet" href="assets/css/style-starter.css">
	<link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
		rel="stylesheet">
</head>

    <div class="container" id="progress-container-id" style="assets/css/ticket_book.css">
        <div class="row">
            <div class="col">
                <div class="px-0 pt-4 pb-0 mt-3 mb-3">
                    <form>
                        <br>
                        <%--<fieldset>
                            <div>
                                <iframe id="seat-sel-iframe"
                                    style="box-shadow: 0 14px 12px 0 var(--theme-border), 0 10px 50px 0 var(--theme-border); width: 800px; height: 550px; display: block; margin-left: auto; margin-right: auto;"
                                    src="seat_selection/seat_sel.aspx"></iframe>
                            </div>
                            <br>
                            <input type="button" name="next-step" class="next-step" value="proceed to payment" />
                            <input type="button" name="previous-step" class="previous-step" value="back" />
                        </fieldset>--%>


                        <fieldset>
                            <!-- Payment Page -->
                            <div id="payment_div">
                                <div class="payment-row">
                                    <div class="col-75">
                                        <div class="payment-container">
                                            <div class="payment-row">
                                                <div class="col-50">
                                                    <h3 id="payment-h3">Payment</h3>
                                                    <div class="payment-row payment">
                                                        <div class="col-50 payment">
                                                            <label for="card" class="method card">
                                                                <div class="icon-container">
                                                                    <i class="fa fa-cc-visa" style="color: navy"></i>
                                                                    <i class="fa fa-cc-amex" style="color: blue"></i>
                                                                    <i class="fa fa-cc-mastercard" style="color: red"></i>
                                                                    <i class="fa fa-cc-discover" style="color: orange"></i>
                                                                </div>
                                                                <div class="radio-input">
                                                                    <input type="radio" id="card" />
                                                                    Pay RS.200.00 with credit card
                                                                </div>
                                                            </label>
                                                        </div>
                                                        <div class="col-50 payment">
                                                            <label for="paypal" class="method paypal">
                                                                <div class="icon-container">
                                                                    <i class="fa fa-paypal" style="color: navy"></i>
                                                                </div>
                                                                <div class="radio-input">
                                                                    <input id="paypal" type="radio" checked>
                                                                    Pay $30.00 with PayPal
                                                                </div>
                                                            </label><br />
                                                        </div>
                                                    </div>

                                                    <div class="payment-row">
                                                        <div class="col-50">
                                                            <%--<asp:Label ID="Label1" runat="server" Text="">Cardholder's Name</asp:Label>--%>
                                                            <label for="cname">Cardholder's Name</label>&nbsp;
                                                            <input type="text" id="cname" name="cardname" placeholder="Cardholder's Name" required />
                                                        </div>
                                                        <div class="col-50">
                                                            <label for="ccnum">Credit card number</label>&nbsp;
                                                            <input type="text" id="ccnum" name="cardnumber" placeholder="xxxx-xxxx-xxxx-xxxx"
                                                                required />
                                                        </div>
                                                    </div>
                                                    <div class="payment-row">
                                                        <div class="col-50">
                                                            <label for="expmonth">Exp Month</label>&nbsp;
                                                            <input type="text" id="expmonth" name="expmonth" placeholder="September" required />
                                                        </div>
                                                        <div class="col-50">
                                                            <div class="payment-row">
                                                                <div class="col-50">
                                                                    <label for="expyear">Exp Year</label>
                                                                    <input type="text" id="expyear" name="expyear" placeholder="yyyy" required />
                                                                </div>
                                                                <div class="col-50">
                                                                    <label for="cvv">CVV</label>
                                                                    <input type="text" id="cvv" name="cvv" placeholder="xxx" required />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="button" name="next-step" class="next-step pay-btn" value="Confirm Payment" />
                            <input type="button" name="previous-step" class="cancel-pay-btn" value="Cancel Payment"
                                onclick="location.href='Home.aspx';" />
                        </fieldset>

    <%--<fieldset>
                            <h2>E-Ticket</h2>
                            <div class="ticket-body">
                                <div class="ticket">
                                    <div class="holes-top"></div>
                                    <div class="title">
                                        <p class="cinema">MyShowz Entertainment</p>
                                        <p class="movie-title">Movie Name</p>
                                    </div>
                                    <div class="poster">
                                        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/25240/only-god-forgives.jpg"
                                            alt="Movie: Only God Forgives" />
                                    </div>
                                    <div class="info">
                                        <table class="info-table ticket-table">
                                            <tr>
                                                <th>SCREEN</th>
                                                <th>ROW</th>
                                                <th>SEAT</th>
                                            </tr>
                                            <tr>
                                                <td class="bigger">18</td>
                                                <td class="bigger">H</td>
                                                <td class="bigger">24</td>
                                            </tr>
                                        </table>
                                        <table class="info-table ticket-table">
                                            <tr>
                                                <th>PRICE</th>
                                                <th>DATE</th>
                                                <th>TIME</th>
                                            </tr>
                                            <tr>
                                                <td>RS.12.00</td>
                                                <td>4/13/21</td>
                                                <td>19:30</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="holes-lower"></div>
                                    <div class="serial">
                                        <table class="barcode ticket-table">
                                            <tr>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                                <td style="background-color: black;"></td>
                                                <td style="background-color: white;"></td>
                                            </tr>
                                        </table>
                                        <table class="numbers ticket-table">
                                            <tr>
                                                <td>9</td>
                                                <td>1</td>
                                                <td>7</td>
                                                <td>3</td>
                                                <td>7</td>
                                                <td>5</td>
                                                <td>4</td>
                                                <td>4</td>
                                                <td>4</td>
                                                <td>5</td>
                                                <td>4</td>
                                                <td>1</td>
                                                <td>4</td>
                                                <td>7</td>
                                                <td>8</td>
                                                <td>7</td>
                                                <td>3</td>
                                                <td>4</td>
                                                <td>1</td>
                                                <td>4</td>
                                                <td>5</td>
                                                <td>2</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <input type="button" name="previous-step" class="home-page-btn" value="Browse to Home Page"
                                onclick="location.href='Home.aspx';" />
                        </fieldset>--%>
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
