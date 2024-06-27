package test;

import model.GetPostListLogic;

public class GetPostListLogicTest {

	public static void main(String[] args) {
		testExecuteOK();
	}
	public static void testExecuteOK() {
		GetPostListLogic bo = new GetPostListLogic();
		bo.execute();
	}
}
