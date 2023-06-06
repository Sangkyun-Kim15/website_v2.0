<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl c tag -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- jQuery Version 3.6.0 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!-- 
<script src="//cdn.ckeditor.com/4.20.1/full/ckeditor.js"></script>
 -->
<script type="text/javascript" src="../resources/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="../resources/js/board/content_limit.js"></script>
</head>
<body>
	<jsp:include page="../include/menu.jsp" />
	<h2>Adding</h2>
	<form method="post" action="../board/insert.do">
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-2 col-form-label">Title</label>
			<div class="col-sm-10">
				<input type="text" name="title" class="form-control" placeholder="Title">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-2 col-form-label">Writer</label>
			<div class="col-sm-10">
				 <input type="text" name="writer" class="form-control" value="${sessionScope.username}" readonly="readonly"/>
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-2 col-form-label">Content</label>
			<div class="col-sm-10">
				<textarea id="content" name="content"></textarea>
					
			</div>
		</div>
		<div class="form-group row">
    		<div class="col-sm-10">
    			<button type="submit" class="btn btn-primary">Add</button>
    		</div>
    	</div>
	</form>
	<script type="text/javascript">
		CKEDITOR.replace('content', {filebrowserUploadUrl: "board/imageUpload.do"});
	</script>
</body>
</html>