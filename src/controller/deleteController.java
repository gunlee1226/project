package controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.MemberDAO;
import project.MemberVO;


@WebServlet("/delete")
public class deleteController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String actionName = request.getParameter("a");

		if ("delete".equals(actionName)) {

		String mem_id_d = request.getParameter("input_mem_id");
		String mem_pwd_d = request.getParameter("input_mem_pwd");
		String mem_name = request.getParameter("input_mem_name");
		
		MemberVO vo = new MemberVO(mem_id_d, mem_pwd_d, mem_name);

		
		MemberDAO member = new MemberDAO();


		int count = member.delete(vo);
		
		if (count == 0) {
			
			request.setAttribute("fa", 0);
			request.getRequestDispatcher("/delete.jsp").forward(request, response);

		}
		else
		// forward
		System.out.println("삭제완료");
	}

	else

		request.getRequestDispatcher("/delete.jsp").forward(request, response);

}
}
