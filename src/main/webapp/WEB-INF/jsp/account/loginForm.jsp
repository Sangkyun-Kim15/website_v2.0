<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- jQuery Version 3.6.0 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!-- login.js file -->
<script type="text/javascript" src="../resources/js/account/login.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<div class="login">
		<form  id="lform" method="post" action="../account/login.do">
	    	<input type="text" name="username" id="username" placeholder="username" value="guest" required="required" />
	        <input type="password" name="password" id="password" placeholder="Password" required="required" />
	        <input type="button" value="Enter" id="log" class="btn btn-primary btn-block btn-large"></input>
	    </form>
	</div>
</body>
</html>