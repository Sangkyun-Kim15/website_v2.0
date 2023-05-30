<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
								src="${pageContext.request.contextPath}/resources/img/blog_img.png"
								alt="">
							<div class="about">
								<h3>About</h3>
								<p>This is a personal project. Java web application.</p>
							</div>
							<div class="built">
								<h3>Built</h3>
								<p>Java, Spring, Maven, JSTL, Jquuery, BootStrap, mybatis, MySQL, ApacheTomcat, Jenkins</p>
							</div>
							<ul class="list-inline">
								<li>Date: July 2014</li>
								<li>Category: Graphic Design</li>
							</ul>
							<button type="button" class="btn btn-xl"
								data-dismiss="modal">
								<i class="fa fa-times"></i> Close Project
							</button>&nbsp;
							<a href="<%=request.getContextPath()%>/board/select.do" target="_blank">Website</a>&nbsp;
							<a href="https://github.com/Sangkyun-Kim15/website_v2.0" target="_blank">Code</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>