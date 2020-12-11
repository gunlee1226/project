<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="project.MemberDAO"%>
<%@page import="project.MemberVO"%>
<%MemberDAO dao = new MemberDAO(); %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String input_mem_id = request.getParameter("input_mem_id");
	String input_mem_pwd = request.getParameter("input_mem_pwd");


	MemberVO vo = dao.login(input_mem_id, input_mem_pwd);
	
	if(vo == null) {
		%>
	<script>alert("비밀번호가 일치하지 않습니다.")	
	location.href = "loginform.jsp"
		</script>

<%
	}
/* 세션에 저장 */
	else {
		session.setAttribute("Userid",input_mem_id);
		session.setAttribute("Userpwd", input_mem_pwd);
		session.setAttribute("Usercode", vo.getMem_code());
		session.setAttribute("Username", vo.getMem_name());
		session.setAttribute("Usernum", vo.getMem_num());
		session.setAttribute("Userrec", vo.getMem_rec());
		
		/*로그인 시 메인화면으로 이동 */
		response.sendRedirect("Main.jsp");
	
		}
		%>

