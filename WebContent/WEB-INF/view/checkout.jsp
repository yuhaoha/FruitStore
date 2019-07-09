<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div id="main">
	<div class="section section-bg-10 pt-11 pb-17">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h2 class="page-title text-center">Checkout</h2>
				</div>
			</div>
		</div>
	</div>
	<div class="section border-bottom pt-2 pb-2">
		<div class="container">
			<div class="row">

			</div>
		</div>
	</div>
	<div class="section section-checkout pt-7 pb-7"
		style="margin-top: -40px;">
		<div class="container">
			<div class="row">
				<div class="col-md-6" style="width: 50%;">
					<table class="table shop-cart" style="margin-left: -30px;">
						<tbody>
							<!--购物车中单品-->
							<s:iterator value="cartGoodList">
								<tr class="cart_item">
									<td class="product-thumbnail"><a
										href="goods.action?goodId=<s:property value="id" />"> <img
											src="<s:property value="pictures"/>" alt=""></a></td>
									<td class="product-info"><a
										href="goods.action?goodId=<s:property value="id" />"><s:property
												value="name" /></a> <span class="amount">￥<s:property
												value="price" /></span></td>
									<td class="product-quantity">
										<div class="quantity"
											style="margin-left: 30px; margin-right: -50px;">
											<span class="amount">1</span>
										</div>
									</td>
									<td class="product-subtotal"><span class="amount">￥<s:property
												value="price" /></span></td>
								</tr>
							</s:iterator>
							<!--购物车中单品结束-->
						</tbody>
					</table>

				</div>
				<div class="col-md-6" style="width: 50%;">
					<h3>订单信息</h3>
					<div class="cart-totals">
						<table>
							<tbody>
								<tr class="cart-subtotal">
									<th>商品总价</th>
									<td>￥<s:property value="goodsCost" /></td>
								</tr>
								<tr class="shipping">
									<th>运费</th>
									<td>￥5</td>
								</tr>
								<tr class="order-total">
									<th>合计</th>
									<td><strong>￥<s:property value="goodsCost+5" /></strong></td>
								</tr>
							</tbody>
						</table>
					</div>
					<br/><br/>
					<form>
						<div class="row">
							<div class="col-md-6">
								<label>收件人姓名 <span class="required">*</span></label>
								<div class="form-wrap">
									<input type="text" name="your-firstname" value="" size="40" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label>地址 <span class="required">*</span></label>
								<div class="form-wrap">
									<input type="text" name="your-company-name" value="" size="40" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label>联系电话 <span class="required">*</span></label>
								<div class="form-wrap">
									<input type="text" name="your-address" value="" size="40" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label>备注</label>
								<div class="form-wrap">
									<textarea name="order_comments" class="input-text "
										id="order_comments" rows="2" cols="5"></textarea>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div style="float: right; margin-right: 60px; margin-top: -5%;">
					<a class="organik-btn mt-6" href="cartList.action"
						style="margin-right: 200px;"> 返回购物车 </a> <a
						class="organik-btn mt-6" href="addOrdersheet.action"> 完成支付 </a>
				</div>
			</div>


		</div>
	</div>
</div>
<s:include value="/WEB-INF/view/footer.jsp" />