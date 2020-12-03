<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="signup.jsp" method="post">
		<input type="text" name="mem_name" placeholder="이름"><br>
		<input type="text" name="mem_id" placeholder="아이디"><br>
		<input type="password" name="mem_pwd" placeholder="비밀번호"><br>
		<input type="number" name="mem_num" placeholder="전화번호"><br>
		<input type="submit" value="회원가입">
	</form>
	<br>
</body>
</html>