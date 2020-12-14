<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="project.MemberDAO"%>
<%@ page import="project.MemberVO"%>

<%
	request.setCharacterEncoding("UTF-8");
	String mem_name = request.getParameter("mem_name");
	String mem_id = request.getParameter("mem_id");
	String mem_pwd = request.getParameter("mem_pwd");
	String mem_num = request.getParameter("mem_num");
	

	
	MemberDAO dao = new MemberDAO();
	MemberVO vo = dao.idcheck(mem_id); 
			
	if(vo == null) {
		System.out.println("사용가능한 아이디");
		
		 vo = new MemberVO(mem_name, mem_id, mem_pwd, mem_num);
		 dao.signup(vo);
		 response.sendRedirect("Main.jsp");
	}
	else {
%>
	<script>
		alert("현재 사용중인 아이디입니다.")
		location.href = "signupform.jsp"
		</script>
	<%
	}
	%>