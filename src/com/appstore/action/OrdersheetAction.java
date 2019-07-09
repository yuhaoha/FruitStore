package com.appstore.action;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import com.appstore.model.entity.Cart;
import com.appstore.model.entity.Good;
import com.appstore.model.entity.OrderGood;
import com.appstore.model.entity.Ordersheet;
import com.appstore.model.entity.User;
import com.appstore.model.service.CartService;
import com.appstore.model.service.GoodService;
import com.appstore.model.service.OrderGoodService;
import com.appstore.model.service.OrdersheetService;
import com.appstore.util.OrderHelper;
import com.opensymphony.xwork2.ActionContext;

import java.sql.SQLException;

public class OrdersheetAction extends GenericActionSupport<Ordersheet, OrdersheetService>{

	private static final long serialVersionUID = 1L;
	private CartService cartService;
	private GoodService goodService;
	private OrderGoodService orderGoodService;
	private List<Cart> cartsList = new ArrayList<Cart>();
	private List<Ordersheet> ordersheetList = new ArrayList<Ordersheet>();
	private List<Good> orderFirstGoods = new ArrayList<Good>();
	private List<OrderHelper> orderContentList = new ArrayList<OrderHelper>();
	private int ordersheetId;
	private List<Good> goodsInOrder = new ArrayList<Good>();
	private float goodsCost=0;
	
	public float getGoodsCost() {
		return goodsCost;
	}

	public void setGoodsCost(float goodsCost) {
		this.goodsCost = goodsCost;
	}

	public List<Good> getGoodsInOrder() {
		return goodsInOrder;
	}

	public void setGoodsInOrder(List<Good> goodsInOrder) {
		this.goodsInOrder = goodsInOrder;
	}

	public int getOrdersheetId() {
		return ordersheetId;
	}

	public void setOrdersheetId(int ordersheetId) {
		this.ordersheetId = ordersheetId;
	}

	public List<OrderHelper> getOrderContentList() {
		return orderContentList;
	}

	public void setOrderContentList(List<OrderHelper> orderContentList) {
		this.orderContentList = orderContentList;
	}

	public List<Good> getOrderFirstGoods() {
		return orderFirstGoods;
	}

	public void setOrderFirstGoods(List<Good> orderFirstGoods) {
		this.orderFirstGoods = orderFirstGoods;
	}

	public List<Ordersheet> getOrdersheetList() {
		return ordersheetList;
	}

	public void setOrdersheetList(List<Ordersheet> ordersheetList) {
		this.ordersheetList = ordersheetList;
	}

	public CartService getCartService() {
		return cartService;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}

	public List<Cart> getCartsList() {
		return cartsList;
	}

	public void setCartsList(List<Cart> cartsList) {
		this.cartsList = cartsList;
	}
	
	public GoodService getGoodService() {
		return goodService;
	}

	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}
	
	public OrderGoodService getOrderGoodService() {
		return orderGoodService;
	}

	public void setOrderGoodService(OrderGoodService orderGoodService) {
		this.orderGoodService = orderGoodService;
	}

	public String addOrdersheet()
	{
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		if(user==null)
			return "error";
		Ordersheet order = new Ordersheet(0, user.getId(), 0);
		// 将订单存储，得到新订单的id
		int newOrderId = this.getService().addOrdersheet(order);
		// 订单总金额
		float cost = 0;
		// 获取当前用户的购物车
		cartsList = cartService.getCartsIdByUserId(user);
		for(Cart cart: cartsList)
		{
			// 获取购物车中商品
			Good good = goodService.getGoods(cart.getGoodsId());
			cost += good.getPrice();
			// 生成关联表中的记录
			OrderGood orderGood = new OrderGood(0, newOrderId, good.getId());
			orderGoodService.addOrderGood(orderGood);
			// 删除购物车记录
			cartService.removeCart(cart);
		}
		// 更新订单的金额属性
		order.setCost(cost);
		this.getService().updateOrdersheet(order);
//		Ordersheet uselessOrder = this.getService().getOrdersheet(newOrderId+1);
//		if(uselessOrder!=null)
//			this.getService().removeOrdersheet(uselessOrder);
		
		// 获取用户所有订单
		List<Ordersheet> tempList = this.getService().getOrdersIdByUserId(user);
		for(Ordersheet o :tempList)
		{
			if(o.getCost()!=0)
			{
				ordersheetList.add(o);
				List<OrderGood> orderGoodList = orderGoodService.getOrderGoodIdByOrderId(o);
				int firstGoodId = orderGoodList.get(0).getGoodsId();
				Good good = goodService.getGoods(firstGoodId);
				orderFirstGoods.add(good);
				OrderHelper orderHelper = new OrderHelper(o.getId(), o.getUserId(), o.getCost(), o.getBuyTime(), orderGoodList.size(), good.getName(), good.getPictures());
				orderContentList.add(orderHelper);
			}
		}
		Collections.reverse(orderContentList);
		
		return "success";
	}
	
	public String getUserOrdersheetList() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		if(user==null)
			return "error";
		// 获取用户所有订单
		List<Ordersheet> tempList = this.getService().getOrdersIdByUserId(user);
		for(Ordersheet order :tempList)
		{
			if(order.getCost()!=0)
			{
				ordersheetList.add(order);
				List<OrderGood> orderGoodList = orderGoodService.getOrderGoodIdByOrderId(order);
				if(orderGoodList.size()>0)
				{
					int firstGoodId = orderGoodList.get(0).getGoodsId();
					Good good = goodService.getGoods(firstGoodId);
					orderFirstGoods.add(good);
					OrderHelper orderHelper = new OrderHelper(order.getId(), order.getUserId(), order.getCost(), order.getBuyTime(), orderGoodList.size(), good.getName(), good.getPictures());
					orderContentList.add(orderHelper);
				}
			}
		}
		Collections.reverse(orderContentList);
		
		return "success";
	}
	
	public String ordersheetDetail() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		if(user==null)
			return "error";
		Ordersheet ordersheet = this.getService().getOrdersheet(ordersheetId);
		List<OrderGood> orderGoodList = orderGoodService.getOrderGoodIdByOrderId(ordersheet);
		for(OrderGood od:orderGoodList)
		{
			Good good = goodService.getGoods(od.getGoodsId());
			goodsInOrder.add(good);
			goodsCost += good.getPrice();
		}
		return "success";
	}
	
}
