<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title></title>
<script src="assets/js/jquery.min.js"></script>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="js代码(www.jsdaima.com)" />
<meta name="copyright" content="js代码(www.jsdaima.com)" />
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css"
	type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css"
	type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!--bootstrap-slider -->
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<!--FontAwesome Font Style -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet">

<!-- SWITCHER -->
<link rel="stylesheet" id="switcher-css" type="text/css"
	href="assets/switcher/css/switcher.css" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="assets/switcher/css/red.css" title="red" media="all"
	data-default-color="true" />
<link rel="alternate stylesheet" type="text/css"
	href="assets/switcher/css/orange.css" title="orange" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="assets/switcher/css/blue.css" title="blue" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="assets/switcher/css/pink.css" title="pink" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="assets/switcher/css/green.css" title="green" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="assets/switcher/css/purple.css" title="purple" media="all" />

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/images/favicon-icon/favicon.png">
<!-- Google-Font-->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900"
	rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="http://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="http://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>





	<!-- Start Switcher -->
	<div class="switcher-wrapper">
		<div class="demo_changer">
			<div class="demo-icon customBgColor">
				<i class="fa fa-cog fa-spin fa-2x"></i>
			</div>
			<div class="form_holder">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="predefined_styles">
							<div class="skin-theme-switcher">
								<h4>Color</h4>
								<a href="#" data-switchcolor="red" class="styleswitch"
									style="background-color: #de302f;"> </a> <a href="#"
									data-switchcolor="orange" class="styleswitch"
									style="background-color: #f76d2b;"> </a> <a href="#"
									data-switchcolor="blue" class="styleswitch"
									style="background-color: #228dcb;"> </a> <a href="#"
									data-switchcolor="pink" class="styleswitch"
									style="background-color: #FF2761;"> </a> <a href="#"
									data-switchcolor="green" class="styleswitch"
									style="background-color: #2dcc70;"> </a> <a href="#"
									data-switchcolor="purple" class="styleswitch"
									style="background-color: #6054c2;"> </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /Switcher -->

	<!--Header-->
	<%@ include file="head.jsp"%>
	<!-- /Header -->

	<!--Page Header-->
	<section class="page-header profile_page">
		<div class="container">
			<div class="page-header_wrap">
				<div class="page-heading">
					<h1>My Vehicles</h1>
				</div>
				<ul class="coustom-breadcrumb">
					<li><a href="#">Home</a></li>
					<li>My Vehicles</li>
				</ul>
			</div>
		</div>
		<!-- Dark Overlay-->
		<div class="dark-overlay"></div>
	</section>
	<!-- /Page Header-->

	<!--my-vehicles-->
	<section class="user_profile inner_pages">
		<div class="container">

			<div class="row">
				<div class="col-md-3 col-sm-3">
					<div class="profile_nav">
						<%@include file="infolist.jsp"%>
					</div>
				</div>
				<div class="col-md-6 col-sm-8">
					<div class="profile_wrap">
						<h5 class="uppercase underline">
							My Vehicles <span id="carnum"></span>
						</h5>



						<div class="my_vehicles_list">
							<ul class="vehicle_listing" id="cars">
								<!-- <li>
                <div class="vehicle_img"> <a href="#"><img src="assets/images/recent-car-1.jpg" alt="image"></a> </div>
                <div class="vehicle_title">
                  <h6><a href="#">Mazda CX-5 SX, V6, ABS, Sunroof </a></h6>
                </div>
                <div class="vehicle_status"> <a href="#" class="btn outline btn-xs active-btn">Active</a>
                  <div class="clearfix"></div>
                  <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-trash" aria-hidden="true"></i></a> </div>
              </li> -->

							</ul>



							<div class="pagination">
								<ul id="pageno">

								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/my-vehicles-->

	<!--Brands-->
	<%@ include file="popularbrands.jsp"%>
	<!-- /Brands-->

	<!--Footer -->
	<%@ include file="foot.jsp"%>
	<!-- /Footer-->

	<!--Back to top-->
	<div id="back-top" class="back-top">
		<a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a>
	</div>
	<!--/Back to top-->

	<%@ include file="loginAndRegister.jsp"%>

</body>
<script>
	$(function() {
		$
				.ajax({
					type : "get",
					url : "MyCarServlet",
					dataType : "json",
					success : function(rs) {
						var carsnum = rs.length;
						$("#carnum").html("(" + carsnum + " Cars)");
						$
								.each(
										rs,
										function(index, item) {
											var active = item.active;
											if (active == 'active') {
												$("#cars")
														.append(
																"<li><div class='vehicle_img'> <a href='list?act=CarShow&vid="
																		+ item.vid
																		+ "&brand="
																		+ item.brand
																		+ "&userid="
																		+ item.userid
																		+ "'><img src='/imgs/"+item.vid+"/"+item.upload+"' alt='image'></a> </div>"
																		+ "<div class='vehicle_title'><h6><a href='list?act=CarShow&vid="
																		+ item.vid
																		+ "&brand="
																		+ item.brand
																		+ "&userid="
																		+ item.userid
																		+ "'>"
																		+ item.brand
																		+ " "
																		+ item.model
																		+ " "
																		+ item.version
																		+ ", "
																		+ item.vod
																		+ ", "
																		+ item.price
																		+ ", "
																		+ item.vehiclestitle
																		+ " </a></h6></div>"
																		+ "<div class='vehicle_status'> <a href='ChangeActiveServlet?active="
																		+ active
																		+ "&vid="
																		+ item.vid
																		+ "' class='btn outline btn-xs active-btn'>Active</a><div class='clearfix'></div>"
																		+ "<a href='update-car.jsp?vid="
																		+ item.vid
																		+ "&filename="
																		+ item.upload
																		+ "'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></a>"
																		+ "<a href='DeleteServlet?vid="
																		+ item.vid
																		+ "&filename="
																		+ item.upload
																		+ "'><i class='fa fa-trash' aria-hidden='true'></i></a>"
																		+ "</div></li>");
											} else {
												$("#cars")
														.append(
																"<li class='deactive_vehicle'><div class='vehicle_img'> <a href='list?act=CarShow&vid="
																		+ item.vid
																		+ "&brand="
																		+ item.brand
																		+ "&userid="
																		+ item.userid
																		+ "'><img src='/imgs/"+item.vid+"/"+item.upload+"' alt='image'></a> </div>"
																		+ "<div class='vehicle_title'><h6><a href='list?act=CarShow&vid="
																		+ item.vid
																		+ "&brand="
																		+ item.brand
																		+ "&userid="
																		+ item.userid
																		+ "'>"
																		+ item.brand
																		+ " "
																		+ item.model
																		+ " "
																		+ item.version
																		+ ", "
																		+ item.vod
																		+ ", "
																		+ item.price
																		+ ", "
																		+ item.vehiclestitle
																		+ " </a></h6></div>"
																		+ "<div class='vehicle_status'> <a href='ChangeActiveServlet?active="
																		+ active
																		+ "&vid="
																		+ item.vid
																		+ "' class='btn outline btn-xs'>Dective</a><div class='clearfix'></div>"
																		+ "<a href='update-car.jsp?vid="
																		+ item.vid
																		+ "&filename="
																		+ item.upload
																		+ "'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></a>"
																		+ "<a href='DeleteServlet?vid="
																		+ item.vid
																		+ "&filename="
																		+ item.upload
																		+ "'><i class='fa fa-trash' aria-hidden='true'></i></a>"
																		+ "</div></li>");
											}

										});
					}
				});
	})
</script>
</html>

