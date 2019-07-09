package com.appstore.model.entity;
import java.util.*;

public class Collect extends Entity{

	private int userId;
	private int goodsId;
	private Date collectTime;
	
	public Collect() {
		super(0);
		// TODO Auto-generated constructor stub
	}
	public Collect(int id, int userId, int goodsId) {
		super(id);
		this.userId = userId;
		this.goodsId = goodsId;
		this.collectTime = Calendar.getInstance().getTime();
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public Date getCollectTime() {
		return collectTime;
	}
	public void setCollectTime(Date collectTime) {
		this.collectTime = collectTime;
	}
	

}
