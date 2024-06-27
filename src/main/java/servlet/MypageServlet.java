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

import model.GetMyPostListLogic;
import model.Login;
import model.Post;

/**
 * Servlet implementation class MypageServlet
 */
@WebServlet("/MypageServlet")
public class MypageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// ログイン状態の確認
		HttpSession session = request.getSession();
		Login login = (Login)session.getAttribute("userId");

		if(login == null) {
			response.sendRedirect("LogoutServlet");
		}else {
			// 自分の投稿内容をリクエストスコープに保存
			GetMyPostListLogic getMyPostListLogic = new GetMyPostListLogic();
			List<Post> postList = getMyPostListLogic.execute(login);
			request.setAttribute("postList", postList);

			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/mypage.jsp");
			dispatcher.forward(request, response);
		}

	}

}
