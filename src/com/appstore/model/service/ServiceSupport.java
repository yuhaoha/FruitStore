package com.appstore.model.service;

import com.appstore.model.dao.EntityDao;

public class ServiceSupport<TEntity> {

	private EntityDao<TEntity> dao;

	protected EntityDao<TEntity> getDao() {
		return dao;
	}

	public void setDao(EntityDao<TEntity> dao) {
		this.dao = dao;
	}
	
}
