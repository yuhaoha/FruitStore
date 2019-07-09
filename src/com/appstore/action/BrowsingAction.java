package com.appstore.action;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.appstore.model.entity.User;
import com.appstore.model.entity.Browsing;
import com.appstore.model.entity.Cart;
import com.appstore.model.entity.Good;
import com.appstore.model.service.BrowsingService;
import com.appstore.model.service.GoodService;
import com.opensymphony.xwork2.ActionContext;

import java.sql.SQLException;
public class BrowsingAction extends GenericActionSupport<Browsing, BrowsingService>{

	private static final long serialVersionUID = 1L;
	private List<Browsing> userBrowsing=new ArrayList<Browsing>();
	private List<Good> BrowsingGoodList = new ArrayList<Good>();
	private GoodService goodService;
	
	public List<Good> getBrowsingGoodList() {
		return BrowsingGoodList;
	}

	public void setBrowsingGoodList(List<Good> browsingGoodList) {
		BrowsingGoodList = browsingGoodList;
	}

	public GoodService getGoodService() {
		return goodService;
	}

	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}

	public String getBrowsingByUser(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		userBrowsing=this.getService().getBrowsingByUser(user);
		for(Browsing browsing:userBrowsing) {
			BrowsingGoodList.add(goodService.getGoods(browsing.getGoodsId()));
		}
		
		for (int i=0;i<BrowsingGoodList.size()-1;i++) {
			for (int j=BrowsingGoodList.size()-1;j>i;j--) {
				if  (BrowsingGoodList.get(j).getId()==BrowsingGoodList.get(i).getId())  {       
					BrowsingGoodList.remove(j);       
		        }     
			}
		}
		return SUCCESS;
	}

	public List<Browsing> getUserBrowsing() {
		return userBrowsing;
	}

	public void setUserBrowsing(List<Browsing> userBrowsing) {
		this.userBrowsing = userBrowsing;
	}
	
}
