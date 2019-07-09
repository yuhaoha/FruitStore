package com.appstore.model.service;

import java.util.List;

import com.appstore.model.entity.Browsing;
import com.appstore.model.entity.Comment;
import com.appstore.model.entity.Good;
import com.appstore.model.entity.User;
import com.appstore.model.service.CommentService;

public class CommentServiceImpl extends ServiceSupport<Comment> implements
CommentService {
	
	@Override
	public Comment getComment(int id) {
		return this.getDao().get(id);
	}
	@Override
	public List<Comment> getAllComments() {
		return this.getDao().findAll();
	}
	@Override
	public List<Comment> getCommentsByGoodId(int goodId){
		return this.getDao().findBy("goodsId", goodId);
  }
	@Override
	public List<Comment> getMyComments(String loginId) {
		List<Comment> myComments = this.getDao().findBy("userId", loginId);
		return myComments;
	}
	@Override
	public void saveComment(Comment comment) {
		this.getDao().save(comment);	
	}
	@Override
	public List<Comment> getCommentsByUser(User user) {
		return this.getDao().findBy("userId", user.getId());
	}
	@Override
	public void removeComment(Comment comment) {
		this.getDao().delete(comment);
	}
}
