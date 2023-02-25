<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mreplycomplaint.aspx.cs" Inherits="CropPrediction.mreplycomplaint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>E-Grievance</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="E-Grievance Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
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

</head>
<body>
    <header>
	<div class="container">
		<!-- nav -->
		<nav class="py-4 d-lg-flex">
			<div id="logo">
				<h1> <a href="index.html"><span class="fa fa-leaf"></span> E-Grievance</a></h1>
			</div>
			<label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
			<input type="checkbox" id="drop" />
			<ul class="menu mt-md-2 ml-auto">
				<li class="mr-lg-4 mr-2 active"><a href="chome.aspx">Home</a></li>
				<li class="mr-lg-4 mr-2"><a href="ccomp.aspx">Complaints</a></li>
                <li class="mr-lg-4 mr-2"><a href="login.aspx">Logout</a></li>
	    	</ul>
		</nav>
		<!-- //nav -->
	</div>
</header>
    <br /><br />
    <section class="banner_w3lspvt" id="home">
	<div class="csslider infinity" id="slider1">

	</div>
</section>

    
   <section class="contact py-5">
	<div class="container py-sm-3">
		<h3 class="heading mb-sm-5 mb-4 text-center"> Mayor Complaint Reply</h3>
		<form id="form2" runat="server">
			<div class="row">
				<div class="col-md-6 contact-left">
					<input type="text" id="Cid" placeholder="Your Name" runat="server" readonly/>
                    <textarea id="Message" rows="5" cols="50" class="col-xs-12 col-sm-12" placeholder="Issue that you are facing" runat="server"></textarea>
<textarea id="reply" placeholder="resolution" rows="5" cols="50" class="col-xs-12 col-sm-12" runat="server"></textarea>
                    <asp:Button class="btn" ID="Button1" runat="server" Text="Submit" OnClientClick="return validate()" Onclick="Button1_Click" />
                    <%--<button class="btn">Submit</button>--%>
				</div>
			</div>
		</form>
		<!-- map -->
		<%--<div class="map mt-5">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1859251.8642025779!2d-76.08274894689792!3d40.06224332601239!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c0fb959e00409f%3A0x2cd27b07f83f6d8d!2sNew+Jersey%2C+USA!5e0!3m2!1sen!2sin!4v1474436926209"
			 allowfullscreen></iframe>
		</div>--%>
		<!-- //map -->
	</div>
</section>

</body>
</html>
