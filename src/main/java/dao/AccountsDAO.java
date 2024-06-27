package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Login;
import model.Register;

public class AccountsDAO {
	private final String JDBC_URL = "jdbc:h2:tcp://localhost/~/Game";
	private final String DB_USER = "sa";
	private final String DB_PASS = "";

	public Login findByLogin(Login login) {
		Login account = null;
		// JDBCドライバ
		try {
			Class.forName("org.h2.Driver");
		} catch (ClassNotFoundException e) {
			throw new IllegalStateException("JDBCドライバを読み込めませんでした");
		}
		// データベース接続
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)){

			// SELECT文
			String sql = "SELECT USER_ID, PASS FROM ACCOUNTS WHERE USER_ID = ? AND PASS = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, login.getUserId());
			pStmt.setString(2, login.getPass());

			// SELECT文の実行
			ResultSet rs = pStmt.executeQuery();

			if(rs.next()) {
				// ユーザーがいた場合、インスタンスを生成
				String userId = rs.getString("USER_ID");
				String pass = rs.getString("PASS");
				account = new Login(userId, pass);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

		return account;
	}
	public Boolean insertByRegister(Register register) {
		try {
			Class.forName("org.h2.Driver");
		} catch (ClassNotFoundException e) {
			throw new IllegalStateException("JDBCドライバを読み込めませんでした");
		}
		// データベース接続
		try(Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)){
			// INSERT文
			String sql = "INSERT INTO ACCOUNTS VALUES(?, ?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, register.getUserId());
			pStmt.setString(2, register.getPass());

			// INSERT文の実行
			int result = pStmt.executeUpdate();
			if (result != 1) {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
