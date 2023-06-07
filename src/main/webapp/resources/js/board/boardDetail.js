function boardDetail(input) {
	let data;
	let username;
	let role;
	let pageNum;
	let amount;
	let keyword;
	
	username = document.getElementById("username").value;
	role = document.getElementById("role").value;
	pageNum = document.getElementById("pageNum").value;
	amount = document.getElementById("amount").value;
	keyword = document.getElementById("keyword").value;
	
	console.log("username??? : " + username);
	if(input == null || input == "-1") {
		data = document.getElementById("boardNo").value;
	} else {
		data = input;
	} 
	
	$.ajax({
		type: "get",
		url: "../board/detail.json",
		dataType: "json",
		data: {
				"boardNo": `${data}`
			  }
	})
	.done(function(response) {
		let html = "";
		html += "<div class='blog-container'>";
		html += 	"<div class='blog-header'>";
		html += 		"<div class='blog-cover'>";
		html += 			"<div class='blog-writer'>";
		html += 				"<h4>"+ response.writer +"</h4>";
		html += 			"</div>";
		html += 		"<div class='blog-body'>";
		html += 			"<div class='blog-title'>";
		html += 				"<h1>"+ response.title  +"</h1>";
		html += 			"</div>";
		html += 		"</div>";
		html += 	"</div>";
		html += 	"<hr>";
		
		html += 		"<div class='blog-content'>";
		html += 			"<p>"+ response.content +"</p>";
		html += 		"</div>";
		html += 	"</div>";
		html += 	"<hr>";
		
		html += 	"<div class='blog-footer'>";
		html += 		"<ul>";
		html += 			"<li class='published-date'><h5>"+ response.regDate +"</h5></li>";
		if(username == response.writer || role == "ADMIN") {
			html += 		"<li class='board_update'><a href=../board/updateForm.do?boardNo="+ data +"&pageNum=" + pageNum +"&amount=" + amount +"&keyword=" + keyword +">Update</a></li>&nbsp&nbsp";
			html += 		"<li class='board_delete'><a href=../board/delete.do?boardNo="+ data +"&pageNum=" + pageNum +"&amount=" + amount +"&keyword=" + keyword +">Delete</a></li>";
			
		} else {
			html += 		"<li></li>";
			html += 		"<li></li>";
		}
		html += 		"</ul>";
		html += 		"<br>";
		if(username != "") {
			html += 	"<form method='post' action='../comment/insert.do'>";
			html += 		"<input type='hidden' name='bId' value='"+ data + "'class='form-control'/>";
			html += 		"<input type='hidden' name='pageNum' value='"+ pageNum + "'class='form-control'/>";
			html += 		"<input type='hidden' name='amount' value='"+ amount + "'class='form-control'/>";
			html += 		"<input type='hidden' name='keyword' value='"+ keyword + "'class='form-control'/>";
			html += 		"<input type='text' class='comment_text' name='content' maxlength='200' placeholder='200 characters only'></input>&nbsp&nbsp";
			html += 		"<input type='hidden' name='user' class='form-control' value='"+ username +"'/>";
			html += 		"<button type='submit' class='cmt-add-btn' id='cmt_reg_btn'> add</button>";
			html += 	"</form>";
		}
		html += 	"</div>";
		html += "</div>";
		
		$("#detail_wrap").html(html);
	});
};