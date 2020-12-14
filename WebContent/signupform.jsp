<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
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

</head>
<body style = "text-align : center">
<!--  헤드 -->
	<c:import url="/WEB-INF/header.jsp"></c:import>
	<!-- 회원가입 -->
	<form action="signup.jsp" method="post">
		<div>
			<input class="logincss" type="text" name="mem_name" autofocus
				placeholder=" 이름을 입력하세요."><br> 
			<input class="logincss" type="text" name="mem_id" placeholder=" 아이디를 입력하세요.">
			<input class="logincss" type="password" name="mem_pwd" id="input1" placeholder=" 비밀번호.">
			
			<input class="logincss" type="password" name="mem_pwd1" id="input2" placeholder=" 비밀번호확인.">
				<div class="alert alert-success" id = "alert-success">비밀번호가 일치합니다</div>
				<div class="alert alert-danger" id = "alert-danger">비밀번호가 일치하지 않습니다</div>
			<input class="logincss" type="text" name="mem_num" placeholder=" 전화번호.">
		</div>
		<div style="margin-top: 5%">
			<input class="loginbutton" type="submit" value="회원가입 하기">
		</div>
	</form>
	<br>
	<div style="margin: -5px">
		<form action="loginform.jsp" method="post">
			<input class="loginbutton" type="submit" value="로그인">
		</form>
	</div>
	<br>
	</div>
</body>
</html>

<script>
$(function() {
	$("#alert-success").hide();
	$("#alert-danger").hide();
	$("input").focusout(function() {
		var pwd1 = $("#input1").val();
		var pwd2 = $("#input2").val();
		if(pwd1 != "" || pwd2 !="") {
			if(pwd1 == pwd2) {
				$("#alert-success").show();
				$("#alert-danger").hide();
				$("#submit").removeAttr("disabled");
			}
			else {
				$("#alert-success").hide();
				$("#alert-danger").show();
				$("#submit").attr("disabled", "disabled");
				
			}
		}
	})})
	

	
</script>