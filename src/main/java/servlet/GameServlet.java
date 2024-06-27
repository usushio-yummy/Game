package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.GetPostListLogic;
import model.Login;
import model.Post;

/**
 * Servlet implementation class GameServlet
 */
@WebServlet("/GameServlet")
public class GameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 投稿内容をリクエストスコープに保存
		GetPostListLogic getPostListLogic = new GetPostListLogic();
		List<Post> postList = getPostListLogic.execute();
		request.setAttribute("postList", postList);

		// ログイン状態確認
		HttpSession session = request.getSession();
		Login login = (Login)session.getAttribute("userId");

		if(login == null) {
			response.sendRedirect("LogoutServlet");
		}else {
			// ほわああぁああぁぁあああぁ！！
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/game.jsp");
			dispatcher.forward(request, response);
		}
	}
}
