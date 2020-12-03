<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="project.MemberDAO"%>
<%@ page import="project.MemberVO"%>
<%MemberDAO dao = new MemberDAO();%>

<%
	request.setCharacterEncoding("UTF-8");

	String input_mem_id = request.getParameter("input_mem_id");
	String input_mem_pwd = request.getParameter("input_mem_pwd");
	boolean login = dao.login(input_mem_id, input_mem_pwd);
	
	if(login == true) response.sendRedirect("Main.jsp");
	else response.sendRedirect("loginform.jsp");
		
%>
