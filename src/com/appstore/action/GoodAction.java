package com.appstore.action;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.appstore.model.entity.Browsing;
import com.appstore.model.entity.Good;
import com.appstore.model.entity.OrderGood;
import com.appstore.model.entity.Cart;
import com.appstore.model.entity.Collect;
import com.appstore.model.entity.Comment;
import com.appstore.model.entity.User;
import com.appstore.model.service.GoodService;
import com.mysql.fabric.xmlrpc.base.Array;
import com.appstore.model.service.BrowsingService;
import com.appstore.model.service.CollectService;
import com.appstore.model.service.OrderGoodService;
import com.appstore.model.service.CartService;
import com.appstore.model.service.CommentService;
import com.opensymphony.xwork2.ActionContext;


public class GoodAction extends GenericActionSupport<Good, GoodService>{

	private static final long serialVersionUID = 1L;
	private int goodId;
	private Good good;
	private String name;
	private String type;
	private String pictures;
	private String description;
	private float price;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPictures() {
		return pictures;
	}

	public void setPictures(String pictures) {
		this.pictures = pictures;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	private BrowsingService browsingService;
	private List<Good> searchGoods = new ArrayList<Good>();
	private String searchContent;
	private CartService cartService;
	private CollectService collectService;
	private OrderGoodService orderGoodService;
	private CommentService commentService;
	private List<Good> adminGoods = new ArrayList<Good>();
	
	public String getSearchContent() {
		return searchContent;
	}

	public void setSearchContent(String searchContent) {
		this.searchContent = searchContent;
	}

	public List<Good> getSearchGoods() {
		return searchGoods;
	}

	public void setSearchGoods(List<Good> searchGoods) {
		this.searchGoods = searchGoods;
	}

	public BrowsingService getBrowsingService() {
		return browsingService;
	}

	public void setBrowsingService(BrowsingService browsingService) {
		this.browsingService = browsingService;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	public Good getGood() {
		return good;
	}

	public int getGoodId() {
		return goodId;
	}

	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}

	public String getGoodById()throws Exception {
		System.out.println("***************"+goodId);
		good=this.getService().getGoods(goodId);
		System.out.println("***************"+good.getDescription());
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		if(user==null)
			return SUCCESS;
		else {
			Browsing browsing = new Browsing(0,user.getId(),goodId);
			browsingService.addBrowsing(browsing);
			return SUCCESS;
		}
	}
	
	public List<Good> getGoods()
	{
		return this.getService().getAllGoods();
	}
	
	public String searchGoods()
	{	
		// 获取表单数据
		HttpServletRequest request = ServletActionContext.getRequest();
		searchContent = request.getParameter("searchContent");
		List<Good> allGoods = this.getService().getAllGoods();
		// 商品名称与搜索字符串匹配
		for(Good g :allGoods)
		{
			if(g.getName().indexOf(searchContent)!=-1)
				searchGoods.add(g);
		}
		System.out.println("*******size="+searchGoods.size());
		return "success";
	}
	
	public String enterAdminAdd()
	{
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		if(user==null)
			return "error";
		return "success";
	}
	
	public String adminAddGood()
	{
//		private int goodId;
//		private Good good;
//		private String name;
//		private String type;
//		private String pictures;
//		private String description;
//		private float price;
		Good good_1 = new Good(name,type,pictures,description,price,0,Calendar.getInstance().getTime());
		this.getService().saveGood(good_1);
		return "success";
	}
	
	public String getGoodForAdmin()
	{
		adminGoods = this.getService().getAllGoods();
		return SUCCESS;
	}

	public List<Good> getAdminGoods() {
		return adminGoods;
	}

	public void setAdminGoods(List<Good> adminGoods) {
		this.adminGoods = adminGoods;
	}
	
	public String adminRemoveGood() {
		adminGoods = this.getService().getAllGoods();
		for (Good g:adminGoods) {
			if (g.getId()==goodId) {
				this.getService().removeGoods(g);
				adminGoods.remove(g);
				break;
			}
		}
		List<Browsing> browsingList = new ArrayList<Browsing>();
		browsingList = browsingService.getAllBrowsing();
		for (Browsing b:browsingList) {
			if (b.getGoodsId()==goodId) {
				browsingService.removeBrowsing(b);
			}
		}
		List<Cart> cartList = new ArrayList<Cart>();
		cartList = cartService.getAllCarts();
		for (Cart c:cartList) {
			if (c.getGoodsId()==goodId) {
				cartService.removeCart(c);
			}
		}
		List<Comment> commentList = new ArrayList<Comment>();
		commentList = commentService.getAllComments();
		for (Comment c:commentList) {
			if (c.getGoodsId()==goodId) {
				commentService.removeComment(c);
			}
		}
		List<Collect> collectList = new ArrayList<Collect>();
		collectList = collectService.getAllCollect();
		for (Collect c:collectList) {
			if (c.getGoodsId()==goodId) {
				collectService.removeCollect(c);
			}
		}
		List<OrderGood> orderGoodList = new ArrayList<OrderGood>();
		orderGoodList = orderGoodService.getAllOrderGood();
		for (OrderGood o:orderGoodList) {
			if (o.getGoodsId()==goodId) {
				orderGoodService.removeOrderGood(o);
			}
		}
		
		adminGoods = this.getService().getAllGoods();
		return SUCCESS;
	}

	public CartService getCartService() {
		return cartService;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}

	public CollectService getCollectService() {
		return collectService;
	}

	public void setCollectService(CollectService collectService) {
		this.collectService = collectService;
	}

	public OrderGoodService getOrderGoodService() {
		return orderGoodService;
	}

	public void setOrderGoodService(OrderGoodService orderGoodService) {
		this.orderGoodService = orderGoodService;
	}

	public CommentService getCommentService() {
		return commentService;
	}

	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}
}
