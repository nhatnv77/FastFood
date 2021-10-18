<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<c:set var="root" value="${pageContext.servletContext.contextPath}" />
<head>
<title>Fast Food | Home</title>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="resources/img/core-img/favicon.ico">
<link rel="stylesheet" href="resources/style.css">
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
						<a class="nav-brand" href="home.htm"><img
							src="resources/img/core-img/logo.png" alt=""></a>
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
									<li class="active"><a href="home.htm">Trang chủ</a></li>
									<li><a href="food.htm">Thức ăn</a></li>
									<li><a href="drink.htm">Thức uống</a></li>
									<li><a href="contact.htm">Liên hệ</a></li>
									<li><a href="#">Tài khoản</a>
										<ul class="dropdown">
											<c:if test="${sessionScope.tk == null}">
												<li><a href="account/login.htm">Đăng nhập</a></li>
												<li><a href="account/register.htm">Đăng ký</a></li>
											</c:if>
											<c:if test="${sessionScope.tk != null}">
												<li><a href="account/update.htm">Thay đổi thông tin</a></li>
												<li><a href="account/logout.htm">Đăng xuất</a></li>
											</c:if>
										</ul></li>

									<c:if test="${sessionScope.tk == null}">
										<li><a href="account/login.htm">Cart<i
												class="fa fa-shopping-cart"></i></a></li>
									</c:if>
									<c:if test="${sessionScope.tk != null}">
										<li><a href="cart.htm">Giỏ hàng<i
												class="fa fa-shopping-cart"></i></a></li>
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
	<section class="hero-area">
		<div class="hero-slides owl-carousel">
			<!-- Single Hero Slide -->
			<div class="single-hero-slide bg-img"
				style="background-image: url(resources/img/bg-img/bg1.jpg);">
				<div class="container h-100">
					<div class="row h-100 align-items-center">
						<div class="col-12 col-md-9 col-lg-7 col-xl-6">
							<div class="hero-slides-content" data-animation="fadeInUp"
								data-delay="1ms">
								<h2 data-animation="fadeInUp" data-delay="3ms">Hambuger
									handmade</h2>
								<p data-animation="fadeInUp" data-delay="7ms">Món ngon mỗi
									ngày. Đảm bảo chất lượng vệ sinh an toàn thực phẩm.</p>
								<a href="#" class="btn delicious-btn" data-animation="fadeInUp"
									data-delay="10ms">See Receipe</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Single Hero Slide -->
			<div class="single-hero-slide bg-img"
				style="background-image: url(resources/img/bg-img/bg6.jpg);">
				<div class="container h-100">
					<div class="row h-100 align-items-center">
						<div class="col-12 col-md-9 col-lg-7 col-xl-6">
							<div class="hero-slides-content" data-animation="fadeInUp"
								data-delay="1ms">
								<h2 data-animation="fadeInUp" data-delay="3ms">Hambuger
									handmade</h2>
								<p data-animation="fadeInUp" data-delay="7ms">Món ngon mỗi
									ngày. Đảm bảo chất lượng vệ sinh an toàn thực phẩm.</p>
								<a href="#" class="btn delicious-btn" data-animation="fadeInUp"
									data-delay="10ms">See Receipe</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Single Hero Slide -->
			<div class="single-hero-slide bg-img"
				style="background-image: url(resources/img/bg-img/bg7.jpg);">
				<div class="container h-100">
					<div class="row h-100 align-items-center">
						<div class="col-12 col-md-9 col-lg-7 col-xl-6">
							<div class="hero-slides-content" data-animation="fadeInUp"
								data-delay="1ms">
								<h2 data-animation="fadeInUp" data-delay="3ms">Hambuger
									handmade</h2>
								<p data-animation="fadeInUp" data-delay="7ms">Món ngon mỗi
									ngày. Đảm bảo chất lượng vệ sinh an toàn thực phẩm.</p>
								<a href="#" class="btn delicious-btn" data-animation="fadeInUp"
									data-delay="10ms">See Receipe</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="top-catagory-area section-padding-80-0">
		<div class="container">
			<div class="row">
				<!-- Top Catagory Area -->
				<div class="col-12 col-lg-6">
					<div class="single-top-catagory">
						<img src="resources/img/bg-img/bg2.jpg" alt="">
						<!-- Content -->
						<div class="top-cta-content">
							<h3>Bánh dâu</h3>
							<h6>Siêu ngon - Hấp dẫn</h6>
							<a href="#" class="btn delicious-btn">Xem ngay</a>
						</div>
					</div>
				</div>
				<!-- Top Catagory Area -->
				<div class="col-12 col-lg-6">
					<div class="single-top-catagory">
						<img src="resources/img/bg-img/bg3.jpg" alt="">
						<!-- Content -->
						<div class="top-cta-content">
							<h3>Khô bò tuyệt hảo</h3>
							<h6>Cay nhẹ và rất thơm</h6>
							<a href="#" class="btn delicious-btn">Xem ngay</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Top Catagory Area End ##### -->

	<!-- ##### Best Receipe Area Start ##### -->
	<section class="best-receipe-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-heading">
						<h3>Danh sách những món được yêu thích nhiều nhất</h3>
					</div>
				</div>
			</div>

			<div class="row">
				<!-- Single Best Receipe Area -->
				<div class="col-12 col-sm-6 col-lg-4">
					<div class="single-best-receipe-area mb-30">
						<img src="resources/img/bg-img/r1.jpg" alt="">
						<div class="receipe-content">
							<a href="receipe-post.html"> Sushi cá hồi </a>
							<div class="ratings">
								<i class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star-o" aria-hidden="true"></i>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Best Receipe Area -->
				<div class="col-12 col-sm-6 col-lg-4">
					<div class="single-best-receipe-area mb-30">
						<img src="resources/img/bg-img/r2.jpg" alt="">
						<div class="receipe-content">
							<a href="receipe-post.html"> Homemade Burger </a>
							<div class="ratings">
								<i class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star-o" aria-hidden="true"></i>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Best Receipe Area -->
				<div class="col-12 col-sm-6 col-lg-4">
					<div class="single-best-receipe-area mb-30">
						<img src="resources/img/bg-img/r3.jpg" alt="">
						<div class="receipe-content">
							<a href="receipe-post.html"> Vegan Smoothie </a>
							<div class="ratings">
								<i class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star-o" aria-hidden="true"></i>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Best Receipe Area -->
				<div class="col-12 col-sm-6 col-lg-4">
					<div class="single-best-receipe-area mb-30">
						<img src="resources/img/bg-img/r4.jpg" alt="">
						<div class="receipe-content">
							<a href="receipe-post.html"> Calabasa soup </a>
							<div class="ratings">
								<i class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star-o" aria-hidden="true"></i>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Best Receipe Area -->
				<div class="col-12 col-sm-6 col-lg-4">
					<div class="single-best-receipe-area mb-30">
						<img src="resources/img/bg-img/r5.jpg" alt="">
						<div class="receipe-content">
							<a href="receipe-post.html"> Homemade Breakfast </a>
							<div class="ratings">
								<i class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star-o" aria-hidden="true"></i>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Best Receipe Area -->
				<div class="col-12 col-sm-6 col-lg-4">
					<div class="single-best-receipe-area mb-30">
						<img src="resources/img/bg-img/r6.jpg" alt="">
						<div class="receipe-content">
							<a href="receipe-post.html"> Healthy Fruit Desert </a>
							<div class="ratings">
								<i class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star-o" aria-hidden="true"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Best Receipe Area End ##### -->

	<!-- ##### CTA Area Start ##### -->
	<section class="cta-area bg-img bg-overlay"
		style="background-image: url(resources/img/bg-img/bg4.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<!-- Cta Content -->
					<div class="cta-content text-center">
						<h2>Gluten Free Receipies</h2>
						<p>Fusce nec ante vitae lacus aliquet vulputate. Donec
							scelerisque accumsan molestie. Vestibulum ante ipsum primis in
							faucibus orci luctus et ultrices posuere cubilia Curae; Cras sed
							accumsan neque. Ut vulputate, lectus vel aliquam congue, risus
							leo elementum nibh</p>
						<a href="#" class="btn delicious-btn">Discover all the
							receipies</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- ##### Quote Subscribe Area Start ##### -->
	<section class="quote-subscribe-adds">
		<div class="container">
			<div class="row align-items-end">
				<!-- Quote -->
				<div class="col-12 col-lg-4">
					<div class="quote-area text-center">
						<span>"</span>
						<h4>Nothing is better than going home to family and eating
							good food and relaxing</h4>
						<p>John Smith</p>
						<div class="date-comments d-flex justify-content-between">
							<div class="date">January 04, 2018</div>
							<div class="comments">2 Comments</div>
						</div>
					</div>
				</div>

				<!-- Newsletter -->
				<div class="col-12 col-lg-4">
					<div class="newsletter-area">
						<h4>Subscribe to our newsletter</h4>
						<!-- Form -->
						<div class="newsletter-form bg-img bg-overlay"
							style="background-image: url(resources/img/bg-img/bg1.jpg);">
							<form action="#" method="post">
								<input type="email" name="email"
									placeholder="Subscribe to newsletter">
								<button type="submit" class="btn delicious-btn w-100">Subscribe</button>
							</form>
							<p>Fusce nec ante vitae lacus aliquet vulputate. Donec
								sceleri sque accumsan molestie. Vestibulum ante ipsum primis in
								faucibus orci luctus et ultrices posuere cubilia.</p>
						</div>
					</div>
				</div>

				<!-- Adds -->
				<div class="col-12 col-lg-4">
					<div class="delicious-add">
						<img src="resources/img/bg-img/add.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Quote Subscribe Area End ##### -->

	<!-- ##### Follow Us Instagram Area Start ##### -->
	<div class="follow-us-instagram">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h5>Follow Us Instragram</h5>
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