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
<link rel="stylesheet" href="./resources/css/main.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- jQuery Version 3.6.0 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!-- get_context_path.js file -->
<script type="text/javascript" src="./resources/js/include/get_context_path.js"></script>
<script type="text/javascript" src="./resources/js/contact/contact.js"></script>
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
				<a class="navbar-brand page-scroll" href="#intro" style="color: rgb(84, 82, 82)">SK</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="hidden active"><a href="#page-top"></a></li>
					<li class=""><a class="page-scroll" href="#about" style="color: rgb(84, 82, 82)">About</a></li>
					<li class=""><a class="page-scroll" href="#portfolio" style="color: rgb(84, 82, 82)">Portfolio</a></li>
					<li class=""><a class="page-scroll" href="#contact" style="color: rgb(84, 82, 82)">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<header>
		<div id="intro" class="intro">
			<h1>sangkyun kim</h1>
			<h2>software developer &amp; Cinéphile</h2>
		</div>
	</header>

	<!-- about Section -->
	<section id="about"class="about">
		<div class="about-content">
			<h2>About</h2>
			<p>I am Sangkyun, a software developer from the state of California. I got B.S. computer science at Rutgers University. I am happy when my code work stably. I love to learn new things regarding computer science.
			My favorite language is Java and Python. I am interested in back-end. Recently, I set up my home server for testing web application and learning Linux system . I love to watch movies. I have watched more
			than 1000 movies. Playing classic computer game is one of my hobbies.
			</p>
		</div>
	</section>
	
	
	<!-- portfolio Section -->
	<section id="portfolio" class="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Portfolio</h2>
					<h3 class="section-subheading text-muted">This is my previous work.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal6" class="portfolio-link"
						data-toggle="modal"> <img
						src="./resources/img/blog_img.png"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Personal web site</h4>
						<p class="text-muted">Java web project</p>
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
						<p class="text-muted">Python project</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal1" class="portfolio-link"
						data-toggle="modal"> <img
						src="https://sangkyun-kim15.github.io/assets/img/mine.png"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Minesweeper</h4>
						<p class="text-muted">Python project</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal5" class="portfolio-link"
						data-toggle="modal"> <img
						src="./resources/img/maze.png"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Maze on fire</h4>
						<p class="text-muted">Python project</p>
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
						<p class="text-muted">Java Web project</p>
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
						<p class="text-muted">Java and Python project</p>
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
				<h3 class="section-subheading text-muted">For more information...</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Your Name *" id="name" maxlength='50' required>
							<p class="help-block text-danger"></p>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" placeholder="Your Email *" id="email" maxlength='50' required>
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<textarea class="form-control" placeholder="Your Message *" id="message" maxlength='500' required></textarea>
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="col-lg-12 text-center">
						<div id="success"></div>
						<button class="btn btn-xl" onclick="sendMessage()">Send Message</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<div id="responseMessage"></div>

	
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<span class="copyright">Copyright © Your Website 2023</span>
				</div>
				<div class="col-md-4">
					<ul class="list-inline social-buttons">
						<li><a href="https://www.facebook.com/sk.kim.58152"><img class="sns-img" src="https://cdn.pixabay.com/photo/2017/06/22/06/22/facebook-2429746_960_720.png"></a></li>
						<li><a href="https://www.linkedin.com/in/sangkyunkim/"><img class="sns-img" src="https://cdn.pixabay.com/photo/2017/11/10/05/05/linkedin-2935407_960_720.png"></a></li>
						<li><a href="https://github.com/Sangkyun-Kim15"><img class="sns-img" src="https://cdn.pixabay.com/photo/2022/01/30/13/33/github-6980894_960_720.png"></a></li>
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