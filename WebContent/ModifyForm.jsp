<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<style>

</style>
<meta charset="UTF-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="css/style.css" type="text/css">
	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>
<title>로그인</title>
</head>
<body style="text-align: center;">
	<header>
			<c:import url="WEB-INF/header.jsp"></c:import>
	</header>
	<form action="Modify.jsp" name="loginform" method="get" id="login-form">
		
		<div class = "container">
		<div class = "col-md-4">
			<input class="logincss" type="text" name="oneid" placeholder=" " 
			<%session.getAttribute("Userid"); %>><br> 
			<input class="logincss" type="password" name="onepwd" placeholder=" "><br>
			<input class="logincss" type="text" name="onename" placeholder=" " autofocus><br> 
			<input class="logincss" type="password" name="oneno" placeholder=" "><br>
		</div>
		</div>
		
		<div style="margin-top: 5%">
			<input class="loginbutton" type="submit" value="로그인 하기">
		</div>
	</form>
	<br>
	<div style="margin: -5px">
		<form action="signupform.jsp" method="post">
			<input class="loginbutton" type="submit" value="회원가입">
		</form>
	</div>
</body>
</html>