package com.appstore.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import com.appstore.model.entity.Cart;
import com.appstore.model.entity.Good;
import com.appstore.model.entity.User;
import com.appstore.model.service.CartService;
import com.appstore.model.service.GoodService;
import com.opensymphony.xwork2.ActionContext;

public class CartAction extends GenericActionSupport<Cart, CartService>{

	private static final long serialVersionUID = 1L;
	private List<Good> cartGoodList = new ArrayList<Good>();
	private List<Cart> cartsList = new ArrayList<Cart>();
	private GoodService goodService;
	private int goodId;
	private float goodsCost=0;
	
	public float getGoodsCost() {
		return goodsCost;
	}

	public void setGoodsCost(float goodsCost) {
		this.goodsCost = goodsCost;
	}

	public int getGoodId() {
		return goodId;
	}

	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}

	public GoodService getGoodService() {
		return goodService;
	}
	
	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}
	
	public void setCartGoodList(List<Good> cartGoodList) {
		this.cartGoodList = cartGoodList;
	}
	
	public List<Good> getCartGoodList() {
		return cartGoodList;
	}
	
	public String getCartGoods()
	{
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		if(user==null)
			return "error";
		cartsList=this.getService().getCartsIdByUserId(user);
		for(Cart cart:cartsList) {
			Good good = goodService.getGoods(cart.getGoodsId());
			cartGoodList.add(good);
			goodsCost+=good.getPrice();
		}
		Collections.reverse(cartGoodList);
		return "success";
	}
	
	public String addGoodsToCart()
	{
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		if(user==null)
			return "error";
		System.out.println("******goodId="+goodId);
		Cart cart = new Cart(0,user.getId(),goodId);
		this.getService().addGoodsToCart(cart);
		// 跳到购物车页面
		cartsList=this.getService().getCartsIdByUserId(user);
		for(Cart c:cartsList) {
			Good good = goodService.getGoods(c.getGoodsId());
			cartGoodList.add(good);
			goodsCost+=good.getPrice();
		}
		Collections.reverse(cartGoodList);
		return "success";
	}
	
	public String removeGoodsFromCart()
	{
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		if(user==null)
			return "error";
		// 用户所有购物车
		cartsList=this.getService().getCartsIdByUserId(user);
		// 根据商品id筛选
		System.out.println("******goodId="+goodId);
		for(Cart c:cartsList)
		{
			if(c.getGoodsId()==goodId)
			{
				// 从购物车删除
				this.getService().removeCart(c);
				cartsList.remove(c);
				break;
			}
		}
		// 跳到购物车页面
		for(Cart c:cartsList) {
			Good good = goodService.getGoods(c.getGoodsId());
			cartGoodList.add(good);
			goodsCost += good.getPrice();
		}
		Collections.reverse(cartGoodList);
		return "success";
	}
	
}