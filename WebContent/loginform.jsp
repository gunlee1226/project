<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/style.css" type="text/css">
	
<meta charset="UTF-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>로그인</title>
</head>
<body style="text-align: center;">
	<header>
	<c:import url="/WEB-INF/header.jsp"></c:import>
	
	
	</header>
	<form action="login.jsp" method="post">
		<div>
			<input class="logincss" type="text" name="input_mem_id"
				placeholder=" 아이디를 입력하세요."><br> 
				<input class="logincss"
				type="password" name="input_mem_pwd" placeholder=" 비밀번호를 입력하세요."><br>
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