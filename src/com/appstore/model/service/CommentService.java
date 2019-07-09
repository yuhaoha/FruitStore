package com.appstore.model.service;
import com.appstore.model.entity.Comment;
import com.appstore.model.entity.User;
import java.util.List;

public interface CommentService {
	
	public Comment getComment(int id);
	
	public List<Comment> getAllComments();
	public List<Comment> getCommentsByGoodId(int goodId);
	public List<Comment> getMyComments(String loginId);
	public void saveComment(Comment comment);
	public List<Comment> getCommentsByUser(User user);

	public void removeComment(Comment comment);
}
