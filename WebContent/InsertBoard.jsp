<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="project.BoardDAO"%>
<%@ page import="project.BoardVO"%>
<%@ page import="java.util.List"%>


<%
	request.setCharacterEncoding("UTF-8");

	String b_title = request.getParameter("inp_title");
	String b_contents = request.getParameter("inp_contetns");
	int mem_code = (int) session.getAttribute("Usercode");

	BoardVO vo = new BoardVO(b_title, b_contents, mem_code);
	

BoardDAO dao = new BoardDAO();
dao.insert(vo);
response.sendRedirect("BoardMain.jsp");
%>


</script>