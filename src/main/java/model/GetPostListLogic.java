package model;

import java.util.List;

import dao.PostsDAO;

public class GetPostListLogic {
	public List<Post> execute(){
		PostsDAO dao = new PostsDAO();
		List<Post> postList = dao.findAll();
		return postList;
	}
}
