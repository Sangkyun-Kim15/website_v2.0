<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- jQuery Version 3.6.0 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
	<% 
	String type = request.getParameter("type");
	String url = "";
	if(type.equals("account")) {
		url += "/account/accountSelectPaging.do";
	} else if(type.equals("board")) {
		url += "/board/select.do";
	}
	%>
	
	<div class="pageInfo_wrap">
		<div class="pageInfo_area">
			<ul id="pageInfo" class="pageInfo">
				<!-- 이전페이지 버튼 -->
				<c:if test="${paging.prev}">
					<li class="pageInfo_btn previous"><a
						href="..<%=url%>?pageNum=${paging.startPage - 1}&amount=${paging.cri.amount}&keyword=${paging.cri.keyword}">Previous</a></li>
				</c:if>
	
				<!-- 각 번호 페이지 버튼 -->
				<c:forEach var="num" begin="${paging.startPage}"
					end="${paging.endPage}">
					<li class="pageInfo_btn"><a
						href="..<%=url%>?pageNum=${num}&amount=${paging.cri.amount}&keyword=${paging.cri.keyword}">${num}</a></li>
				</c:forEach>
	
				<!-- 다음페이지 버튼 -->
				<c:if test="${paging.next}">
					<li class="pageInfo_btn next"><a
						href="..<%=url%>?pageNum=${paging.endPage + 1 }&amount=${paging.cri.amount}&keyword=${paging.cri.keyword}">Next</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</body>
</html>