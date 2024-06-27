package test;

import java.util.List;

import dao.PostsDAO;
import model.Login;
import model.Post;

public class PostsDAOTest {

	public static void main(String[] args) {
//		testInsertByPostOK();
//		testInsertByPostNG();
		// findAllメソッドは全件出力のため、除外
		testFindByPostOK();
		testFindByPostNG();
	}
/*	public static void testInsertByPostOK() {
		Post post = new Post("mochi","mochi","mochi","mochi","mochi");
		PostsDAO dao = new PostsDAO();
		boolean result = dao.insertByPost(post);
		if(result) {
			System.out.println("testInsertByPostOK:成功しました");
		}else {
			System.out.println("testInsertByPostNG:失敗しました");
		}
	}
	public static void testInsertByPostNG() {
		Post post = new Post("SAMPLE","SAMPLE","SAMPLE","SAMPLE","SAMPLE");
		PostsDAO dao = new PostsDAO();
		boolean result = dao.insertByPost(post);
		if(!result) {
			System.out.println("testInsertByPostNG:成功しました");
		}else {
			System.out.println("testInsertByPostNG:失敗しました");
		}
	}*/
	public static void testFindByPostOK() {
		Login login = new Login ("USUSHIO", "1234");
		PostsDAO dao = new PostsDAO();
		List<Post> postList = dao.findByPost(login);
		if(postList != null) {
			System.out.println("testFindByPostOK:成功しました");
		}else {
			System.out.println("testFindByPostOK:失敗しました");
		}
	}
	public static void testFindByPostNG() {
		Login login = new Login ("pantsu", "1234");
		PostsDAO dao = new PostsDAO();
		List<Post> postList = dao.findByPost(login);
		if(postList == null) {
			System.out.println("testFindByPostNG:成功しました");
		}else {
			System.out.println("testFindByPostNG:失敗しました");
		}
	}
}