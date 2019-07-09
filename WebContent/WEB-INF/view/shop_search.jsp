<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div id="main">
	<!--路径装饰-->
	<div class="section section-bg-10 pt-11 pb-17">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h2 class="page-title text-center">Shop</h2>
				</div>
			</div>
		</div>
	</div>

	<!--路径装饰结束-->

	<div class="section pt-7 pb-7">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-md-push-3">
					<s:if test="searchGoods.size>0">
						<s:iterator value="searchGoods">
							<div class="product-grid">
								<!--最全面的商品介绍-->
								<div class="col-md-4 col-sm-6 product-item text-center mb-3">
									<div class="product-thumb">
										<a href="goods.action?goodId=<s:property value="id" />">
											<div class="badges">
												<span class="hot">Hot</span> <span class="onsale">Sale!</span>
											</div> <img src="<s:property value="pictures" />" alt="" />
										</a>
										<div class="product-action">
											<span class="add-to-cart"> <a href="addCart.action?goodId=<s:property value="id" />"
												data-toggle="tooltip" data-placement="top"
												title="Add to cart"></a>
											</span> <span class="wishlist"> <a href="addCollect.action?goodId=<s:property value="id" />"
												data-toggle="tooltip" data-placement="top"
												title="Add to wishlist"></a>
											</span> <span class="quickview"> <a href="goods.action?goodId=<s:property value="id" />"
												data-toggle="tooltip" data-placement="top" title="Quickview"></a>
										</div>
									</div>
									<div class="product-info">
										<a href="goods.action?goodId=<s:property value="id" />">
											<h2 class="title">
												<s:property value="name" />
											</h2> <span class="price"> 
													<s:property value="price" />
										</span>
										</a>
									</div>
								</div>
								<!--最全面的商品介绍结束-->
							</div>
						</s:iterator>
					</s:if>
				</div>

				<div class="col-md-3 col-md-pull-9">
					<div class="sidebar">
						<div class="widget widget-product-search">
							<!--搜索框-->
							<form class="form-search" action="${pageContext.request.contextPath}/searchGoods.action" method="post">
								<input type="text" class="search-field"
									placeholder="Search products…" value="<s:property value="searchContent"/>" name="searchContent" /> <input
									type="submit" value="Search" />
							</form>
							<!--搜索框-->
						</div>

						<div class="widget widget-products">
							<h3 class="widget-title">Products</h3>
							<!--商品列表展示-->
							<s:if test="searchGoods.size>0">
								<ul id="goods" class="product-list-widget">
									<s:iterator value="searchGoods">
										<li><a href="goods.action?goodId=<s:property value="id" />"> <img
												src="<s:property value="pictures" />" alt="" /> <span
												class="product-title"><s:property value="name" /></span>
										</a>
											<s:property value="price" />
									</s:iterator>
								</ul>
							</s:if>
							<!--商品列表展示结束-->
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<s:include value="/WEB-INF/view/footer.jsp" />