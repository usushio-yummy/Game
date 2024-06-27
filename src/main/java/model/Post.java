package model;

import java.io.Serializable;

public class Post implements Serializable {
	private String name;
	private String game;
	private String genre;
	private String content;
	private String userId;
	public Post(String name, String game, String genre, String content, String userId) {
		this.name = name;
		this.game = game;
		this.genre = genre;
		this.content = content;
		this.userId = userId;
	}
	public String getName() { return name; }
	public String getGame() { return game; }
	public String getGenre() { return genre; }
	public String getContent() { return content; }
	public String getUserId() { return userId; }
}
