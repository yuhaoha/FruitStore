package com.appstore.model.entity;

import java.util.Calendar;
import java.util.Date;

public class Cart extends Entity{

	private int userId;
	private int goodsId;
	private Date cartTime;
	
	public Cart() {
		super(0);
		// TODO Auto-generated constructor stub
	}
	public Cart(int id, int userId, int goodsId) {
		super(id);
		this.userId = userId;
		this.goodsId = goodsId;
		this.cartTime = Calendar.getInstance().getTime();
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

	public Date getCartTime() {
		return cartTime;
	}

	public void setCartTime(Date cartTime) {
		this.cartTime = cartTime;
	}
	
}
