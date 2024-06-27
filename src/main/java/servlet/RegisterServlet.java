package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Register;
import model.RegisterLogic;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 登録失敗によるリダイレクト、またはaタグクリック時にGet処理を行う。
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/register.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 登録ボタン押下時にこちらへ。駄目だった場合はリダイレクトをさせる。
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("userId");
		String pass = request.getParameter("pass");

		// 登録処理
		Register register = new Register(userId, pass);
		RegisterLogic bo = new RegisterLogic();
		boolean result = bo.execute(register);

		// 登録できたらほわああぁああぁぁあああぁ！！
		if(result) {// 成功
			// ほわああぁああぁぁあああぁ！！！
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/registerOK.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("RegisterServlet");
		}
	}
}