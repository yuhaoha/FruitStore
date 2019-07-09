<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="section section-bg-10 pt-11 pb-17">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h2 class="page-title text-center">Person</h2>
			</div>
		</div>
	</div>
</div>

<b class="line"></b>
<div class="center">
	<div class="col-main">
		<div class="main-wrap">

			<div class="user-order">

				<!--标题 -->
				<div class="am-cf am-padding">
					<div class="am-fl am-cf">
						<strong class="am-text-danger am-text-lg">我的订单</strong>
					</div>
				</div>
				<hr />

				<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>
					<div class="am-tabs-bd">
						<div class="am-tab-panel am-fade am-in am-active" id="tab1">
							<!-- 									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price" style="margin-left: 20px;">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number" style="margin-left: 20px;">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-amount" style="margin-left: 20px;">
											<td class="td-inner">合计</td>
										</div>
									</div> -->

							<div class="order-main">
								<div class="order-list">
									<!--订单列表-->
									<s:iterator value="orderContentList">
										<div class="order-status5">
											<div class="order-title">
												<div class="dd-num">
													订单编号：<a
														href="ordersheetDetail.action?ordersheetId=<s:property value="id" />"><s:property
															value="id" /></a>
												</div>
												<span>成交时间：</span><span><s:property value="buyTime" /></span>
											</div>
											<div style="width: 90%;">
												<table class="table shop-cart">
													<tbody>
														<tr class="cart_item">
															<td class="product-thumbnail"><a
																href="ordersheetDetail.action?ordersheetId=<s:property value="id" />">
																	<img src="<s:property value="pictures"/>" alt="">
															</a></td>
															<td class="product-info"><a href="ordersheetDetail.action?ordersheetId=<s:property value="id" />" />
															<s:property value="name" />等<s:property value="amount" />件商品</a></td>
															<td class="product-subtotal">￥<span class="amount"><s:property
																		value="cost+5" /></span>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</s:iterator>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--个人中心可复用的侧边栏-->
	<s:include value="/WEB-INF/view/aside.jsp" />
	<!--侧边栏结束-->
</div>