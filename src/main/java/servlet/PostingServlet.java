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
import model.Post;
import model.PostLogic;

/**
 * Servlet implementation class PostingServlet
 */
@WebServlet("/PostingServlet")
public class PostingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ログイン状態確認
		HttpSession session = request.getSession();
		Login login = (Login)session.getAttribute("userId");

		if(login == null) {
			response.sendRedirect("LogoutServlet");
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/posting.jsp");
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 投稿できたならほわああぁああぁぁあああぁ！
		// できなかったらリダイレクト
		// 投稿準備
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String game = request.getParameter("game");
		String genre = request.getParameter("genre");
		String content = request.getParameter("content");
		String userId = request.getParameter("userId");

		// 投稿処理
		Post post = new Post(name, game, genre, content, userId);
		PostLogic bo = new PostLogic();
		boolean result = bo.execute(post);

		// 投稿結果
		if(result) {// OK
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/postingOK.jsp");
			dispatcher.forward(request, response);
		} else {// NG
			response.sendRedirect("PostingServlet");
		}
	}

}
