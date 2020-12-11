<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<style>
@import url("css/recs.css");
</style>
<meta charset="UTF-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="img/core-img/favicon.ico">
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
		<c:import url="/WEB-INF/header.jsp"></c:import>
	</header>
	<form action="delete" name="loginform" method="get" id="login-form">
		
		<div>
			<input class="logincss" type="text" name="input_mem_id" placeholder=" 아이디를 입력하세요." autofocus><br> 
			<input class="logincss" type="password" name="input_mem_pwd" placeholder=" 비밀번호를 입력하세요."><br>
			<input type="hidden" name="a" value="delete" />
		</div>
		
		
		<div style="margin-top: 5%">
			<input class = "loginbutton" type="submit" value="삭제하기">
		</div>
	</form>
	<br>
	<div style="margin: -5px">
		<form action="signupform.jsp" method="post">
			<input class="loginbutton" type="submit" value="회원가입">
		</form>
		
	</div>
	
	
									<c:choose>
									<c:when test="${fa ==null }">
									
									</c:when>
									<c:otherwise>
									
									<c:when test="${fa == 0 }">
									
									
									<script type="text/javascript">

  												alert("아이디가없습니다.");

											</script>
									
										</c:when>
									</c:otherwise>
						
						
						
								</c:choose>
</body>
</html>