package com.appstore.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import com.appstore.model.entity.Cart;
import com.appstore.model.entity.Collect;
import com.appstore.model.entity.Good;
import com.appstore.model.entity.User;
import com.appstore.model.service.CollectService;
import com.appstore.model.service.GoodService;
import com.opensymphony.xwork2.ActionContext;

import java.sql.SQLException;

public class CollectAction extends GenericActionSupport<Collect, CollectService> {

	private static final long serialVersionUID = 1L;
	private List<Good> collectGoodList = new ArrayList<Good>();
	private List<Collect> collectsList = new ArrayList<Collect>();
	private GoodService goodService;
	private int goodId;
	private List<Good> goods = new ArrayList<Good>();

	public List<Good> getGoods() {
		return goods;
	}

	public void setGoods(List<Good> goods) {
		this.goods = goods;
	}

	public List<Good> getCollectGoodList() {
		return collectGoodList;
	}

	public void setCollectGoodList(List<Good> collectGoodList) {
		this.collectGoodList = collectGoodList;
	}

	public List<Collect> getCollectsList() {
		return collectsList;
	}

	public void setCollectsList(List<Collect> collectsList) {
		this.collectsList = collectsList;
	}

	public GoodService getGoodService() {
		return goodService;
	}

	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}

	public int getGoodId() {
		return goodId;
	}

	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}

	public String getCollectGoods() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		if (user == null)
			return "error";
		collectsList = this.getService().getCollectsIdByUserId(user);
		System.out.println("******size=" + collectsList.size());
		for (Collect collect : collectsList) {
			collectGoodList.add(goodService.getGoods(collect.getGoodsId()));
		}
		Collections.reverse(collectGoodList);
		return "success";
	}

	public String addGoodsToCollect() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		if (user == null)
			return "error";
		collectsList = this.getService().getCollectsIdByUserId(user);
		// 当前收藏夹无商品
		if (collectsList.size() == 0) {
			Collect c = new Collect(0, user.getId(), goodId);
			this.getService().addGoodsToCollect(c);
		} else {
			for (int i = 0; i < collectsList.size(); i++) {
				Collect collect = collectsList.get(i);
				if (collect.getGoodsId() != goodId) {
					if (i != collectsList.size() - 1)
						continue;
					else {
						Collect c = new Collect(0, user.getId(), goodId);
						this.getService().addGoodsToCollect(c);
					}
				} else {
					break;
				}
			}
		}
		// 跳回商品页面
		goods = goodService.getAllGoods();
		return "success";
	}

	public String removeGoodsFromCollect() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		if (user == null)
			return "error";
		// 用户所有收藏夹
		collectsList = this.getService().getCollectsIdByUserId(user);
		// 根据商品id筛选
		System.out.println("******goodId=" + goodId);
		for (Collect c : collectsList) {
			if (c.getGoodsId() == goodId) {
				// 从收藏夹删除
				this.getService().removeCollect(c);
				collectsList.remove(c);
				break;
			}
		}
		// 跳到收藏夹页面
		for (Collect c : collectsList) {
			collectGoodList.add(goodService.getGoods(c.getGoodsId()));
		}
		Collections.reverse(collectGoodList);
		return "success";
	}

}
