package com.appstore.model.entity;

import java.util.Date;
import java.util.Calendar;

public class Browsing extends Entity {

	private int userId;
	private int goodsId;
	private Date browsingTime;

	public Browsing() {
		super(0);
		// TODO Auto-generated constructor stub
		this.browsingTime=Calendar.getInstance().getTime();
	}

	public Browsing(int id, int userId, int goodsId) {
		super(id);
		this.userId = userId;
		this.goodsId = goodsId;
		this.browsingTime = Calendar.getInstance().getTime();
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

	public Date getBrowsingTime() {
		return browsingTime;
	}

	public void setBrowsingTime(Date browsingTime) {
		this.browsingTime = browsingTime;
	}

}
