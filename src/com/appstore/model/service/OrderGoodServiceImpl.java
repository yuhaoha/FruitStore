package com.appstore.model.service;

import java.util.List;

import com.appstore.model.entity.Browsing;
import com.appstore.model.entity.OrderGood;
import com.appstore.model.entity.Ordersheet;

public class OrderGoodServiceImpl extends ServiceSupport<OrderGood> implements OrderGoodService{

	@Override
	public List<OrderGood> getOrderGoodIdByOrderId(Ordersheet ordersheet) {
		return this.getDao().findBy("ordersheetId", ordersheet.getId());
	}

	@Override
	public void addOrderGood(OrderGood orderGood) {
		this.getDao().save(orderGood);
	}

	@Override
	public OrderGood getOrderGood(int id) {
		return this.getDao().get(id);
	}

	@Override
	public void removeOrderGood(OrderGood orderGood) {
		this.getDao().delete(orderGood);
	}

	@Override
	public List<OrderGood> getAllOrderGood() {
		return this.getDao().findAll();
	}
}
