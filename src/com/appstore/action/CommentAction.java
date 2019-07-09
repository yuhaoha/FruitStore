package com.appstore.action;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import com.appstore.model.entity.Comment;
import com.appstore.model.entity.Good;
import com.appstore.model.entity.User;
import com.appstore.model.service.CommentService;
import com.appstore.model.service.GoodService;
import com.opensymphony.xwork2.ActionContext;

public class CommentAction extends GenericActionSupport<Comment, CommentService>{
	
	private static final long serialVersionUID = 1L;
	private int goodId;
	private String content;
	private int userId;
	private Good good;
	private GoodService goodService;
	private List<Comment> comments=new ArrayList<Comment>();
	private List<Comment> userComments=new ArrayList<Comment>();

	public Good getGood() {
		return good;
	}

	public List<Comment> getUserComments() {
		return userComments;
	}

	public void setUserComments(List<Comment> userComments) {
		this.userComments = userComments;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	public GoodService getGoodService() {
		return goodService;
	}

	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public List<Comment> getComments() {
		return comments;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public long getGoodId() {
		return goodId;
	}

	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}
	
	public String getCommentsByGoodId(){
		comments=this.getService().getCommentsByGoodId(goodId);
		return SUCCESS;
	}
	
	public List<Comment> getMyComments(String loginId)
	{
		return this.getService().getMyComments(loginId);
	}
	
	public String addComment() {
		System.out.println("***************"+content);
		System.out.println("***************"+goodId);
		System.out.println("***************"+userId);
		Comment comment = new Comment(userId,goodId,content);
		this.getService().saveComment(comment);
		comments=this.getService().getCommentsByGoodId(goodId);
		good=goodService.getGoods(goodId);
		return SUCCESS;
	}
	
	public String getCommentsByUser(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		userComments=this.getService().getCommentsByUser(user);
		return SUCCESS;
	}
}
