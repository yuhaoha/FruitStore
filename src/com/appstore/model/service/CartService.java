package com.appstore.model.service;

import java.util.List;

import com.appstore.model.entity.Cart;
import com.appstore.model.entity.User;

public interface CartService {
	public List<Cart> getCartsIdByUserId(User user);
	public void addGoodsToCart(Cart cart);
	public Cart getCart(int id);
	public void removeCart(Cart cart);
	public List<Cart> getAllCarts();
}
