<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="CropPrediction.upload" %>

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

   <section class="contact py-5">
	<div class="container py-sm-3">
		<h3 class="heading mb-sm-5 mb-4 text-center"> Upload Dataset</h3>
		<%--<div class="row map-pos">
			<div class="col-lg-4 col-md-6 address-row">
				<div class="row">
					<div class="col-2 address-left">
						<div class="contact-icon">
							<span class="fa fa-home" aria-hidden="true"></span>
						</div>
					</div>
					<div class="col-10 address-right">
						<h5>Visit Us</h5>
						<p>Agriculture Business, 2nd Block, Farm land, USA.</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 address-row w3-agileits">
				<div class="row">
					<div class="col-2 address-left">
						<div class="contact-icon">
							<span class="fa fa-envelope" aria-hidden="true"></span>
						</div>
					</div>
					<div class="col-10 address-right">
						<h5>Mail Us</h5>
						<p><a href="mailto:info@example.com">Example@gmail.com</a></p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 address-row">
				<div class="row">
					<div class="col-2 address-left">
						<div class="contact-icon">
							<span class="fa fa-phone" aria-hidden="true"></span>
						</div>
					</div>
					<div class="col-10 address-right">
						<h5>Call Us</h5>
						<p>+12(345) 6789 111</p>
					</div>
				</div>
			</div>
		</div>--%>
		<form id="form2" runat="server">
			<div class="row">
				<div class="col-md-12 contact-left">
                     <h3 style="font-weight:bolder;font-size:25px;color:black;">Load Data Here ..</h3>
                    Available Datasets :  <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem Value="item sales - Copy.xls">Mysore Dataset</asp:ListItem>
                        <asp:ListItem  Value="item sales - Copy.xls">Chamarajanagar Dataset</asp:ListItem>
                                          </asp:DropDownList>
                    
                    <%--<asp:FileUpload ID="FileUpload1" runat="server" />--%>
					<asp:Button ID="uploader" runat="server" class=" btn btn-primary" Text="Upload"  OnClick="upload_Click" OnClientClick="return validation1();"/>
                    <asp:Button ID="Button1" runat="server" class=" btn btn-primary" Text="Clear Data"  OnClick="Button1_Click" OnClientClick="return validation1();"/>
				</div>
                
				<div class="col-md-12 contact-left">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
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

<footer class="text-center">
	<div class="container">
		<!-- logo -->
		<%--<h2 class="logo2 text-center">
			<a href="index.html">
				<span class="fa fa-leaf"></span> E-Grievance
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
	
		</div>
		<!-- //copyright -->
	</div>
</footer>
</body>
</html>
