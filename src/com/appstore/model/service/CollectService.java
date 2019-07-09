package com.appstore.model.service;

import java.util.List;

import com.appstore.model.entity.Collect;
import com.appstore.model.entity.User;

public interface CollectService {
	public List<Collect> getCollectsIdByUserId(User user);
	public void addGoodsToCollect(Collect collect);
	public Collect getCollect(int id);
	public void removeCollect(Collect collect);
	public List<Collect> getAllCollect();
}
