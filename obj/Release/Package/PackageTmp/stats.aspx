<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stats.aspx.cs" Inherits="CropPrediction.stats" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Smart City</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Smart City Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
	
	<!-- css files -->
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->
	
	<link href="css/css_slider.css" type="text/css" rel="stylesheet" media="all">

	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css?family=Thasadith:400,400i,700,700i&amp;subset=latin-ext,thai,vietnamese" rel="stylesheet">
	<!-- //google fonts -->
    
     <script type="text/javascript" src="https://www.google.com/jsapi"></script>  
</head>
<body>
    <header>
	<div class="container">
		<!-- nav -->
		<nav class="py-4 d-lg-flex">
			<div id="logo">
				<h1> <a href="index.html"><span class="fa fa-leaf"></span> Smart City</a></h1>
			</div>
			<label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
			<input type="checkbox" id="drop" />
			<ul class="menu mt-md-2 ml-auto">
				<li class="mr-lg-4 mr-2 active"><a href="AdminHome.aspx">Home</a></li>
				<li class="mr-lg-4 mr-2"><a href="ManageUs.aspx">Manage Users</a></li>
				<li class="mr-lg-4 mr-2"><a href="mancomp.aspx">Manage Complaints</a></li>
                <li class="mr-lg-4 mr-2"><a href="stats.aspx">Statistics</a></li>
                <li class="mr-lg-4 mr-2"><a href="login.aspx">Logout</a></li>
				</ul>
		</nav>
		<!-- //nav -->
	</div>
</header>
    
    <br /><br />
   <section class="contact py-5">
	<div class="container py-sm-3">
		<h3 class="heading mb-sm-5 mb-4 text-center"> Statistics</h3>
	
		<form id="form2" runat="server">
			<div class="row">
                  <asp:Literal ID="ltScripts" runat="server"></asp:Literal>  
                    <div id="chart_div" style="width: 760px; height: 400px;"> </div>
			</div>
		</form>
	</div>
</section>

<!-- footer -->
<footer class="text-center">
	<div class="container">
		<!-- logo -->
		<%--<h2 class="logo2 text-center">
			<a href="index.html">
				<span class="fa fa-leaf"></span> Smart City
			</a>
		</h2>--%>
		<!-- //logo -->
		<!-- address -->
		    <%--<div class="contact-left-footer mt-4">
			    <ul>
				    <li>
					    <p>
						    <span class="fa fa-map-marker mr-2"></span>Agriculture Business, 2nd Block, USA
					    </p>
				    </li>
				    <li class="mx-4">
					    <p>
						    <span class="fa fa-phone mr-2"></span>+12(345) 6789 111.
					    </p>
				    </li>
				    <li>
					    <p class="text-wh">
						    <span class="fa fa-envelope-open mr-2"></span>
						    <a href="mailto:info@example.com">Example@gmail.com</a>
					    </p>
				    </li>
			    </ul>
		    </div>--%>
		<!-- //address -->
		<!-- social icons -->
		<%--<div class="footercopy-social my-4">
			<ul>
				<li>
					<a href="#">
						<span class="fa fa-facebook-square"></span>
					</a>
				</li>
				<li class="mx-2">
					<a href="#">
						<span class="fa fa-twitter-square"></span>
					</a>
				</li>
				<li class="">
					<a href="#">
						<span class="fa fa-google-plus-square"></span>
					</a>
				</li>
				<li class="mx-2">
					<a href="#">
						<span class="fa fa-linkedin-square"></span>
					</a>
				</li>
				<li>
					<a href="#">
						<span class="fa fa-rss-square"></span>
					</a>
				</li>
				<li class="ml-2">
					<a href="#">
						<span class="fa fa-pinterest-square"></span>
					</a>
				</li>
			</ul>
		</div>--%>
		<!-- //social icons -->
		<!-- copyright -->
		<div class="w3l-copy text-center">
			<!--<p class="text-da">© 2019 Smart City. All rights reserved -->
			</p>
		</div>
		<!-- //copyright -->
	</div>
</footer>
<!-- //footer -->

<!-- move top icon -->
<%--<a href="#home" class="move-top text-center"></a>--%>
<!-- //move top icon -->
</body>
</html>
