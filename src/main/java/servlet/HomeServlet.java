package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Login;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ログイン状態確認
		HttpSession session = request.getSession();
		Login userId = (Login)session.getAttribute("userId");

		if(userId == null) {
			response.sendRedirect("LogoutServlet");
		}else {
			// ほわああぁああぁぁあああぁ！！
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/home.jsp");
			dispatcher.forward(request, response);
		}
	}

}
