package com.appstore.model.service;
import com.appstore.model.entity.Good;
import com.appstore.model.entity.User;

import java.util.List;
public interface GoodService {
	
	public Good getGoods(int id);
	
	public List<Good> getAllGoods();
	
	public void removeGoods(Good good); 
	public void saveGood(Good good);
	
}
