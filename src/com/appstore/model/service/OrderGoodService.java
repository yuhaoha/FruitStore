package com.appstore.model.service;

import java.util.List;

import com.appstore.model.entity.OrderGood;
import com.appstore.model.entity.Ordersheet;;

public interface OrderGoodService {
	
	public List<OrderGood> getOrderGoodIdByOrderId(Ordersheet ordersheet);
	public void addOrderGood(OrderGood orderGood);
	public OrderGood getOrderGood(int id);
	public void removeOrderGood(OrderGood orderGood);
	public List<OrderGood> getAllOrderGood();
}
