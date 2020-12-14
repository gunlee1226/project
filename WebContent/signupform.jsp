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
			<!-- 이름 입력 부분 -->
			<input class="logincss" type="text" name="mem_name" autofocus
				placeholder=" 이름을 입력하세요."><br> 
				<div class="alert alert-success" id = "alert-success_n" >올바르게 입력되었습니다</div>
				<div class="alert alert-danger" id = "alert-danger_n">공백 없이 입력해주세요</div>
				<div class="alert alert-warning" id = "alert-warning-n" >한글 2~10자를 입력해주세요</div>
				
				<!-- 아이디 입력 부분 -->
			<input class="logincss" type="text" name="mem_id" id = "mem_id" maxlegnth = "12" placeholder=" 아이디를 입력하세요.">
				<div class="alert alert-success" id = "alert-success_id1" >id에 공백없이 영문 4~12자를 입력해주세요</div>
				<div class="alert alert-danger" id = "alert-danger_id">id를 다시입력하세요 영문 4~12자</div>
				<div class="alert alert-warning" id = "alert-success_id2" >영문 4~12자를 입력해주세요</div>
			
			<input class="logincss" type="password" name="mem_pwd" id="input1" maxlegnth = "15"  placeholder=" 비밀번호.">
			
			<input class="logincss" type="password" name="mem_pwd1" id="input2" maxlegnth = "15"  placeholder=" 비밀번호확인.">
				<div class="alert alert-success" id = "alert-success">비밀번호가 일치합니다</div>
				<div class="alert alert-danger" id = "alert-danger">비밀번호가 일치하지 않습니다</div>
				<p>'-'를 제외한 숫자만 입력하세요!</p>
			<input class="logincss" type="text" name="mem_num" id = "phnum" maxlegnth = "11" placeholder=" 전화번호.">
			<div class="alert alert-warning" id = "alert-warning">휴대푠 번호를 정확히 입력해 주세요</div>
		</div>
		<div style="margin-top: 5%">
			<input class="loginbutton" type="submit" intput ="submit" value="회원가입 하기">
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
	})});
	
	
	$(function func() {
		$("#alert-warning").hide();
		$("#phnum").keyup(function func() {
			var pnum = $("#phnum").val();
			if(isNaN(pnum) == true) {
			$("#alert-warning").show();
			
		}
			else {
				$("#alert-warning").hide();
			}
			})});
			
	$(function check() {
// input name 초기값 hide
		$("#alert-success_n").hide();
		$("#alert-danger_n").hide();
		$("#alert-warning-n").hide();
// input id 초기값 hide		
		$("#alert-success_id1").hide();
		$("#alert-danger_id").hide();
		$("#alert-success_id2").hide();
		
		var regexp = /^[a-zA-Z0-0]{4,12}$/;
		var n_regexp = /^[가-힣]{2,15}$/;
		
		$("#mem_id").keyup(function check() {
		var c_id = $("#mem_id").val();
		
		if(c_id == "" || c_id == " ") {
			$("#alert-success_id1").show();
			$("#alert-danger_id").hide();
			$("#alert-success_id2").hide();
			return false;
			}
		else if (!regexp.test(c_id)) {
			$("#alert-success_id1").hide();
			$("#alert-danger_id").show();
			$("#alert-success_id2").hide();
		}
		else {
			$("#alert-success_id1").hide();
			$("#alert-danger_id").hide();
			$("#alert-success_id2").show();
		}
		})
		});
	
	
</script>