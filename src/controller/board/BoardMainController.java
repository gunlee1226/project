package controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.BoardDAO;
import project.BoardVO;

@WebServlet("/boardMain")
public class BoardMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		BoardDAO dao = new BoardDAO();

		List<BoardVO> list = dao.getList();

		request.setAttribute("list", list);

		request.getRequestDispatcher("/WEB-INF/view/board/boardMain.jsp").forward(request, response);
	}

}
