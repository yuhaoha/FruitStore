package com.appstore.model.service;

import java.util.List;

import com.appstore.model.entity.Cart;
import com.appstore.model.entity.Good;
public class GoodServiceImpl extends ServiceSupport<Good> implements
GoodService{
	@Override
	public Good getGoods(int id) {
		return this.getDao().get(id);
	}
	@Override
	public List<Good> getAllGoods() {
		return this.getDao().findAll();
	}
	@Override
	public void removeGoods(Good good) {
		this.getDao().delete(good);
	}
	@Override
	public void saveGood(Good good) {
		this.getDao().save(good);
	}
}
