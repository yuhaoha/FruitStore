package com.appstore.model.service;

import java.util.List;

import com.appstore.model.entity.Browsing;
import com.appstore.model.entity.User;

public interface BrowsingService {
	public List<Browsing> getBrowsingByUser(User user);

	public void addBrowsing(Browsing browsing);

	public List<Browsing> getAllBrowsing();

	public void removeBrowsing(Browsing browsing);
}
