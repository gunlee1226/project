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
<title>회원정보수정</title>
</head>
<body style="text-align: center;">
	<header>
			<c:import url="WEB-INF/header.jsp"></c:import>
	</header>
	<form action="mypageUpdateOk.jsp" name= "mypageForm" method="post" id="mypageForm">
		<h5>회원정보수정</h5>
		<div>
		<table width="100%">
		<tr>
		<td>이름</td>
		<td><input class="logincss" type="text" value="${Username}" readonly></input></td>
		</tr>
		<tr>
		<td>아이디</td>
		<td><input class="logincss" type="text" value="${Userid}" readonly></td>
		</tr>
		<tr>
		<td>비밀번호</td>
		<td><input class="logincss" type="password" name="new_pwd" id="pw" placeholder="비밀번호를 입력하세요." autofocus></td>
		</tr>
		<tr>
		<td>비밀번호 확인</td>
		<td><input class="logincss" type="password" name="new_pwd2" id="pwCheck" placeholder="비밀번호를 입력하세요."></td>
		</tr>
		<tr>
		
		<th colspan="2">
		<div class="alert alert-success" id = "alert-success">비밀번호가 일치합니다</div>
		<div class="alert alert-danger" id = "alert-danger">비밀번호가 일치하지 않습니다</div>
		</th>
		</tr>
		<tr>
		<td>전화번호</td>
		<td><input class="logincss" type="text" name="new_num" value="${Usernum}"></td>
		</tr>
	
		</table>
			
		</div>
	
		<div style="margin-top: 5%">
			<!-- mypageUpdateOk로 이동 -->
			<form action = "mypageUpdateOK.jsp" method="post"></form>
			<input class="loginbutton" type="submit" value="회원정보수정"> &nbsp; &nbsp;
			</form>
			<!-- 회원탈퇴페이지로 이동 -->
			<form action="delete.jsp" method="post">
			<input class="loginbutton" type="submit" value="회원탈퇴">
			</form>
		</div>
		
	</form>
	
	</div>
</body>

<script>
$(function() {
	$("#alert-success").hide();
	$("#alert-danger").hide();
	$("input").keyup(function() {
		var pwd1 = $("#pw").val();
		var pwd2 = $("#pwCheck").val();
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


</html>