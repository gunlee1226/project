package project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.MemberDAO;
import project.MemberVO;


@WebServlet("/memberServlet")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MemberServlet() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String actionName =request.getParameter("a");
		System.out.println("user:" + actionName);
		
		if("loginform".equals(actionName)){
			
			RequestDispatcher rd = request.getRequestDispatcher("loginform.jsp");
			rd.forward(request, response);
			
		} else if("login".equals(actionName)){
			String input_mem_id = request.getParameter("input_mem_id");
			String input_mem_pwd =request.getParameter("input_mem_pwd");
			
			MemberDAO dao = new MemberDAO();
			MemberVO vo = dao.login(input_mem_id, input_mem_pwd);
			
			if(vo==null) {
				System.out.println("실패");
				response.sendRedirect("/memberServlet?a=loginform&result=fail");
			} else {
				System.out.println("성공");
				HttpSession session = request.getSession(true);
				session.setAttribute("User", vo);
				
				response.sendRedirect("Main.jsp");
				return;
			}
			
			
		} else if("logout".equals(actionName)){
			HttpSession session = request.getSession();
			session.removeAttribute("User");
			session.invalidate();
			response.sendRedirect("/project/loginform");
			
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("Main.jsp");
			rd.forward(request, response);
		}
		}


	}


