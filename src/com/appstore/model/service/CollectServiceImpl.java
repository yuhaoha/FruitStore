package com.appstore.model.service;

import java.util.List;

import com.appstore.model.entity.Browsing;
import com.appstore.model.entity.Collect;
import com.appstore.model.entity.User;

public class CollectServiceImpl extends ServiceSupport<Collect> implements CollectService{

	@Override
	public List<Collect> getCollectsIdByUserId(User user) {
		return this.getDao().findBy("userId", (int)user.getId());
	}

	@Override
	public void addGoodsToCollect(Collect collect) {
		this.getDao().save(collect);
	}

	@Override
	public Collect getCollect(int id) {
		return this.getDao().get(id);
	}

	@Override
	public void removeCollect(Collect collect) {
		this.getDao().delete(collect);
	}
	
	@Override
	public List<Collect> getAllCollect() {
		return this.getDao().findAll();
	}

}
