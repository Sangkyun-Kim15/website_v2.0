<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Portfolio</title>
</head>
<body>
	<div class="portfolio-modal modal fade" id="portfolioModal4"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<div class="modal-body">
							<!-- Project Details Go Here -->
							<h2>TRAIN RESERVATION SYSTEM</h2>
							<p class="item-intro text-muted">Lorem ipsum dolor sit amet
								consectetur.</p>
							<img class="img-responsive"
								src="https://sangkyun-kim15.github.io/assets/img/train.png"
								alt="">
							<div class="about">
								<h3>About</h3>
								<p>This was the project from CS335 Principles of Information and Data Management. 
								The goal was to implement a train reservation web application in Java.</p>
								<h4>Account functionality</h4>
								<p>Register, login, logout</p>
								<h4>Browsing and search functionality</h4>
								<p>Search schedule by condition, sort by different criteria</p>
								<h4>Reservations</h4>
								<p>Make a reservation for a specific route, Get discount, Cancel reservation, View reservation history</p>
								<h4>Admin functions</h4>
								<p>Manage information, Sales report per month, list of reservations by specific condition,
								list of revenue per line or customer</p>
								<h4>Customer representative</h4>
								<p>edit train schedule, manage customer’s questions</p>
							</div>
							<div class="built">
								<h3>Built</h3>
								<p>Java, JSTL, MySQL, Tomcat, AWS EC2, RDS</p>
							</div>
							<ul class="list-inline">
								<li>Date: 2020</li>
							</ul>
							<button type="button" class="btn btn-xl"
								data-dismiss="modal">
								<i class="fa fa-times"></i> Close Project
							</button>
							<a href="https://github.com/Sangkyun-Kim15/Principles-of-Information-and-Data-Management" target="_blank">Code</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>