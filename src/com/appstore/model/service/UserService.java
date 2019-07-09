package com.appstore.model.service;

import java.util.List;

import com.appstore.model.entity.Good;
import com.appstore.model.entity.User;

public interface UserService  {

	/**
	 * �洢���û�
	 * @param user Ҫ�洢���û�����
	 */
	public void saveUser(User user);
	
	/**
	 * ��ָ֤����¼Id��������û�����
	 * @param loginId �û��ĵ�¼Id
	 * @param password �û�����
	 * @return ��֤�ɹ�������ָ�����û����󣬷���Ϊ��
	 */
	public User verifyUser(String loginId, String password);
	
}

