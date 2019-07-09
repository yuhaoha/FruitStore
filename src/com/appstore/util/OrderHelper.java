package com.appstore.util;

import java.util.Date;

public class OrderHelper {
	private int id;
	private int userId;
	private float cost;
	private Date buyTime;
	private int amount;
	private String name;
	private String pictures;
	
	public OrderHelper(int id,int userId,float cost,Date buyTime,int amount,String name,String pictures) {
		this.id = id;
		this.userId = userId;
		this.cost = cost;
		this.buyTime = buyTime;
		this.amount = amount;
		this.name = name;
		this.pictures = pictures;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public float getCost() {
		return cost;
	}
	public void setCost(float cost) {
		this.cost = cost;
	}

	public Date getBuyTime() {
		return buyTime;
	}

	public void setBuyTime(Date buyTime) {
		this.buyTime = buyTime;
	}

	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPictures() {
		return pictures;
	}
	public void setPictures(String pictures) {
		this.pictures = pictures;
	}
	@Override
	public String toString() {
		return "OrderHelper [id=" + id + ", userId=" + userId + ", cost=" + cost + ", buyTime=" + buyTime + ", amount="
				+ amount + ", name=" + name + ", pictures=" + pictures + "]";
	}
	
}
