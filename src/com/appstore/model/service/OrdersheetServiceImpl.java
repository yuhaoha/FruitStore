package com.appstore.model.service;

import java.util.List;

import com.appstore.model.entity.Ordersheet;
import com.appstore.model.entity.User;

public class OrdersheetServiceImpl extends ServiceSupport<Ordersheet> implements OrdersheetService{

	@Override
	public List<Ordersheet> getOrdersIdByUserId(User user) {
		return this.getDao().findBy("userId", user.getId());
	}

	@Override
	public int addOrdersheet(Ordersheet ordersheet) {
		return this.getDao().saveAndReturnId(ordersheet);
	}

	@Override
	public Ordersheet getOrdersheet(int id) {
		return this.getDao().get(id);
	}

	@Override
	public void removeOrdersheet(Ordersheet ordersheet) {
		this.getDao().delete(ordersheet);
	}

	@Override
	public void updateOrdersheet(Ordersheet ordersheet) {
		this.getDao().save(ordersheet);
	}

}
