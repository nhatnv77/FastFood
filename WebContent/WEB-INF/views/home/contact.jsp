<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<c:set var="root" value="${pageContext.servletContext.contextPath}" />
<head>
<title>Giỏ hàng</title>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="${root}/resources/img/core-img/favicon.ico">

<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="${root}/resources/login/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${root}/resources/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${root}/resources/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${root}/resources/login/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${root}/resources/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${root}/resources/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${root}/resources/login/css/util.css">
<link rel="stylesheet" type="text/css"
	href="${root}/resources/login/css/main.css">
<link rel="stylesheet" href="${root}/resources/style.css">
</head>
<body>
	<header class="header-area">
		<!-- Top Header Area -->
		<div class="top-header-area">
			<div class="container h-100">
				<div class="row h-100 align-items-center justify-content-between">
					<!-- Breaking News -->
					<div class="col-12 col-sm-6">
						<div class="breaking-news">
							<div id="breakingNewsTicker" class="ticker">
								<ul>
									<li><a href="#"><b>Chào mừng đến với Fast Food</b></a></li>
									<li><a href="#"><b>Địa chỉ: 97 Man Thiện, Hiệp
												Phú, Q9, TP Thủ Đức</b></a></li>
									<li><a href="#"><b>Số điện thoại: +84 979 888 999</b></a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Top Social Info -->
					<div class="col-12 col-sm-6">
						<div class="top-social-info text-right">
							<c:if test="${sessionScope.tk != null}">
								<a href="#"><i class="fa fa-user" aria-hidden="true"></i>
									Xin chào ${sessionScope.tk} ♥</a>
							</c:if>
							<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Navbar Area -->
		<div class="delicious-main-menu">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<!-- Menu -->
					<nav class="classy-navbar justify-content-between"
						id="deliciousNav">
						<!-- Logo -->
						<a class="nav-brand" href="${root}/home.htm"><img
							src="${root}/resources/img/core-img/logo.png" alt=""></a>
						<!-- Navbar Toggler -->
						<div class="classy-navbar-toggler">
							<span class="navbarToggler"></span>
						</div>
						<!-- Menu -->
						<div class="classy-menu">
							<!-- close btn -->
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>
							<!-- Nav Start -->
							<div class="classynav">
								<ul>
									<li><a href="${root}/home.htm">Trang chủ</a></li>
									<li><a href="${root}/food.htm">Thức ăn</a></li>
									<li><a href="${root}/drink.htm">Thức uống</a></li>
									<li><a href="${root}/contact.htm">Liên hệ</a></li>
									<li><a href="#">Tài khoản</a>
										<ul class="dropdown">
											<c:if test="${sessionScope.tk == null}">
												<li><a href="${root}/account/login.htm">Đăng nhập</a></li>
												<li><a href="${root}/account/register.htm">Đăng ký</a></li>
											</c:if>
											<c:if test="${sessionScope.tk != null}">
												<li><a href="${root}/account/update.htm">Thay đổi
														thông tin</a></li>
												<li><a href="${root}/account/logout.htm">Đăng xuất</a></li>
											</c:if>
										</ul></li>

									<c:if test="${sessionScope.tk == null}">
										<li><a href="${root}/account/login.htm">Cart<i
												class="fa fa-shopping-cart"></i></a></li>
									</c:if>
									<c:if test="${sessionScope.tk != null}">
										<li class="active"><a href="${root}/cart.htm">Giỏ
												hàng<i class="fa fa-shopping-cart"></i>
										</a></li>
									</c:if>
								</ul>

								<!-- Newsletter Form -->
								<div class="search-btn">
									<i class="fa fa-search" aria-hidden="true"></i>
								</div>

							</div>
							<!-- Nav End -->
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>

	<!--CONTENT -->
	<div class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(resources/img/bg-img/breadcumb4.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="breadcumb-text text-center">
						<h2>FAST FOOD</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Breadcumb Area End ##### -->

	<!-- ##### Contact Information Area Start ##### -->
	<div class="contact-information-area section-padding-80">
		<div class="container">
			

			<div class="row">
				<!-- Contact Text -->
				<div class="col-12 col-lg-5">
					<div class="contact-text">
						<p>Hãy chọn NamBino Restaurant. Nơi mà bạn có thể tận hưởng
							những món ăn ngon nhất, bổ nhất, sạch sẽ nhất !</p>
					</div>
				</div>

				<div class="col-12 col-lg-3">
					<!-- Single Contact Information -->
					<div class="single-contact-information mb-30">
						<h6>Địa chỉ:</h6>
						<p>
							97 Man Thiện, Hiệp Phú, Q9, TP Thủ Đức
						</p>
					</div>
					<!-- Single Contact Information -->
					<div class="single-contact-information mb-30">
						<h6>Liên lạc:</h6>
						<p>
							+84 979 888 999
						</p>
					</div>
					<!-- Single Contact Information -->
					<div class="single-contact-information mb-30">
						<h6>Email:</h6>
						<p>n18dccn027@student.ptithcm.edu.vn</p>
						<p>n18dccn139@student.ptithcm.edu.vn</p>
						<p>n18dccn154@student.ptithcm.edu.vn</p>
					</div>
				</div>

				<!-- Newsletter Area -->
				<div class="col-12 col-lg-4">
					<div class="newsletter-form bg-img bg-overlay"
						style="background-image: url(resources/img/bg-img/bg1.jpg);">
						<form action="#" method="post">
							<input type="email" name="email"
								placeholder="Đăng ký ngay để nhận tin mới nhất">
							<button type="submit" class="btn delicious-btn w-100">Đăng ký</button>
						</form>
						<p>Fusce nec ante vitae lacus aliquet vulputate. Donec sceleri
							sque accumsan molestie.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Contact Information Area End ##### -->

	<!-- ##### Contact Form Area Start ##### -->
	<div class="contact-area section-padding-0-80">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-heading">
						<h3>Để lại thông tin góp ý</h3>
					</div>
				</div>
			</div>
			${message}
			<div class="row">
				<div class="col-12">
					<div class="contact-form-area">
						<form action="mailer/send.htm" method="post">
							<div class="row">
								<div class="col-12 col-lg-6">
									<input class="form-control" name="to"
										placeholder="To" />
								</div>
								<div class="col-12 col-lg-6">
									<input class="form-control" placeholder="Your E-mail"
										name="from" />
								</div>
								<div class="col-12">
									<input name="subject" class="form-control"
										placeholder="Subject" />
								</div>
								<div class="col-12">
									<textarea class="form-control" name="body" cols="30" rows="10"
										placeholder="Message"></textarea>
								</div>
								<div class="col-12 text-center">
									<button class="btn delicious-btn mt-30">Gửi</button>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Contact Form Area End ##### -->
	<!-- FOOTER -->
	<!-- ##### Follow Us Instagram Area Start ##### -->
	<div class="follow-us-instagram">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h5>Theo dõi Instragram</h5>
				</div>
			</div>
		</div>
		<!-- Instagram Feeds -->
		<div class="insta-feeds d-flex flex-wrap">
			<!-- Single Insta Feeds -->
			<div class="single-insta-feeds">
				<img src="resources/img/bg-img/insta1.jpg" alt="">
				<!-- Icon -->
				<div class="insta-icon">
					<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
				</div>
			</div>

			<!-- Single Insta Feeds -->
			<div class="single-insta-feeds">
				<img src="resources/img/bg-img/insta2.jpg" alt="">
				<!-- Icon -->
				<div class="insta-icon">
					<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
				</div>
			</div>

			<!-- Single Insta Feeds -->
			<div class="single-insta-feeds">
				<img src="resources/img/bg-img/insta3.jpg" alt="">
				<!-- Icon -->
				<div class="insta-icon">
					<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
				</div>
			</div>

			<!-- Single Insta Feeds -->
			<div class="single-insta-feeds">
				<img src="resources/img/bg-img/insta4.jpg" alt="">
				<!-- Icon -->
				<div class="insta-icon">
					<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
				</div>
			</div>

			<!-- Single Insta Feeds -->
			<div class="single-insta-feeds">
				<img src="resources/img/bg-img/insta5.jpg" alt="">
				<!-- Icon -->
				<div class="insta-icon">
					<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
				</div>
			</div>

			<!-- Single Insta Feeds -->
			<div class="single-insta-feeds">
				<img src="resources/img/bg-img/insta6.jpg" alt="">
				<!-- Icon -->
				<div class="insta-icon">
					<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
				</div>
			</div>

			<!-- Single Insta Feeds -->
			<div class="single-insta-feeds">
				<img src="resources/img/bg-img/insta7.jpg" alt="">
				<!-- Icon -->
				<div class="insta-icon">
					<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Follow Us Instagram Area End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area">
		<div class="container h-100">
			<div class="row h-100">
				<div
					class="col-12 h-100 d-flex flex-wrap align-items-center justify-content-between">
					<!-- Footer Social Info -->
					<div class="footer-social-info text-right">
						<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-behance" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
					</div>
					<!-- Footer Logo -->
					<div class="footer-logo">
						<a href="index.html"><img
							src="resources/img/core-img/logo.png" alt=""></a>
					</div>
					<!-- Copywrite -->
					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved<br> <b>GROUP 16 with <i
							class="fa fa-heart" aria-hidden="true"></i>
						</b>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- jQuery-2.2.4 js -->
	<script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="resources/js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="resources/js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="resources/js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="resources/js/active.js"></script>
</body>
</html>