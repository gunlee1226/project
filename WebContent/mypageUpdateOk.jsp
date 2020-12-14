<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="project.MemberDAO"%>
<%@page import="project.MemberVO"%>


<%
request.setCharacterEncoding("UTF-8");
// 세션에 저장된 id받아오기
String id = (String)session.getAttribute("Userid");
// 입력된 값 받아오기
int mem_code = (int) session.getAttribute("Usercode");
String new_pwd = request.getParameter("new_pwd");
String new_pwd2 = request.getParameter("new_pwd2");
String new_num = request.getParameter("new_num");


MemberDAO dao = new MemberDAO();



if(new_pwd.equals(new_pwd2)) {
	 dao.update(mem_code, new_pwd, new_num, id);
	
%>
 <script>
 
 alert("정상적으로 변경되었습니다");

 location.href = "logout.jsp";
 </script>
	
<%	
	

} else {
%>
<script>
alert("정상적으로 등록되지 않았습니다");
location.href = "mypageUpdate.jsp";
</script>

<%	
}

%>

