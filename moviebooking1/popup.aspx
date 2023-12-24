<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="popup.aspx.cs" Inherits="moviebooking1.popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
	<style>
@import url("https://fonts.googleapis.com/css?family=Poppins");
@import url('https://fonts.googleapis.com/css?family=Montserrat');

$white: rgb(255, 255, 255);
$yellow: rgb(220, 190, 0);
$gray: rgb(115, 115, 115);
$light-background: rgb(245, 245, 245);

.hero {
  //background-position: center;
  text-align: center;
  background-size: cover;
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  height: 445px;
  
  &:before {
        position: absolute;
    content: '';
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.75);
        opacity: 0.7;
  }
}

.mv-single-hero {
  background-repeat: no-repeat;
  height: 598px;
}

.center-content {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -ms-flex-direction: column;
  flex-direction: column;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  margin: auto;
}

.hero-ontop {
  z-index: 1;
}

a, a:active, a:visited {
    cursor: pointer;
    transition: all 300ms ease-in-out;
    text-decoration: none;
    color: #ec7532;
    outline: none;
    box-shadow: none;
}

.btn {
    font-size: 13px;
    font-weight: normal;
    position: relative;
    overflow: hidden;
    width: auto;
    padding: 12px 24px;
    letter-spacing: 4px;
    text-transform: uppercase;
    color: #fff;
    border-width: 2px;
    border-radius: 30px;
}

.btn i,.btn:hover i {
    position: relative;
    z-index: 1;
    display: inline-flex;
    vertical-align: middle;
    color: #fff;
}

.btn-default {
    border: none;
    background-image: linear-gradient(to right,#fbbd61,#ec7532);
}

.btn-default span,.btn-default span:hover,.btn-ghost span:hover {
    position: relative;
    z-index: 1;
    color: #fff;
}

.btn-default:hover:before {
    width: 140%;
}

.btn-default:before,.btn-ghost:before {
    position: absolute;
    z-index: 0;
    bottom: 0;
    left: -15px;
    width: 0;
    height: 100%;
    content: '';
    transition: .4s;

    transform: skewX(30deg);
    background: #ec7532;
}

.btn-primary {
    border: none;
    background: #ec7532;
}

.btn-ghost {

    transition: all 300ms ease-in-out;
    color: #ec7532;
    border-color: #ec7532;
    background: transparent;
}

.btn-ghost:hover span {
    color: #fff;
}

.btn-ghost:hover:before {
    z-index: -1;
    width: 140%;
}

.btn-ghost:hover {
    color: #fff;
}

button.btn-default,button.btn-primary {
    -webkit-transition: all 300ms ease-in-out;
    -moz-transition: all 300ms ease-in-out;
    transition: all 300ms ease-in-out;
}

button.btn-default:before,button.btn-primary:before {
    display: none;
}

button.btn-default:hover,button.btn-primary:hover {
    color: #fff;
    background: #fbbd61;
}

a.arrow-button {
    font-size: 12px;
    position: relative;
    letter-spacing: 4px;
    text-transform: uppercase;
    color: #ec7532;
}

a.arrow-button:after {
    font-family: 'Material Icons';
    font-weight: bold;
    position: absolute;
    top: -1px;
    content: 'chevron_right';
    text-transform: none;
    -webkit-font-feature-settings: 'chevron_right';
}

a.arrow-button:hover {
    color: #101010;
}

.star-rating {
    display: inline-block;
}

.star-rating i {
    font-size: 18px;
    display: inline-block;
    width: 18px;
    color: #fbbd61;
}

i.material-icons {
    display: inline-flex;
    vertical-align: middle;
}

#content_hero .scroll {
    position: absolute;
    z-index: 1;
    bottom: 0;
    left: 50%;
    margin-left: -45px;
 
    animation: ScrollDown 1.5s infinite;
}
#content_hero:before {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    display: block;
    content: '';
    background-image: linear-gradient(to top,rgb(0,0,0) 0%,rgba(0,0,0,0) 100%);
}

#content_hero .container .blurb {
    position: relative;
    width: 100%;
    margin-top: 50px;
    animation: Blurb .5s .5s forwards;
    text-align: left;
    //opacity: 0;
}

#content_hero .container .blurb h1 {
    font-size: 52px;
    font-weight: 300;
    padding: 0;
    animation: Heading .5s .5s forwards;
    letter-spacing: 3px;
    opacity: 0;
    color: #fff;
    border: none;
}

#content_hero .container .blurb p {
    font-size: 18px;
    color: #fff;
}

#content_hero .container .blurb .certificate {
    font-size: 13px;
    font-weight: bold;
    //line-height: 48px;
  line-height: 43px;
    display: inline-block;
    width: 48px;
    height: 48px;
    margin-right: 8px;
    transform: translateY(2px);
    text-align: center;
    color: #fff;
    border: solid 2px #fff;
    border-radius: 50%;
}

#content_hero {
    position: relative;
    transition: all 300ms ease-in-out;
    background-position: center;
    background-size: cover;
}

#content_hero:before {
    top: auto;
    height: 70%;
}

#content_hero .container .blurb {
    margin-top: 200px;
    margin-bottom: 100px;
}

#content_hero .container .blurb h1 {
    animation: none;
    opacity: 1;
}

#content_hero .buttons .btn {
    margin-right: 15px;
}


span.title {
    font-size: 14px;
    letter-spacing: 2px;
    text-transform: uppercase;
    color: #fbbd61;
}
	</style>
	<%--<script>
        $(function () {
            $("button").click(function () {
                $(".cover").fadeIn("300");
            })
            $(".cover,.close").click(function () {
                $(".cover").fadeOut("300");
            })
            $(".contents").click(function (e) {
                e.stopPropagation();
            })
        })
    </script>--%>
<body>
    <form id="form1" runat="server">

	
       
<div id="content_hero" class="center-content hero-ontop" style="background-image: url(assets/images/m3.jpg) ;height:700px" >
  <img src="" alt="Scroll down" class="scroll">

  <div class="container">
    <div class="row blurb scrollme animateme" data-when="exit" data-from="0" data-to="1" data-opacity="0" data-translatey="100">
      <div class="col-md-9">    
        <span class="title">Action, Adventure, Sci-Fi</span>
        <h1>Transformers: The Last Knight</h1>
        <p>Humans and Transformers are at war, Optimus Prime is gone. The key to saving our future lies buried in the secrets of the past, in the hidden history of Transformers on Earth.</p>
        <div class="buttons">
          <span class="certificate">PG</span>
         <%-- <a href="https://youtu.be/RhFMIRuHAL4" data-vbtype="video" class="venobox btn btn-default vbox-item">
            <i class="material-icons">play_arrow</i>
            <span>Play trailer</span>
          </a>--%>
         <%-- <button class="btn btn-default">
            <i class="fa fa-heart" aria-hidden="true"></i>
            BOOK YOUR TICKET NOW
            </button>--%>
            <i class="fa fa-heart" aria-hidden="true"></i>
            <asp:Button ID="Button1" class="btn btn-default" runat="server"  Text="BOOK YOUR TICKET NOW" OnClick="Button1_Click"  />
         <%-- <div class="star-rating">
            <i class="material-icons">star_rate</i>
            <i class="material-icons">star_rate</i>
            <i class="material-icons">star_rate</i>
            <i class="material-icons">star_rate</i>
            <i class="material-icons">star_rate</i>
          </div>--%>
        </div>
      </div>
    </div>
  </div>
</div>
    </form>
	
</body>
	<%--<script>
        $(function () {
            $("button").click(function () {
                $(".cover").fadeIn("300");
            })
            $(".cover,.close").click(function () {
                $(".cover").fadeOut("300");
            })
            $(".contents").click(function (e) {
                e.stopPropagation();
            })
        })
    </script>--%>
</html>
