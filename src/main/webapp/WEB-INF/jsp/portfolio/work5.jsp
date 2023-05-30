<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="portfolio-modal modal fade" id="portfolioModal5"
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
							<h2>MAZE ON FIRE</h2>
							<p class="item-intro text-muted">Lorem ipsum dolor sit amet
								consectetur.</p>
							<img class="img-responsive"
								src="${pageContext.request.contextPath}/resources/img/maze.png"
								alt="">
							<div class="about">
								<h3>About</h3>
								<p>This was the project from CS440 Intro Artificial Intelligence. Implementing a bot
								using DFS, BFS, and A* algorithms.</p>
							</div>
							<div class="built">
								<h3>Built</h3>
								<p>Python, NumPy</p>
							</div>
							<ul class="list-inline">
								<li>Date: July 2014</li>
								<li>Category: Graphic Design</li>
							</ul>
							<button type="button" class="btn btn-xl"
								data-dismiss="modal">
								<i class="fa fa-times"></i> Close Project
							</button>
							<a href="https://github.com/Norden-Tenzin/440ArtificialIntelligence/tree/master/MAZE%20ON%20FIRE" target="_blank">Code</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>