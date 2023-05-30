<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
	<form style="float: right" method="post" action="<%=request.getContextPath()%><%=url %>">
		<input type="text" class="search-input" name="keyword" value="${paging.cri.keyword}">
		<button class="search-btn" type="submit">Search</button>
	</form>
</body>
</html>