package test;

import model.Post;
import model.PostLogic;

public class PostLogicTest {

	public static void main(String[] args) {
		testPostLogicOK();
		testPostLogicNG();
	}
	public static void testPostLogicOK() {
		Post post = new Post("nekonoki","nekonoki","nekonoki","nekonoki","nekonoki");
		PostLogic bo = new PostLogic();
		boolean result = bo.execute(post);
		if(result) {
			System.out.println("testPostLogicOK:成功しました");
		}else {
			System.out.println("testPostLogicOK:失敗しました");
		}
	}

	public static void testPostLogicNG() {
		Post post = new Post("mochi","mochi","mochi","mochi","mochi");
		PostLogic bo = new PostLogic();
		boolean result = bo.execute(post);
		if(!result) {
			System.out.println("testPostLogicNG:成功しました");
		}else {
			System.out.println("testPostLogicNG:失敗しました");
		}
	}

}
