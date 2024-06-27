package test;

import dao.AccountsDAO;
import model.Login;
import model.Register;

public class AccountsDAOTest {

	public static void main(String[] args) {
		testFindByLoginOK();
		testFindByLoginNG();
		testInsertByRegisterOK();
		testInsertByRegisterNG();
	}
	public static void testFindByLoginOK() {
		Login login = new Login("USUSHIO", "1234");
		AccountsDAO dao = new AccountsDAO();
		Login result = dao.findByLogin(login);
		if(result != null && result.getUserId().equals("USUSHIO") &&
				result.getPass().equals("1234")) {
			System.out.println("testFindByLoginOK:成功しました");
		} else {
			System.out.println("testFindByLoginOK:失敗しました");
		}
	}
	public static void testFindByLoginNG() {
		Login login = new Login("USUSHIO", "12345");
		AccountsDAO dao = new AccountsDAO();
		Login result = dao.findByLogin(login);
		if(result == null) {
			System.out.println("testFindByLoginNG:成功しました");
		} else {
			System.out.println("testFindByLoginNG:失敗しました");
		}
	}
	public static void testInsertByRegisterOK() {
		Register register = new Register("Usushio", "1234");
		AccountsDAO dao = new AccountsDAO();
		boolean result = dao.insertByRegister(register);
		if(result == true) {
			System.out.println("testInsertByRegisterOK:成功しました");
		} else {
			System.out.println("testInsertByRegisterOK:失敗しました");
		}
	}
	public static void testInsertByRegisterNG() {
		Register register = new Register("USUSHIO", "12345");
		AccountsDAO dao = new AccountsDAO();
		boolean result = dao.insertByRegister(register);
		if(result == false) {
			System.out.println("testInsertByRegisterNG:成功しました");
		} else {
			System.out.println("testInsertByRegisterNG:失敗しました");
		}
	}
}