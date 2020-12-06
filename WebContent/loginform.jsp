<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="project.MemberDAO"%>
<%MemberDAO dao = new MemberDAO();%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form action="login.jsp" method="post">
		아이디: <input type="text" name="input_mem_id"><br> 
		비밀번호: <input type="password" name="input_mem_pwd"><br> 
		<input type="submit" value="로그인 하기">
	</form>
	<br>

</body>
</html>