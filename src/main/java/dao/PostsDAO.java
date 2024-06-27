package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Login;
import model.Post;

public class PostsDAO {
	// データベース接続
	private final String JDBC_URL = "jdbc:h2:tcp://localhost/~/Game";
	private final String DB_USER = "sa";
	private final String DB_PASS = "";

	public List<Post> findAll() {
		List<Post> postList = new ArrayList<>();
		// JDBCドライバ
		try {
			Class.forName("org.h2.Driver");
		} catch (ClassNotFoundException e) {
			throw new IllegalStateException("JDBCドライバを読み込めませんでした");
		}
		//データベース接続
		try(Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)){

			// SELECT
			String sql = "SELECT NAME, GAME, GENRE, CONTENT, USER_ID FROM GAME_SOFT";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// 実行
			ResultSet rs = pStmt.executeQuery();

			// レコード内容をPostインスタンスに入れて、ArrayListインスタンスに追加
			while(rs.next()) {
				String name = rs.getString("NAME");
				String game = rs.getString("GAME");
				String genre = rs.getString("GENRE");
				String content = rs.getString("CONTENT");
				String userId = rs.getString("USER_ID");
				Post post = new Post(name, game, genre, content, userId);
				postList.add(post);
			}
		} catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
		return postList;
	}
	public boolean insertByPost(Post post) {
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)){
			String sql = "INSERT INTO GAME_SOFT VALUES(?, ?, ?, ?, ?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1,post.getName());
			pStmt.setString(2, post.getGame());
			pStmt.setString(3, post.getGenre());
			pStmt.setString(4, post.getContent());
			pStmt.setString(5, post.getUserId());
			int result = pStmt.executeUpdate();
			if(result != 1) {
				return false;
			}
		} catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public List<Post> findByPost(Login login) {
		List<Post> postList = new ArrayList<>();
		try {
			Class.forName("org.h2.Driver");
		} catch (ClassNotFoundException e) {
			throw new IllegalStateException("JDBCドライバを読み込めませんでした");
		}
		//データベース接続
		try(Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)){

			// SELECT
			String sql = "SELECT * FROM GAME_SOFT WHERE USER_ID = ? ";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, login.getUserId());

			// 実行
			ResultSet rs = pStmt.executeQuery();

			// レコード内容をPostインスタンスに入れて、ArrayListインスタンスに追加
			while(rs.next()) {
				String name = rs.getString("NAME");
				String game = rs.getString("GAME");
				String genre = rs.getString("GENRE");
				String content = rs.getString("CONTENT");
				String userId = rs.getString("USER_ID");
				Post post = new Post(name, game, genre, content, userId);
				postList.add(post);
			}
		} catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
		return postList;

	}
}
