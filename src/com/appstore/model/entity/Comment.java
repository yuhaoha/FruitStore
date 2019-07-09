package com.appstore.model.entity;

import java.util.Date;
import java.util.Calendar;
public class Comment extends Entity {
	
	private int userId;
	private int goodsId;
	private String content;
	private Date commentTime;
	
	public Comment() {
		super(0);
		// TODO Auto-generated constructor stub
		this.commentTime=Calendar.getInstance().getTime();
	}
	public Comment(int userId,int goodsId,String content) {
		this();
		this.userId=userId;
		this.goodsId=goodsId;
		this.content = content;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}
	
}
