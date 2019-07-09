package com.appstore.model.service;

import java.util.List;

import com.appstore.model.entity.Browsing;
import com.appstore.model.entity.Good;
import com.appstore.model.entity.User;

public class BrowsingServiceImpl extends ServiceSupport<Browsing> implements BrowsingService{
	@Override
	public List<Browsing> getBrowsingByUser(User user) {
		return this.getDao().findBy("userId", user.getId());
	}
	
	@Override
	public void addBrowsing(Browsing browsing) {
		this.getDao().save(browsing);
	}
	
	@Override
	public List<Browsing> getAllBrowsing() {
		return this.getDao().findAll();
	}
	
	@Override
	public void removeBrowsing(Browsing browsing) {
		this.getDao().delete(browsing);
	}
}
