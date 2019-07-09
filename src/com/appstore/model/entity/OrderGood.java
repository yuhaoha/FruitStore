package com.appstore.model.entity;

public class OrderGood extends Entity{
	
	private int ordersheetId;
	private int goodsId;
	
	public OrderGood() {
		super(0);
	}
	
	public OrderGood(int id,int ordersheetId,int goodsId) {
		super(id);
		this.ordersheetId = ordersheetId;
		this.goodsId = goodsId;
	}

	public int getOrdersheetId() {
		return ordersheetId;
	}

	public void setOrdersheetId(int ordersheetId) {
		this.ordersheetId = ordersheetId;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	@Override
	public String toString() {
		return "OrderGood [ordersheetId=" + ordersheetId + ", goodsId=" + goodsId + "]";
	}

}
