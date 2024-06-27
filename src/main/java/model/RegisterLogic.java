package model;

import dao.AccountsDAO;

public class RegisterLogic {
	public boolean execute(Register register) {
		AccountsDAO dao = new AccountsDAO();
		boolean result = dao.insertByRegister(register);
		return result;
	}
}