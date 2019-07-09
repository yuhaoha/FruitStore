<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div id="main">
	<div class="section section-bg-10 pt-11 pb-17">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h2 class="page-title text-center">Cart</h2>
				</div>
			</div>
		</div>
	</div>

	<div class="section pt-7 pb-7">
		<div class="container" style="margin-top: -30px;">
			<div class="row">
				<div class="col-md-8">
					<table class="table shop-cart">
						<tbody>
							<!--购物车中单品-->
							<s:iterator value="cartGoodList">
								<tr class="cart_item">
									<td class="product-remove"><a
										href="removeCart.action?goodId=<s:property value="id" />"
										class="remove">×</a></td>
									<td class="product-thumbnail"><a href="goods.action?goodId=<s:property value="id" />">
											<img src="<s:property value="pictures"/>" alt="">
									</a></td>
									<td class="product-info"><a
										href="goods.action?goodId=<s:property value="id" />"><s:property
												value="name" /></a> <span class="amount">￥<s:property
												value="price" /></span></td>
									<td class="product-quantity">
										<div class="quantity" style="margin-bottom: 10px;">
											<input id="qty-2" type="number" min="0" name="number"
												value="1" class="input-text qty text" size="4">
										</div>
									</td>
									<td class="product-subtotal">￥<span class="amount"><s:property
												value="price" /></span>
									</td>
								</tr>
							</s:iterator>
							<tr>
								<td colspan="5" class="actions"><a
									class="continue-shopping" href="goodsList.action"> 继续购物</a> <a
									class="continue-shopping" href="checkoutOrder.action"
									style="margin-left: 49%;"> 提交订单</a></td>
							</tr>
							<!--购物车中单品结束-->
						</tbody>
					</table>
				</div>
				<div class="col-md-4">
					<div class="cart-totals">
						<table>
							<tbody>
								<tr class="cart-subtotal">
									<th>商品总价</th>
									<td>￥<s:property value="goodsCost"/></td>
								</tr>
								<tr class="shipping">
									<th>运费</th>
									<td>￥5</td>
								</tr>
								<tr class="order-total">
									<th>合计</th>
									<td><strong>￥<s:property value="goodsCost+5"/></strong></td>
								</tr>
							</tbody>
						</table>
						<div class="proceed-to-checkout">
							<a href="checkoutOrder.action">直接完成支付</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<s:include value="/WEB-INF/view/footer.jsp" />