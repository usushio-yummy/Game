package model;

import dao.PostsDAO;

public class PostLogic {
	public boolean execute(Post post) {
		PostsDAO dao = new PostsDAO();
		boolean result = dao.insertByPost(post);
		return result;
	}

}
