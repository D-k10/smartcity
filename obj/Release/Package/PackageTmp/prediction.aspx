<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prediction.aspx.cs" Inherits="CropPrediction.prediction" %>

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
</head>
<body>
  
   <section class="contact">
	<div class="container py-sm-3">
		<h3 class="heading mb-sm-5 mb-4 text-center">Prediction</h3>
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
                <div class="col-md-4 contact-left"></div>
				<div class="col-md-4 contact-right mt-md-0 mt-4">
					
					<div id="map_canvas" style="width: 0%; height: 0px"></div>
                    <input runat="server" type="text" id="phvalue" placeholder="Soil pH value"/> <asp:Button class="btn" ID="Button5" runat="server" Text="Refresh" OnClick="Button5_Click" />
                    <input runat="server" type="text" id="lat"  />
                    <input runat="server" type="text" id="lon"  />
                    <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Fetch Location" OnClick="Button2_Click"/>
                    <br />
                    <input runat="server" type="text" id="Location" placeholder="Location" readonly/>
                    <input runat="server" type="text" placeholder="Land in Acres" id="land"/>
					
                    <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem Enabled="true" Text="Select Types of soil" Value="0"></asp:ListItem>                                    
                                </asp:DropDownList> 
                    
                    <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Enabled="true" Text="Select Types of soil" Value="0"></asp:ListItem>                                    
                                </asp:DropDownList> 
					 <asp:Button class="btn" ID="Button1" runat="server" Text="Predict" OnClick="send" OnClientClick="return validation();"/>
                     <asp:Button class="btn" ID="Button3" runat="server" Text="Neutralize" OnClick="Button3_Click" />
                     <asp:Button class="btn" ID="Button4" runat="server" Text="Fertilizers" OnClick="Button4_Click" />
				</div>
				<div class="col-md-4 ">
                    
				</div>
			</div>
          
            
            <asp:Panel ID="Panel2" runat="server" Style="padding-top:50px;">
                <h1>Neutralizing Data</h1>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table table-responsive"
                    CellPadding="4"  EmptyDataText="There are no data records to display." ForeColor="#C9A974"  GridLines="None" Width="100%"   EnableModelValidation="True">
                             <Columns>
                         
                            <asp:BoundField DataField="phval" HeaderText="PH Value" 
                            SortExpression="MedName" />    
                            <asp:BoundField DataField="6.0PH" HeaderText="6.0PH" 
                            SortExpression="SoilName" /> 
                            <asp:BoundField DataField="6.4PH" HeaderText="6.4PH" 
                            SortExpression="pHValue" />    
                            <asp:BoundField DataField="6.8PH" HeaderText="6.8PH" 
                            SortExpression="Acre" /> 
                    </Columns>
                    <EditRowStyle BackColor="#000" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#009f4d" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#fff" Font-Bold="True" ForeColor="#000" />

                </asp:GridView>
                </asp:Panel>

            
            <asp:Panel ID="Panel3" runat="server" Style="padding-top:50px;">
                <h1>Fertilizer Data</h1>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="table table-responsive"
                    CellPadding="4"  EmptyDataText="There are no data records to display." ForeColor="#C9A974"  GridLines="None" Width="100%"   EnableModelValidation="True">
                             <Columns>
                         
                            <asp:BoundField DataField="crop" HeaderText="Crop Name" 
                            SortExpression="MedName" />    
                            <asp:BoundField DataField="soiltype" HeaderText="Soil Type" 
                            SortExpression="SoilName" /> 
                            <asp:BoundField DataField="optimumph" HeaderText="pH Value" 
                            SortExpression="pHValue" />    
                            <asp:BoundField DataField="Neemcake" HeaderText="Neem Cake" 
                            SortExpression="Acre" />      
                            <asp:BoundField DataField="sesammacake" HeaderText="Sesamma" 
                            SortExpression="Acre" />      
                            <asp:BoundField DataField="safflowercake" HeaderText="Safflower" 
                            SortExpression="Acre" />        
                            <asp:BoundField DataField="groundcake" HeaderText="Ground Cake" 
                            SortExpression="Acre" />       
                            <asp:BoundField DataField="fishwastage" HeaderText="Fish Farm Wastage" 
                            SortExpression="Acre" />       
                            <asp:BoundField DataField="pigwastage" HeaderText="Pig Farm Wastage" 
                            SortExpression="Acre" />   
                    </Columns>
                    <EditRowStyle BackColor="#000" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#009f4d" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#fff" Font-Bold="True" ForeColor="#000" />

                </asp:GridView>
                </asp:Panel>

              <asp:Panel ID="Panel1" runat="server" Style="padding-top:50px;">
                <h1>Predicted Data</h1>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-responsive"
                    CellPadding="4"  EmptyDataText="There are no data records to display." ForeColor="#C9A974"  GridLines="None" Width="100%"   EnableModelValidation="True">
                             <Columns>
                         
                            <asp:BoundField DataField="crop" HeaderText="Crop Name" 
                            SortExpression="MedName" />    
                            <asp:BoundField DataField="soiltype" HeaderText="Soil Type" 
                            SortExpression="SoilName" /> 
                            <asp:BoundField DataField="optimumph" HeaderText="pH Value" 
                            SortExpression="pHValue" />    
                            <asp:BoundField DataField="Neemcake" HeaderText="Neem Cake" 
                            SortExpression="Acre" />      
                            <asp:BoundField DataField="sesammacake" HeaderText="Sesamma" 
                            SortExpression="Acre" />      
                            <asp:BoundField DataField="safflowercake" HeaderText="Safflower" 
                            SortExpression="Acre" />        
                            <asp:BoundField DataField="groundcake" HeaderText="Ground Cake" 
                            SortExpression="Acre" />       
                            <asp:BoundField DataField="fishwastage" HeaderText="Fish Farm Wastage" 
                            SortExpression="Acre" />       
                            <asp:BoundField DataField="pigwastage" HeaderText="Pig Farm Wastage" 
                            SortExpression="Acre" />   
                    </Columns>
                    <EditRowStyle BackColor="#000" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#009f4d" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#fff" Font-Bold="True" ForeColor="#000" />

                </asp:GridView>
                </asp:Panel>

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
	
		</div>
		<!-- //copyright -->
	</div>
</footer>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD55Oyyz-3NOPPHbX1YNnSoAqCYdQSFLTE&callback=initMap">
    </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

    debugger;
    if (navigator.geolocation) {

       // latter();
navigator.geolocation.getCurrentPosition(success);
} else {
alert("Geo Location is not supported on your current browser!");
}
function success(position) {
var lat = position.coords.latitude;
var long = position.coords.longitude;
document.getElementById("lat").value = lat;
document.getElementById("lon").value = long;
var city = position.coords.locality;
var myLatlng = new google.maps.LatLng(lat, long);
var myOptions = {
center: myLatlng,
zoom: 12,
mapTypeId: google.maps.MapTypeId.ROADMAP
};
var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
var marker = new google.maps.Marker({
position: myLatlng,
title: "lat: " + lat + " long: " + long
});marker.setMap(map);
var infowindow = new google.maps.InfoWindow({ content: "<b>You are located here</b><br/> Latitude:"+lat+"<br /> Longitude:"+long+"" });
infowindow.open(map, marker);
}

function latter()
{
    $.getJSON('https://ipinfo.io/geo', function(response) { 
        var loc = response.loc.split(',');
        var coords = {
            latitude: loc[0],
            longitude: loc[1]
        };
        do_something(coords);
    });  
}

function do_something(coords) {
    document.getElementById("lat").value = coords.latitude;
    document.getElementById("lon").value = coords.longitude;
}
</script>
    <script type="text/javascript">
        function validation() {
            var loc = document.getElementById('Location').value;
            if (loc == 0 || loc == '') {
                alert("Give location");
                return false;
            }

            var lt = document.getElementById('lat').value;
            if (lt == 0 || lt == '') {
                alert("Enter latitude");
                return false;
            }

            var ln = document.getElementById('lon').value;
            if (ln == 0 || ln == '') {
                alert("Enter longitude");
                return false;
            }

            var lnd = document.getElementById('land').value;
            if (lnd == 0 || lnd == '') {
                alert("Enter land");
                return false;
            }

            var pvalue = document.getElementById('phvalue').value;
            if (pvalue == 0 || pvalue == '') {
                alert("Enter pH Value");
                return false;
            }
        }
    </script> 
</body>
</html>
