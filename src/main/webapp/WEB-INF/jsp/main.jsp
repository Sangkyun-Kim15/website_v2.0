<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Portfolio page</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
body {
	background-color: #f9f9f9;
	overflow-x: hidden;
}

.navbar-default {
	border-color: transparent;
	background: linear-gradient(rgba(224, 204, 200, 1.0),
		rgba(224, 204, 200, 0.90)); /* bottom, image */
}

.img-centered {
	margin: 0 auto;
}

h1, h2, h3, h4, h5 {
	font-family: 'Lato', sans-serif;
	font-style: normal;
	text-transform: uppercase;
}

h3 {
	text-transform: capitalize;
	font-size: 1.875em;
	padding: 0 0 1% 0;
	color: #001833;
	font-weight: 800;
}

header {
	background: linear-gradient(rgba(224, 204, 200, 1.0),
		rgba(224, 204, 200, 0.90)); /* bottom, image */
	background-size: cover;
	background-position: center top;
	width: 100%;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
	-o-background-size: cover;
}

.intro {
	max-width: 960px;
	margin: 0 auto;
	padding: 8% 0;
}

.intro h1 {
	font-size: 6em;
	text-align: center;
	color: #fff;
	text-transform: uppercase;
	letter-spacing: 0.1em;
	font-weight: 800;
	line-height: 1.5em;
}

.intro h2 {
	font-size: 2em;
	text-align: center;
	color: #fff;
	font-weight: 300;
	text-transform: capitalize;
	letter-spacing: 0.09em;
}

.about {
	padding: 4% 0;
	max-width: 960px;
	margin: 0 auto;
	font-family: 'Open Sans', sans-serif;
	-webkit-animation-delay: 4s; /* Chrome, Safari, Opera */
}

.about p {
	font-family: 'Open Sans', sans-serif;
	font-style: normal;
	font-weight: 300;
	line-height: 1.8;
	color: #616569;
	letter-spacing: .03em;
	margin: 10px auto;
	font-size: 1.5em;
	padding: 2% 0;
}

.portfolio {
	font-family: 'Open Sans', sans-serif;
	padding: 4% 0;
	right: 0;
	margin: 0 0 15px;
}

.portfolio h3 {
	font-style: normal;
	font-weight: 300;
	line-height: 1.8;
	color: #616569;
	letter-spacing: .03em;
	margin: 10px auto;
	font-size: 1.5em;
	padding: 2% 0;
}

.portfolio-item {
	max-width: 400px;
	overflow:hidden;
}

.portfolio-modal .modal-content {
	padding: 100px 0;
	min-height: 100%;
	border: 0;
	border-radius: 0;
	text-align: center;
	background-clip: border-box;
	-webkit-box-shadow: none;
	box-shadow: none;
}

.portfolio-modal .modal-content h2 {
	margin-bottom: 15px;
	font-size: 3em;
}

.portfolio-modal .modal-content p {
	margin-bottom: 30px;
}

.portfolio-modal .modal-content p.item-intro {
	margin: 20px 0 30px;
	font-family: 'Open Sans', sans-serif;
	font-size: 16px;
	font-style: italic;
}

.portfolio-modal .modal-content ul.list-inline {
	margin-top: 0;
	margin-bottom: 30px;
}

.portfolio-modal .modal-content img {
	margin-bottom: 30px;
}

.portfolio-modal .close-modal {
	position: absolute;
	top: 25px;
	right: 25px;
	width: 75px;
	height: 75px;
	background-color: transparent;
	cursor: pointer;
}

.portfolio-modal .close-modal:hover {
	opacity: .3;
}

.portfolio-modal .close-modal .lr {
	z-index: 1051;
	width: 1px;
	height: 75px;
	margin-left: 35px;
	background-color: #222;
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
}

.portfolio-modal .close-modal .lr .rl {
	z-index: 1052;
	width: 1px;
	height: 75px;
	background-color: #222;
	-webkit-transform: rotate(90deg);
	-ms-transform: rotate(90deg);
	transform: rotate(90deg);
}

.contact {
	font-family: 'Open Sans', sans-serif;
	padding: 4% 0;
	margin: 0 auto;
}

.contact h3 {
	font-style: normal;
	font-weight: 300;
	line-height: 1.8;
	color: #616569;
	letter-spacing: .03em;
	margin: 10px auto;
	font-size: 1.5em;
	padding: 2% 0;
}

footer {
	padding: 25px 0;
	text-align: center;
}

footer span.copyright {
	text-transform: uppercase;
	text-transform: none;
	font-family: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
	line-height: 40px;
}

footer ul.quicklinks {
	margin-bottom: 0;
	text-transform: uppercase;
	text-transform: none;
	font-family: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
	line-height: 40px;
}

ul.social-buttons {
	margin-bottom: 0;
}

ul.social-buttons li a {
	display: block;
	width: 40px;
	height: 40px;
	border-radius: 100%;
	font-size: 20px;
	line-height: 40px;
	outline: 0;
	color: #fff;
	background-color: #222;
	-webkit-transition: all .3s;
	-moz-transition: all .3s;
	transition: all .3s;
}

ul.social-buttons li a:hover, ul.social-buttons li a:focus, ul.social-buttons li a:active
	{
	background-color: #1ee2e7;
}

.btn:focus, .btn:active, .btn.active, .btn:active:focus {
	outline: 0;
}

</style>
<!-- jQuery Version 1.11.0 -->
<script src="https://raw.githubusercontent.com/IronSummitMedia/startbootstrap/gh-pages/templates/agency/js/jquery-1.11.0.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="https://raw.githubusercontent.com/IronSummitMedia/startbootstrap/gh-pages/templates/agency/js/bootstrap.min.js"></script>
<!-- Plugin JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="https://raw.githubusercontent.com/IronSummitMedia/startbootstrap/gh-pages/templates/agency/js/classie.js"></script>
<script src="https://raw.githubusercontent.com/IronSummitMedia/startbootstrap/gh-pages/templates/agency/js/cbpAnimatedHeader.js"></script>
<!-- Contact Form JavaScript -->
<script src="https://raw.githubusercontent.com/IronSummitMedia/startbootstrap/gh-pages/templates/agency/js/jqBootstrapValidation.js"></script>
<script src="https://raw.githubusercontent.com/IronSummitMedia/startbootstrap/gh-pages/templates/agency/js/contact_me.js"></script>
<body>
<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top navbar-shrink">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#intro">SK</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="hidden active"><a href="#page-top"></a></li>
					<li class=""><a class="page-scroll" href="#about">About</a></li>
					<li class=""><a class="page-scroll" href="#portfolio">Portfolio</a></li>
					<li class=""><a class="page-scroll" href="#contact">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<header>
		<div id="intro" class="intro">
			<h1>sangkyun kim</h1>
			<h2>software developer &amp; gamer</h2>
		</div>
	</header>

	<!-- about Section -->
	<section id="about"class="about">
		<div class="about-content">
			<h2>About</h2>
			<p>I am Sangkyun, a software developer from the state of California. I am happy when my code work stably. 
			I like a clear message. My favorite language is Java and Python.
			</p>
		</div>
	</section>
	
	<!-- portfolio Section -->
	<section id="portfolio" class="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Portfolio</h2>
					<h3 class="section-subheading text-muted">Lorem ipsum dolor
						sit amet consectetur.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal1" class="portfolio-link"
						data-toggle="modal"> <img
						src="https://sangkyun-kim15.github.io/assets/img/mine.png"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Minesweeper</h4>
						<p class="text-muted">Graphic Design</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal2" class="portfolio-link"
						data-toggle="modal"> <img
						src="https://sangkyun-kim15.github.io/assets/img/advanced1.png"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Image Colorizer</h4>
						<p class="text-muted">Website Design</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal3" class="portfolio-link"
						data-toggle="modal"> <img
						src="https://sangkyun-kim15.github.io/assets/img/chess.png"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Chess</h4>
						<p class="text-muted">Website Design</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal4" class="portfolio-link"
						data-toggle="modal"> <img
						src="https://sangkyun-kim15.github.io/assets/img/train.png"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Train Reservation System</h4>
						<p class="text-muted">Website Design</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal5" class="portfolio-link"
						data-toggle="modal"> <img
						src="${pageContext.request.contextPath}/resources/img/maze.png"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Maze on fire</h4>
						<p class="text-muted">Website Design</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal6" class="portfolio-link"
						data-toggle="modal"> <img
						src="https://unsplash.imgix.net/uploads%2F1411419068566071cef10%2F7562527b?q=75&w=1080&h=1080&fit=max&fm=jpg&auto=format&s=240c45655f09c546232a6f106688e502"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Dreams</h4>
						<p class="text-muted">Website Design</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- contact Section -->
	<section id="contact" class="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Contact Us</h2>
					<h3 class="section-subheading text-muted">Lorem ipsum dolor
						sit amet consectetur.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<form name="sentMessage" id="contactForm" novalidate="">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Your Name *" id="name" required=""
										data-validation-required-message="Please enter your name.">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input type="email" class="form-control"
										placeholder="Your Email *" id="email" required=""
										data-validation-required-message="Please enter your email address.">
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<textarea class="form-control" placeholder="Your Message *"
										id="message" required=""
										data-validation-required-message="Please enter a message."></textarea>
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-lg-12 text-center">
								<div id="success"></div>
								<button type="submit" class="btn btn-xl">Send Message</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	
	
	<a href="<%=request.getContextPath()%>/board/test.do">test</a>
	
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<span class="copyright">Copyright © Your Website 2014</span>
				</div>
				<div class="col-md-4">
					<ul class="list-inline social-buttons">
						<li><a href="https://www.facebook.com/sk.kim.58152"><i class="fa fa-facebook"></i></a></li>
						<li><a href="https://www.linkedin.com/in/sangkyunkim/"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="https://github.com/Sangkyun-Kim15"><i class="fa fa-github"></i></a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<ul class="list-inline quicklinks">
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Terms of Use</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<jsp:include page="./portfolio/work1.jsp" />
	<jsp:include page="./portfolio/work2.jsp" />
	<jsp:include page="./portfolio/work3.jsp" />
	<jsp:include page="./portfolio/work4.jsp" />
	<jsp:include page="./portfolio/work5.jsp" />
	<jsp:include page="./portfolio/work6.jsp" />
</body>
</html>