package com.appstore.action;

import java.util.Map;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;

import com.appstore.model.entity.User;
import com.appstore.model.service.UserService;

public class UserAction extends GenericActionSupport<User, UserService> {

	private static final long serialVersionUID = 1L;

	//��¼
	public String login() throws Exception {
		String loginId = this.getModel().getLoginId();
		String password = this.getModel().getPassword();
		User user = this.getService().verifyUser(loginId, password);
		if (user != null){
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("user", user);
			return SUCCESS;
		}
		this.addActionError("�û��������벻��ȷ��");
		return INPUT;
	}
	//ע��
	public String register() throws Exception {
		try {
			this.getService().saveUser(this.getModel());
		}
		catch (Exception ex){
			this.addActionError(ex.getMessage());
			return INPUT;
		}
		String loginId = this.getModel().getLoginId();
		String password = this.getModel().getPassword();
		User user = this.getService().verifyUser(loginId, password);
		if (user != null){
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("user", user);

		}
		return SUCCESS;
	}
	//ע��
	public String logout() throws Exception {
		
		ActionContext.getContext().getSession().clear();
		return SUCCESS;
	}
	
}
