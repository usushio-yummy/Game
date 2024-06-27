package model;

import java.util.List;

import dao.PostsDAO;

public class GetMyPostListLogic {
	public List<Post> execute(Login login){
		PostsDAO dao = new PostsDAO();
		List<Post> postList = dao.findByPost(login);
		return postList;
	}
}
