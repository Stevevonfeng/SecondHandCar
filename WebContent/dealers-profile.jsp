<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.SHC.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>${dealer.username }</title>
<meta name="keywords" content="" />
<meta name="description" content="" /> 
<meta name="author" content="js代码(www.jsdaima.com)" />
<meta name="copyright" content="js代码(www.jsdaima.com)" />
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!--bootstrap-slider -->
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<!--FontAwesome Font Style -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet">

<!-- SWITCHER -->
		<link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/red.css" title="red" media="all" data-default-color="true" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/orange.css" title="orange" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/blue.css" title="blue" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/pink.css" title="pink" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/green.css" title="green" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/purple.css" title="purple" media="all" />
        
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/images/favicon-icon/favicon.png">
<!-- Google-Font-->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="http://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="http://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->  
</head>
<body>
     
<%-- <%
	Dealers dealer = (Dealers)request.getAttribute("dealer");
%> --%>

<!-- Start Switcher -->
<div class="switcher-wrapper">	
    <div class="demo_changer">
        <div class="demo-icon customBgColor"><i class="fa fa-cog fa-spin fa-2x"></i></div>
        <div class="form_holder">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="predefined_styles">
                        <div class="skin-theme-switcher">
                            <h4>Color</h4>
                            <a href="#" data-switchcolor="red" class="styleswitch" style="background-color:#de302f;"> </a>
                            <a href="#" data-switchcolor="orange" class="styleswitch" style="background-color:#f76d2b;"> </a>
                            <a href="#" data-switchcolor="blue" class="styleswitch" style="background-color:#228dcb;"> </a>
                            <a href="#" data-switchcolor="pink" class="styleswitch" style="background-color:#FF2761;"> </a>
                            <a href="#" data-switchcolor="green" class="styleswitch" style="background-color:#2dcc70;"> </a>
                            <a href="#" data-switchcolor="purple" class="styleswitch" style="background-color:#6054c2;"> </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /Switcher -->  
      
<!--Header-->
<%@ include file="head.jsp" %>
<!-- /Header --> 

<!--Page Header-->
<section class="page-header profile_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
        <h1>${dealer.username }</h1>
      </div>
      <ul class="coustom-breadcrumb">
        <li><a href="#">主页</a></li>
        <li>经销商概览</li>
      </ul>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<!-- /Page Header--> 

<!--Dealer-profile-->
<section class="dealer_profile inner_pages">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-3 col-xs-4">
        <div class="dealer_logo"> <img src="<c:if test="${dealer.img ne null }">/imgs/${dealer.img }</c:if><c:if test="${dealer.img eq null }">assets/images/dealer-logo.jpg</c:if>"
										alt="image" style="width:214.5px; height:172px"> </div>
      </div>
      <div class="col-md-6 col-sm-5 col-xs-8">
        <div class="dealer_info">
          <h4>${dealer.username }</h4>
          <p>${dealer.country }<br>
           ${dealer.province }, 电话:  ${dealer.phone }</p>
          <ul class="dealer_social_links">
            <li class="facebook-icon"><a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
            <li class="twitter-icon"><a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
            <li class="linkedin-icon"><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
            <li class="google-plus-icon"><a href="#"><i class="fa fa-google-plus-square" aria-hidden="true"></i></a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-3 col-sm-4 col-xs-12">
        <div class="dealer_contact_info gray-bg">
          <h6><i class="fa fa-globe" aria-hidden="true"></i> Website</h6>
          <a href="#">www.${dealer.username }.com</a> </div>
        <div class="dealer_contact_info gray-bg">
          <h6><i class="fa fa-envelope" aria-hidden="true"></i> Email Address</h6>
          <a href="mailto:contact@example.com">contact@${dealer.username }.com</a> </div>
        <div class="dealer_contact_info gray-bg">
          <h6><i class="fa fa-phone" aria-hidden="true"></i> Phone Number</h6>
          <a href="">+61-${dealer.phone }</a> </div>
      </div>
    </div>
    <div class="space-60"></div>
    <div class="row">
      <div class="col-md-9">
        <div class="dealer_more_info">
          <h5 class="gray-bg info_title"> About ${dealer.username }</h5>
          <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. </p>
          <div class="dealer_map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26361315.424069386!2d-113.75658747371207!3d36.241096924675375!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited+States!5e0!3m2!1sen!2sin!4v1483614660041" width="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
          </div>
          <div class="dealer_listings">
            <h6>${dealer.username } 的车辆展示</h6>
            <div class="row">
            
            <c:forEach items="${cars }" var="car">
            <div class="col-md-4 grid_listing">
                <div class="product-listing-m gray-bg">
                  <div class="product-listing-img"> <a href="#"><img src="/imgs/${car.vid }/${car.upload }" class="img-responsive" alt="image" style="width:262.48px; height:164px;"/> </a>
                    <div class="label_icon">New</div>
                    <div class="compare_item">
                      <div class="checkbox">
                        <input type="checkbox" value="" id="compare10">
                        <label for="compare10">Compare</label>
                      </div>
                    </div>
                  </div>
                  <div class="product-listing-content">
                    <h5><a href="#">${car.brand } ${car.model } ${car.version }, V6, ABS, Sunroof </a></h5>
                    <p class="list-price">$${car.price }</p>
                    <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> ${user.province }, ${user.country }</span></div>
                    <ul class="features_list">
                      <li><i class="fa fa-road" aria-hidden="true"></i>${car.mileage } km</li>
                      <li><i class="fa fa-tachometer" aria-hidden="true"></i>${car.mileage_h } miles</li>
                      <li><i class="fa fa-calendar" aria-hidden="true"></i>${car.year } model</li>
                      <li><i class="fa fa-car" aria-hidden="true"></i>Diesel</li>
                    </ul>
                  </div>
                </div>
              </div>
            </c:forEach>
              
              
              
              
              
          <div class="comment_form">
            <h6>Leave a Comment</h6>
            <form action="#">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Full Name">
              </div>
              <div class="form-group">
                <input type="email" class="form-control" placeholder="Email Address">
              </div>
              <div class="form-group">
                <textarea rows="5" class="form-control" placeholder="Comments"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" class="btn" value="Submit Comment">
              </div>
            </form>
          </div>
        </div>
      </div>
      
    </div>
  </div>
</section>
<!--/Dealer-profile--> 

<!--Brands-->
<%@ include file="popularbrands.jsp" %>
<!-- /Brands--> 

<!--Footer -->
<%@ include file="foot.jsp" %>
<!-- /Footer--> 

<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top--> 

<%@ include file="loginAndRegister.jsp" %>

</body>
<script type="text/javascript">
	
</script>
</html>

