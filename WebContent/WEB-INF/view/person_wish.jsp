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
						<strong class="am-text-danger am-text-lg">我的收藏</strong>
					</div>
				</div>
				<hr />

				<div style="width: 90%;">
					<table class="table shop-cart">
						<tbody>
							<!--购物车中单品-->
							<s:iterator value="collectGoodList">
								<tr class="cart_item">
									<td class="product-remove"><a
										href="removeCollect.action?goodId=<s:property value="id" />"
										class="remove">×</a></td>
									<td class="product-thumbnail"><a
										href="goods.action?goodId=<s:property value="id" />"> <img
											src="<s:property value="pictures"/>" alt=""></a></td>
									<td class="product-info"><a
										href="goods.action?goodId=<s:property value="id" />"><s:property
												value="name" /></a></td>
									<td class="product-subtotal">￥<span class="amount"><s:property
												value="price" /></span>
									</td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<s:include value="/WEB-INF/view/aside.jsp" />
</div>