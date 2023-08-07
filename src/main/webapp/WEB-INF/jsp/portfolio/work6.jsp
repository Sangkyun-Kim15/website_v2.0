<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Portfolio</title>
<script type="text/javascript">
</script>
</head>
<body>
	<div class="portfolio-modal modal fade" id="portfolioModal6"
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
							<h2>Blog</h2>
							<p class="item-intro text-muted">Java web application</p>
							<img class="img-responsive"
								src="./resources/img/blog_img.png"
								alt="">
							<div class="about">
								<h3>About</h3>
								<p>This is a personal project. Java web application. This is version 2.0.
								In this version, I set the domain and the home server for the hosting and the DB.
								Also, I used Jenkins and set the pipeline for CI/CD.
								</p>
								<br/>
								<p>The next version is in progress. In this version, I plan to use use React to explore new skills in javascript.</p>
								<h4>Features</h4>
								<p>Posting, comment, reply, searching, paging, and admin page to manage all the data in the blog</p>
							</div>
							<div class="built">
								<h3>Built</h3>
								<p>Java, Spring Framework, Maven, Jquery, BootStrap, mybatis, MySQL, ApacheTomcat, Jenkins, CSS, HTML, Junit, Mockito</p>
							</div>
							<ul class="list-inline">
								<li>Date: 2023</li>
							</ul>
							<button type="button" class="btn btn-xl"
								data-dismiss="modal">
								<i class="fa fa-times"></i> Close Project
							</button>&nbsp;
							<a href="./board/select.do" target="_blank">Website</a>&nbsp;
							<a href="https://github.com/Sangkyun-Kim15/website_v2.0" target="_blank">Code</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>