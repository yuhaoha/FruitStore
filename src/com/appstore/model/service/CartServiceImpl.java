package com.appstore.model.service;

import java.util.List;

import com.appstore.model.entity.Browsing;
import com.appstore.model.entity.Cart;
import com.appstore.model.entity.Good;
import com.appstore.model.entity.User;

public class CartServiceImpl extends ServiceSupport<Cart> implements CartService{
	@Override
	public List<Cart> getCartsIdByUserId(User user){
		return this.getDao().findBy("userId", (int)user.getId());
	}

	@Override
	public void addGoodsToCart(Cart cart) {
		int id = this.getDao().saveAndReturnId(cart);
//		System.out.println("*****新加入的cartId="+id);
	}

	@Override
	public Cart getCart(int id) {
		return this.getDao().get(id);
	}

	@Override
	public void removeCart(Cart cart) {
		this.getDao().delete(cart);
	}
	
	@Override
	public List<Cart> getAllCarts() {
		return this.getDao().findAll();
	}
}
