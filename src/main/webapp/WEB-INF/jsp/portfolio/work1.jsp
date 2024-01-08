<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Portfolio</title>
</head>
<body>
	<div class="portfolio-modal modal fade" id="portfolioModal1"
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
							<h2>Minesweeper</h2>
							<p class="item-intro text-muted">Python Application</p>
							<img class="img-responsive"
								src="https://sangkyun-kim15.github.io/assets/img/mine.png"
								alt="">
							<div class="about">
								<h3>About</h3>
								<p>This was the project from CS440 Intro Artificial Intelligence. 
								The goal was to create a bot that can play minesweeper.</p>
								<h4>Basic Agent</h4>
								<p>The basic agent cannot infer. It only plays the safest moves possible. 
								If no hidden cell can be identified as a mine or safe, it randomly pick a cell to reveal.</p>
								<h4>Advances Agent</h4>
								<p>This was the project from CS440 Intro Artificial Intelligence. 
								The goal was to create a bot that can play minesweeper.</p>
								<h4>Bonus Advances Agent</h4>
								<p>If no hidden cell can be identified as a mine or safe, it picks a cell to reveal based on probability. 
								Calculate all the possible scenarios based on the knowledge by using combination and product.
								Compute the probability of each cell those in the equations in knowledge
								(number of cells showing up in the scenario/number of total scenario).</p>
							</div>
							
							<h3>Built</h3>
							<p>Python, Pygame, NumPy</p>
							<ul class="list-inline">
								<li>Date: July 2021</li>
							</ul>
							<button type="button" class="btn btn-xl"
								data-dismiss="modal">
								<i class="fa fa-times"></i> Close Project
							</button>
							<a href="https://github.com/Norden-Tenzin/440ArtificialIntelligence/tree/master/MINESWEEPER" target="_blank">Code</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>