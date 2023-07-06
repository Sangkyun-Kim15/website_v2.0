<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Portfolio</title>
</head>
<body>
	<div class="portfolio-modal modal fade" id="portfolioModal2"
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
							<h2>IMAGE COLORIZER</h2>
							<p class="item-intro text-muted">Lorem ipsum dolor sit amet
								consectetur.</p>
							<img class="img-responsive"
								src="https://sangkyun-kim15.github.io/assets/img/advanced1.png"
								alt="">
							<div class="about">
								<h3>About</h3>
								<p>This was the project from CS440 Intro Artificial Intelligence. 
								The goal was to convert greyscale images to two colorized versions of images 
								by using K-means clustering and neural networks.</p>
								<h4>K-means clustering verion (Basic agent)</h4>
								<p>Select 5 random pixels for grouping.
								Grouping was based on the distance between the target pixel and each centroid.
								Using euclidean distance to calculate the distance.</p>
								<h4>Neural Networks version (Advanced agent)</h4>
								<p>A Feed-Forwarding 3 layers neural networks. 
								9 nodes in the input layer (3x3 patch = 9 pixels).
								5 nodes in the hidden layer.
								3 nodes in the output layer (pixel has R, G, B).
								Using sigmoid function as activation function.</p>
							</div>
							<div class="built">
								<h3>Built</h3>
								<p>Python, NumPy</p>
							</div>
							<ul class="list-inline">
								<li>Date: 2021</li>
							</ul>
							<button type="button" class="btn btn-xl"
								data-dismiss="modal">
								<i class="fa fa-times"></i> Close Project
							</button>
							<a href="https://github.com/Norden-Tenzin/440ArtificialIntelligence/tree/master/COLORIZE" target="_blank">Code</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>