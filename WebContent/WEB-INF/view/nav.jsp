<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<header id="header" class="header header-desktop header-2">
	<div class="top-search">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<!--搜索框-->
					<form action="${pageContext.request.contextPath}/searchGoods.action" method="post">
						<input type="search" class="top-search-input"  name="searchContent"
							placeholder="What are you looking for?" />
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div>
				<nav class="menu">
					<ul class="main-menu">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="goodsList.action">Shop</a></li>
						<li><a href="cartList.action">Cart</a></li>
						<!-- <li><a href="checkout.html">Checkout</a></li> -->
						<li><a href="contact-us.jsp">Contact</a></li>
					</ul>
				</nav>
				<div class="btn-wrap" style="margin-left: 55%;">
					<div class="mini-cart-wrap">
						<div class="mini-cart">
							<!--下方数字为购物车图标上的数字-->
							<!-- <div class="mini-cart-icon" data-count="3"> -->
							<i class="ion-bag"></i>
							<!-- </div> -->
						</div>
						<div class="widget-shopping-cart-content">
							<!--点击购物车图标后的展示-->
							<!-- <ul class="cart-list">
										<li>
											<a href="#" class="remove">×</a>
											<a href="shop-detail.html">
												<img src="images/shop/thumb/shop_1.jpg" alt="" />
												Orange Juice&nbsp;
											</a>
											<span class="quantity">1 × $12.00</span>
										</li>
										<li>
											<a href="#" class="remove">×</a>
											<a href="shop-detail.html">
												<img src="images/shop/thumb/shop_2.jpg" alt="" />
												Aurore Grape&nbsp;
											</a>
											<span class="quantity">1 × $9.00</span>
										</li>
									</ul>
									<p class="total">
										<strong>Subtotal:</strong> 
										<span class="amount">$21.00</span>
									</p> -->
							<p class="buttons">
								<a href="cartList.action" class="view-cart">View cart</a> <a
									href="checkoutOrder.action" class="checkout">Checkout</a>
							</p>
						</div>
					</div>
					<div class="top-search-btn-wrap">
						<div class="top-search-btn">
							<a href="javascript:void(0);"> <i class="ion-search"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>