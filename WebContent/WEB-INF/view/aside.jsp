<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<aside class="menu">
	<ul>
		<li class="person">
			<h6>个人中心</h6>
		</li>
		<li style="margin-top: 15px;"><a href="ordersheetList.action">我的订单</a>
		</li>
		<li style="margin-top: 15px;"><a href="collectList.action">我的收藏</a>
		</li>
		<li style="margin-top: 15px;"><a href="myBrowsing.action">浏览历史</a>
		</li>
		<li style="margin-top: 15px;"><a href="myComment.action">我的评价</a>
		</li>
	</ul>
	<ul>
		<li class="person">
			<h6>管理中心</h6>
		</li>
		<li style="margin-top: 15px;"><a href="enterAdminAdd.action">新增商品</a>
		</li>
		<li style="margin-top: 15px;"><a href="adminGoodList.action">商品管理</a>
		</li>
	</ul>

</aside>