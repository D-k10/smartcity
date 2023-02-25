<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mancomp.aspx.cs" Inherits="CropPrediction.mancomp" %>

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
    <section class="banner_w3lspvt" id="home">
	<div class="csslider infinity" id="slider1">

	</div>
</section>
   <section class="contact py-5">
	<div class="container py-sm-3">
		<h3 class="heading mb-sm-5 mb-4 text-center"> Corporator Unresolved Complaints</h3>
		<form id="form2" runat="server">
			<div class="row">
				<div class="col-md-12 contact-left">
					<asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" CssClass="table table-responsive" CellPadding="3" EmptyDataText="No Data" 
        EmptyDataRowStyle-ForeColor="green" Width="100%" Style="color:black" HeaderStyle-ForeColoe="White" HeaderStyle-BackColor="Green" 
        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        OnRowDeleting="Delete" CellSpacing="1" GridLines="None"  >
        <Columns>
        
            <asp:BoundField DataField="Cid" HeaderText="Id" SortExpression="Cid" />
            
        <asp:TemplateField HeaderText="Complaint Image">
            <ItemTemplate>
                <asp:Image ID="image1" runat="server" ImageUrl='<%# String.Format("~/upload/{0}",Eval("ImgName")) %>' Width="100" Height="100" />
            </ItemTemplate>
        </asp:TemplateField>
            <asp:BoundField DataField="Complaint" HeaderText="Complaint" SortExpression="Complaint" />
            <asp:BoundField DataField="CompDate" HeaderText="CompDate" SortExpression="CompDate" />
            <asp:BoundField DataField="Ward" HeaderText="Ward" SortExpression="CompDate" />
            <asp:BoundField DataField="Lat" HeaderText="Lattitude" SortExpression="CompDate" />
            <asp:BoundField DataField="Lon" HeaderText="Longitude" SortExpression="CompDate" />
            <asp:BoundField DataField="Areas" HeaderText="Area" SortExpression="CompDate" />
            <asp:BoundField DataField="Stat" HeaderText="Status" SortExpression="Stat" />
            
            <asp:CommandField ShowDeleteButton="true" HeaderText="Action" ButtonType="Button"/>
            </Columns>

<EmptyDataRowStyle ForeColor="Green"></EmptyDataRowStyle>

                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />

<HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF"></HeaderStyle>
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />

    </asp:GridView>
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
