package com.appstore.model.entity;

import java.util.*;

public class Good extends Entity{
	private String name;
	private String type;
	private String pictures;
	private String description;
	private float price;
	private int stock;
	private Date releaseTime;

	public Good() {
		super(0);
		// TODO Auto-generated constructor stub
	}
	public Good(String name, String type, String pictures, String description, float price, int stock,Date releaseTime) {
		this();
		this.name = name;
		this.type = type;
		this.pictures = pictures;
		this.description = description;
		this.price = price;
		this.stock = stock;
		this.releaseTime = releaseTime;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPictures() {
		return pictures;
	}
	public void setPictures(String pictures) {
		this.pictures = pictures;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public Date getReleaseTime() {
		return releaseTime;
	}
	public void setReleaseTime(Date releaseTime) {
		this.releaseTime = releaseTime;
	}

	

}
