<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<c:set var="root" value="${pageContext.servletContext.contextPath}" />
<head>
<title>CHI TIẾT SẢN PHẨM</title>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="resources/img/core-img/favicon.ico">
<link rel="stylesheet" href="resources/style.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${root}/resources/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${root}/resources/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${root}/resources/login/css/util.css">
<link rel="stylesheet" type="text/css"
	href="${root}/resources/login/css/main.css">
<!--===============================================================================================-->
<!-- Core Stylesheet -->
<link rel="stylesheet" href="${root}/resources/doan/css/style.css">
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
									Xin chào ${sessionScope.tk}</a>
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
									<li class="active"><a href="${root}/drink.htm">Thức uống</a></li>
									<li><a href="${root}/contact.htm">Liên hệ</a></li>
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

	<!-- CONTENT -->

	<div class="main-container col1-layout">
		<div class="container">
			<div class="row">
				<div class="col-main">
					<form:form action="${root}/cart/add.htm" modelAttribute="prod">
						<div class="product-view-area">
							<div
								class="product-big-image col-xs-12 col-sm-5 col-lg-5 col-md-5">
								<div class="icon-sale-label sale-left">Sale</div>
								<div class="normal-image">
									<!-- large-image -->
									<a href="#" class="cloud-zoom" id="zoom1"
										rel="useWrapper: false, adjustY:0, adjustX:20"> <img
										class="zoom-img"
										src="${root}/resources/img/products/${prod.image}"
										alt="products">
									</a>
								</div>

							</div>
						</div>

						<div
							class="col-xs-12 col-sm-7 col-lg-7 col-md-7 product-details-area">
							<div class="product-name">
								<h1>${prod.name}</h1>
							</div>
							<div class="price-box">
								<p class="special-price">
									<span class="price-label">Special Price</span> <span
										class="price"> ${prod.price} VNĐ </span>
								</p>
							</div>
							<div class="ratings">
								<div class="rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
										class="fa fa-star-o"></i>
								</div>
								<p class="rating-links">
									<a href="#">1 Review(s)</a> <span class="separator">|</span> <a
										href="#">Add Your Review</a>
								</p>
								<p class="availability in-stock pull-right">
									Tình Trạng: <span>Còn hàng</span>
								</p>
							</div>
							<div class="short-description">
								<h2>Giới Thiệu</h2>
								<p>Nhà hàng NamBino đạt chuẩn 5 sao với hệ thống các món ăn
									phong phú, đa dạng. Ngoài ra quy trình làm thức ăn đã được
									chứng nhận là vệ sinh an toàn thực phẩm. Thức ăn nhiều chất
									dinh dương đáp ứng đủ nhu cầu của khách hàng.</p>
							</div>
							<div class="product-variation">
								<form action="/giohang.htm" method="post">
									<div class="cart-plus-minus">
										<label for="qty">Số Lượng:</label>
										<div class="numbers-row">
											<div
												onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 0 ) result.value--;return false;"
												class="dec qtybutton">
												<i class="fa fa-minus">&nbsp;</i>
											</div>
											<input type="text" class="qty" title="Qty" value="1"
												maxlength="12" id="qty" name="qty">
											<div
												onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;"
												class="inc qtybutton">
												<i class="fa fa-plus">&nbsp;</i>
											</div>
										</div>
									</div>
									<%-- 	                  <button class="add-to-cart  button pro-add-to-cart abc" data-id="${prod.idProduct} id="btncart" > --%>
									<!-- 	                	<span><i class="fa fa-shopping-basket"></i> Thêm vô giỏ hàng</span> -->
									<!-- 	                  </button> -->
									<a class=" btn btn-danger abc" type="button"
										href="${root}/giohang.htm?
						id=${prod.idProduct}&name=${prod.name}&gia=${prod.price}&image=${prod.image}&soLuong=${3}">
										<span><i class="fa fa-shopping-basket"></i> Thêm vô giỏ
											hàng</span>
									</a>
								</form>

							</div>
						</div>
					</form:form>

				</div>

			</div>
		</div>

		<%-- href="giohang.htm?id=${prod.idProduct}&name=${prod.name}&gia=${prod.price}&image=${prod.image}&soLuong=${slg}" --%>

		<!-- END CONTENT -->


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
					<img src="${root}/resources/img/bg-img/insta1.jpg" alt="">
					<!-- Icon -->
					<div class="insta-icon">
						<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					</div>
				</div>

				<!-- Single Insta Feeds -->
				<div class="single-insta-feeds">
					<img src="${root}/resources/img/bg-img/insta2.jpg" alt="">
					<!-- Icon -->
					<div class="insta-icon">
						<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					</div>
				</div>

				<!-- Single Insta Feeds -->
				<div class="single-insta-feeds">
					<img src="${root}/resources/img/bg-img/insta3.jpg" alt="">
					<!-- Icon -->
					<div class="insta-icon">
						<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					</div>
				</div>

				<!-- Single Insta Feeds -->
				<div class="single-insta-feeds">
					<img src="${root}/resources/img/bg-img/insta4.jpg" alt="">
					<!-- Icon -->
					<div class="insta-icon">
						<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					</div>
				</div>

				<!-- Single Insta Feeds -->
				<div class="single-insta-feeds">
					<img src="${root}/resources/img/bg-img/insta5.jpg" alt="">
					<!-- Icon -->
					<div class="insta-icon">
						<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					</div>
				</div>

				<!-- Single Insta Feeds -->
				<div class="single-insta-feeds">
					<img src="${root}/resources/img/bg-img/insta6.jpg" alt="">
					<!-- Icon -->
					<div class="insta-icon">
						<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					</div>
				</div>

				<!-- Single Insta Feeds -->
				<div class="single-insta-feeds">
					<img src="${root}/resources/img/bg-img/insta7.jpg" alt="">
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
							<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
						</div>
						<!-- Footer Logo -->
						<div class="footer-logo">
							<a href="index.html"><img
								src="${root}/resources/img/core-img/logo.png" alt=""></a>
						</div>
						<!-- Copywrite -->
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>document.write(new Date().getFullYear());</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Nam Nguyen</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</div>
		</footer>
		<script
			src="${root}/resources/login/vendor/jquery/jquery-3.2.1.min.js"></script>
		<!--===============================================================================================-->
		<script src="${root}/resources/login/vendor/bootstrap/js/popper.js"></script>
		<script
			src="${root}/resources/login/vendor/bootstrap/js/bootstrap.min.js"></script>
		<!--===============================================================================================-->
		<script src="${root}/resources/login/vendor/select2/select2.min.js"></script>
		<!--===============================================================================================-->
		<script src="${root}/resources/login/vendor/tilt/tilt.jquery.min.js"></script>
		<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>

		<!--===============================================================================================-->
		<script src="${root}/resources/login/js/main.js"></script>

		<!-- jQuery-2.2.4 js -->
		<script src="${root}/resources/js/jquery/jquery-2.2.4.min.js"></script>
		<!-- Popper js -->
		<script src="${root}/resources/js/bootstrap/popper.min.js"></script>
		<!-- Bootstrap js -->
		<script src="${root}/resources/js/bootstrap/bootstrap.min.js"></script>
		<!-- All Plugins js -->
		<script src="${root}/resources/js/plugins/plugins.js"></script>
		<!-- Active js -->
		<script src="${root}/resources/js/active.js"></script>

		<script type="text/javascript" src="js/jquery.min.js"></script>

		<!-- bootstrap js -->
		<script type="text/javascript"
			src="${root}/resources/doan/js/bootstrap.min.js"></script>

		<!-- owl.carousel.min js -->
		<script type="text/javascript"
			src="${root}/resources/doan/js/owl.carousel.min.js"></script>

		<!-- bxslider js -->
		<script type="text/javascript"
			src="${root}/resources/doan/js/jquery.bxslider.js"></script>

		<!-- jquery.mobile-menu js -->
		<script type="text/javascript"
			src="${root}/resources/doan/js/mobile-menu.js"></script>

		<!--jquery-ui.min js -->
		<script type="text/javascript"
			src="${root}/resources/doan/js/jquery-ui.js"></script>

		<!-- main js -->
		<script type="text/javascript" src="${root}/resources/doan/js/main.js"></script>

		<script>
        $(document).ready(function () {
            $(".abc").click(function (e) {
            	var slg = document.getElementById('qty').val();
            	href = "${root}/cart1.htm?id=${prod.idProduct}&name=${prod.name}&gia=${prod.price}&image=${prod.image}&soLuong=${slg}";
            	e.preventDefault();
                window.location = "${root}/giohang.htm?id=${prod.idProduct}&name=${prod.name}&gia=${prod.price}&image=${prod.image}&soLuong=${slg}";;
            }
 </script>
</body>
</html>