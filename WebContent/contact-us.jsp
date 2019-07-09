<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<title>Contact Us</title>

<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/ionicons.min.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css/owl.theme.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/custom.css" type="text/css" media="all">
<link
	href="http://fonts.googleapis.com/css?family=Great+Vibes%7CLato:100,100i,300,300i,400,400i,700,700i,900,900i"
	rel="stylesheet">
</head>
<body>


	<div class="noo-spinner">
		<div class="spinner">
			<div class="cube1"></div>
			<div class="cube2"></div>
		</div>
	</div>

	<div class="site">
		<!--可复用的顶部导航栏-->
		<div class="topbar">
			<div class="container">
				<div class="row">
					<div>
						<div class="topbar-menu">
							<!--导航栏右侧需要在进行设计-->
							<ul class="topbar-menu">
								<s:if test="#session.user==null">
									<li><a href="index.jsp?page=login">登录</a></li>
								</s:if>
								<s:else>
									<li><s:property value="#session.user.name" /> ( <s:property
											value="#session.user.loginId" /> )，欢迎您! <a
										href="logout.action">注销</a></li>
									<li><a href="index.jsp?page=person_info">个人中心</a></li>
								</s:else>
								<li><a href="index.jsp?page=register">注册</a></li>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<header id="header" class="header header-desktop header-2">
			<div class="top-search">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<!--搜索框-->
							<form
								action="${pageContext.request.contextPath}/searchGoods.action"
								method="post">
								<input type="search" class="top-search-input"
									name="searchContent" placeholder="What are you looking for?" />
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div>
						<nav class="menu">
							<ul class="main-menu">
								<li><a href="index.jsp">Home</a></li>
								<li><a href="goodsList.action">Shop</a></li>
								<li><a href="cartList.action">Cart</a></li>
								<!-- <li><a href="checkout.html">Checkout</a></li> -->
								<li><a href="contact-us.jsp">Contact</a></li>
							</ul>
						</nav>
						<div class="btn-wrap" style="margin-left: 55%;">
							<div class="mini-cart-wrap">
								<div class="mini-cart">
									<!--下方数字为购物车图标上的数字-->
									<i class="ion-bag"></i>

								</div>
								<div class="widget-shopping-cart-content">
									<!--点击购物车图标后的展示-->
									<!-- <ul class="cart-list">
										<li>
											<a href="#" class="remove">×</a>
											<a href="shop-detail.html">
												<img src="images/shop/thumb/shop_1.jpg" alt="" />
												Orange Juice&nbsp;
											</a>
											<span class="quantity">1 × $12.00</span>
										</li>
										<li>
											<a href="#" class="remove">×</a>
											<a href="shop-detail.html">
												<img src="images/shop/thumb/shop_2.jpg" alt="" />
												Aurore Grape&nbsp;
											</a>
											<span class="quantity">1 × $9.00</span>
										</li>
									</ul>
									<p class="total">
										<strong>Subtotal:</strong> 
										<span class="amount">$21.00</span>
									</p> -->
									<p class="buttons">
										<a href="cartList.action" class="view-cart">View cart</a> <a
											href="checkoutOrder.action" class="checkout">Checkout</a>
									</p>
								</div>
							</div>
							<div class="top-search-btn-wrap">
								<div class="top-search-btn">
									<a href="javascript:void(0);"> <i class="ion-search"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!--可复用的顶部导航栏结束-->

		<div id="main">
			<div class="section section-bg-10 pt-11 pb-17">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<h2 class="page-title text-center">Contact Us</h2>
						</div>
					</div>
				</div>
			</div>

			<div class="section pt-10 pb-10">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="text-center mb-1 section-pretitle">Get in touch</div>
							<h2 class="text-center section-title mtn-2">联系我们</h2>
							<div class="organik-seperator mb-6 center">
								<span class="sep-holder"><span class="sep-line"></span></span>
								<div class="sep-icon">
									<i class="organik-flower"></i>
								</div>
								<span class="sep-holder"><span class="sep-line"></span></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div id="googleMap" class="mb-6"
								data-icon="images/icon_location.png" data-lat="39.0261428911"
								data-lon="117.7141415626"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-3">
							<div class="contact-info">
								<div class="contact-icon">
									<i class="fa fa-map-marker"></i>
								</div>
								<div class="contact-inner">
									<h6 class="contact-title">Address</h6>
									<div class="contact-content">
										1800 Abbot Kinney Blvd. Unit D &amp; E <br /> Venice, CA
										90291
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="contact-info">
								<div class="contact-icon">
									<i class="fa fa-phone"></i>
								</div>
								<div class="contact-inner">
									<h6 class="contact-title">Hotline</h6>
									<div class="contact-content">0122 333 8889</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="contact-info">
								<div class="contact-icon">
									<i class="fa fa-envelope"></i>
								</div>
								<div class="contact-inner">
									<h6 class="contact-title">Email Contact</h6>
									<div class="contact-content">
										organik@gmail.com <br /> contact@organikstore.com
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="contact-info">
								<div class="contact-icon">
									<i class="fa fa-globe"></i>
								</div>
								<div class="contact-inner">
									<h6 class="contact-title">Website</h6>
									<div class="contact-content">www.organikstore.com</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--复用的底部-->
		<footer class="footer">
			<div class="container">
				<div style="text-align: center;">
					<div class="widget">
						<h1 class="widget-title">订阅我们的最新消息</h1>
						<p>Enter your email address for our mailing list to keep
							yourself updated.</p>
						<form class="newsletter" style="width: 60%; margin-left: 20%;">
							<input type="email" name="EMAIL" placeholder="Your email address"
								required="" />
							<button type="button" style="width: 20%;">Subscribe</button>
						</form>
					</div>
				</div>
			</div>
		</footer>
		<div class="copyright">
			<div class="backtotop" id="backtotop"></div>
		</div>
		<!--复用的底部结束-->
	</div>

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/modernizr-2.7.1.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="js/jquery.prettyPhoto.init.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript"
		src="http://ditu.google.cn/maps/api/js?key=AIzaSyDwtb7cR_XBPEvxtQ_Yq3_xKsOWQroCTPA&sensor=false"></script>
	<script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp"></script>
	<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>

