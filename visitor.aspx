<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="visitor.aspx.cs" Inherits="CropPrediction.visitor" %>

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
				<li class="mr-lg-4 mr-2 active"><a href="index.aspx">Home</a></li>
				<li class="mr-lg-4 mr-2"><a href="register.aspx">Register Here</a></li>
                <li class="mr-lg-4 mr-2"><a href="login.aspx">Login Here</a></li>
                <li class="mr-lg-4 mr-2"><a href="visitor.aspx">Visitor</a></li>
	    	</ul>
		</nav>
		<!-- //nav -->
	</div>
</header>
    <br /><br />
   <section class="contact py-5">
	<div class="container py-sm-3">
		<h3 class="heading mb-sm-5 mb-4 text-center"> Register Complaint</h3>
		<form id="form2" runat="server">
			<div class="row">
				<div class="col-md-6 contact-left">
					<input type="text" id="Name" placeholder="Your Name" runat="server" />
					<input type="text" id="email" placeholder="Email" runat="server"  />
					<input type="text" id="phone" placeholder="Mobile Number" runat="server" />
                    Upload Pic : <asp:FileUpload ID="FileUpload1" runat="server" />
				</div>
				<div class="col-md-6 contact-right mt-md-0 mt-4">
                    <textarea id="Message" placeholder="Issue that you are facing" runat="server"></textarea>
                    <asp:TextBox ID="ward" runat="server" ></asp:TextBox>
                    <asp:Button class="btn" ID="Button1" runat="server" Text="Submit" OnClientClick="return validate()" Onclick="submit" />
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
    <script type="text/javascript">
        function validate()
        {            
            var name = document.getElementById('Name').value;
            var namepattern = /^[a-zA-Z ]*$/;
            if (name == 0 || name == '')
            {
                alert("Enter User Name");
                return false;
            }
            if (!namepattern.test(name))
            {
                alert("Invalid User name");
                return false;
            }

            var Email = document.getElementById('email').value;
            var Emailpattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            if (Email == 0 || Email == '') {
                alert("Enter Email");
                return false;
            }
            if (!Emailpattern.test(Email)) {
                alert("Invalid Email");
                return false;
            }

            var ph = document.getElementById('phone').value;
            var phpattern = /^[6|7|8|9][0-9]{9}$/;
            if (ph == 0 || ph == '')
            {
                alert("Enter Phone Number");
                return false;
            }
            if (!phpattern.test(ph))
            {
                alert("Invalid Phone number");
                return false;
            }
            var pss = document.getElementById('pswd').value;
            if (pss == 0 || pss == '') {
                alert("Enter Password");
                return false;
            }

            var cpss = document.getElementById('cpswd').value;
            if (cpss == 0 || cpss == '')
            {
                alert("Enter Confirm-password");
                return false;
            }
            if(cpss !== pss)
            {
                alert("Confirm-Pass should match with pass");
                return false;
            }

            var ad = document.getElementById('Message').value;
            if(ad == 0 || ad == '')
            {
                alert("Enter Address");
                return false;
            }
        }
    </script> 
</body>
</html>
