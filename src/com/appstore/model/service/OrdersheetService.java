package com.appstore.model.service;

import java.util.List;

import com.appstore.model.entity.Ordersheet;
import com.appstore.model.entity.User;

public interface OrdersheetService {
	
	public List<Ordersheet> getOrdersIdByUserId(User user);
	public int addOrdersheet(Ordersheet ordersheet);
	public void updateOrdersheet(Ordersheet ordersheet);
	public Ordersheet getOrdersheet(int id);
	public void removeOrdersheet(Ordersheet ordersheet);
}
