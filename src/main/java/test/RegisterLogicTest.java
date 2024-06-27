package test;

import model.Register;
import model.RegisterLogic;

public class RegisterLogicTest {

	public static void main(String[] args) {
		testExecuteOK();
		testExecuteNG();
	}
	public static void testExecuteOK() {
		Register register = new Register("POTATO", "1234");
		RegisterLogic bo = new RegisterLogic();
		boolean result = bo.execute(register);
		if(result) {
			System.out.println("testExecuteOK:成功しました");
		} else {
			System.out.println("testExecuteOK:失敗しました");
		}
	}
	public static void testExecuteNG() {
		Register register = new Register("USUSHIO", "1234");
		RegisterLogic bo = new RegisterLogic();
		boolean result = bo.execute(register);
		if(!result) {
			System.out.println("testExecuteNG:成功しました");
		} else {
			System.out.println("testExecuteNG:失敗しました");
		}
	}

}
