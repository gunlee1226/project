<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="project.MemberDAO"%>
<%@page import="project.MemberVO"%>




<%
	request.setCharacterEncoding("UTF-8");

	String input_pwd_check = request.getParameter("input_pwd_check");

	String Upwd = (String)session.getAttribute("Userpwd");

	if(Upwd.equals(input_pwd_check)) {
		
		response.sendRedirect("mypageUpdate.jsp");
		
	} else {
%>
	<script>
	alert("비밀번호가 일치하지 않습니다.");
	location.href = "mypageForm.jsp"
	</script>
	
<%		
	} 


%>


<%-- <c:choose>
<c:when test= "${Upwd eq 'input_pwd_check'}">
<h1>맞음</h1>
</c:when>

<c:otherwise>
<h1>틀림</h1>

</c:otherwise>

</c:choose>

  --%>