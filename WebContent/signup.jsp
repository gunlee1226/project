<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="project.MemberDAO_so"%>
<%@ page import="project.MemberVO_so"%>

<% 
	request.setCharacterEncoding("UTF-8");
	String mem_name = request.getParameter("mem_name");
	String mem_id = request.getParameter("mem_id");
	String mem_pwd = request.getParameter("mem_pwd");
	String mem_num = request.getParameter("mem_num");
	
	MemberVO_so vo = new MemberVO_so(mem_name, mem_id, mem_pwd, mem_num);
	MemberDAO_so dao = new MemberDAO_so();
	
	dao.signup(vo);

	response.sendRedirect("Main.jsp");
	
%>
