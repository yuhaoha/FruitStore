package com.appstore.model.entity;

import java.util.Calendar;
import java.util.Date;

public class Ordersheet extends Entity{
	
	private int userId;
	private Date buyTime;
	private float cost;
	public Ordersheet() {
		super(0);
		// TODO Auto-generated constructor stub
		this.buyTime = Calendar.getInstance().getTime();
	}
	
	public Ordersheet(int id, int userId, float cost) {
		super(id);
		this.cost = cost;
		this.userId = userId;
		this.buyTime = Calendar.getInstance().getTime();
	}
	

	public float getCost() {
		return cost;
	}

	public void setCost(float cost) {
		this.cost = cost;
	}

	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Date getBuyTime() {
		return buyTime;
	}
	public void setBuyTime(Date buyTime) {
		this.buyTime = buyTime;
	}

	@Override
	public String toString() {
		return "Ordersheet [userId=" + userId + ", buyTime=" + buyTime + ", cost=" + cost + "]";
	}
	
}
