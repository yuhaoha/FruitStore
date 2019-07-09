package com.appstore.model.entity;

import java.util.Calendar;
import java.util.Date;

public abstract class Entity {

	private int id;
	private Date creationDate;
	
	public Entity(int id) {
		this.id = id;
		this.setCreationDate(Calendar.getInstance().getTime());
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	
}
