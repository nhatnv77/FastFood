<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Delicious - Food Blog Template | Contact</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="resources/style.css">
</head>
<body>
	<!--HEADER -->
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
                                    <li><a href="#">Hello World!</a></li>
                                    <li><a href="#">Welcome to NamBino Restaurant !</a></li>
                                    <li><a href="#">Hello Delicious!</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Top Social Info -->
                    <div class="col-12 col-sm-6">
                        <div class="top-social-info text-right">
<%--                         <c:if test="${sessionScope.tk != null}"> --%>
<%-- 	                        	<a href="#"><i class="fa fa-user" aria-hidden="true"></i> Xin chào ${sessionScope.tk}</a> --%>
<%-- 	                     </c:if> --%>
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
                    <nav class="classy-navbar justify-content-between" id="deliciousNav">

                        <!-- Logo -->
                        <a class="nav-brand" href="trangchu.htm"><img src="resources/img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li class="active"><a href="trangchu.htm">Home</a></li>
                                    <li><a href="doan.htm">Foods</a></li>
                                    <li><a href="douong.htm">Drinks</a></li>
                                    <li><a href="#">Contact</a></li>
                                    <li><a href="#">Account</a>
                                    	<ul class="dropdown">
                                            <li><a href="account/dangnhap.htm">Login</a></li>
                                            <li><a href="about.html">Logout</a></li>
                                            <li><a href="account/dangky.htm">Register</a></li>
                                        </ul>
                                    </li>
                                    <c:if test="${sessionScope.tk == null}">
                                    	<li><a href="account/dangnhap.htm">Cart<i class="fa fa-shopping-cart"></i></a></li>
                                    </c:if>
                                     <c:if test="${sessionScope.tk != null}">
                                    	<li><a href="cart.htm">Cart<i class="fa fa-shopping-cart"></i></a></li>
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
	<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(resources/img/bg-img/breadcumb4.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-text text-center">
                        <h2>Recipe</h2>
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
                <div class="col-12">
                    <div class="logo mb-80">
                        <img src="resources/img/core-img/logo.png" alt="">
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Contact Text -->
                <div class="col-12 col-lg-5">
                    <div class="contact-text">
                        <p>Hãy chọn NamBino Restaurant. Nơi mà bạn có thể tận hưởng những món ăn ngon nhất, bổ nhất, sạch sẽ nhất ! </p>
                    </div>
                </div>

                <div class="col-12 col-lg-3">
                    <!-- Single Contact Information -->
                    <div class="single-contact-information mb-30">
                        <h6>Address:</h6>
                        <p>97 Man Thien Hiep Phu ward <br>District 9, Ho Chi Minh City</p>
                    </div>
                    <!-- Single Contact Information -->
                    <div class="single-contact-information mb-30">
                        <h6>Phone:</h6>
                        <p>+53 345 7953 32453 <br>+53 345 7557 822112</p>
                    </div>
                    <!-- Single Contact Information -->
                    <div class="single-contact-information mb-30">
                        <h6>Email:</h6>
                        <p>n17dccn102@student.ptithcm.edu.vn</p>
                    </div>
                </div>

                <!-- Newsletter Area -->
                <div class="col-12 col-lg-4">
                    <div class="newsletter-form bg-img bg-overlay" style="background-image: url(resources/img/bg-img/bg1.jpg);">
                        <form action="#" method="post">
                            <input type="email" name="email" placeholder="Subscribe to newsletter">
                            <button type="submit" class="btn delicious-btn w-100">Subscribe</button>
                        </form>
                        <p>Fusce nec ante vitae lacus aliquet vulputate. Donec sceleri sque accumsan molestie.</p>
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
                        <h3>Get In Touch</h3>
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
<!--                                     <input class="form-control" value="n17dccn102@student.ptithcm.edu.vn" name="to" placeholder="n17dccn102@student.ptithcm.edu.vn" readonly="true" /> -->
                                <input class="form-control"  name="to" placeholder="n17dccn102@student.ptithcm.edu.vn"  />
                                </div>
                                <div class="col-12 col-lg-6">
                                    <input  class="form-control" placeholder="Your E-mail" name="from" />
                                </div>
                                <div class="col-12">
                                    <input  name="subject" class="form-control" placeholder="Subject"/>
                                </div>
                                <div class="col-12">
                                    <textarea class="form-control" name="body"  cols="30" rows="10" placeholder="Message"></textarea>
                                </div>
                                <div class="col-12 text-center">
                                    <button class="btn delicious-btn mt-30" >Send</button>
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
                <div class="col-12 h-100 d-flex flex-wrap align-items-center justify-content-between">
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
                        <a href="index.html"><img src="resources/img/core-img/logo.png" alt=""></a>
                    </div>
                    <!-- Copywrite -->
                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Nam Nguyen</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
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