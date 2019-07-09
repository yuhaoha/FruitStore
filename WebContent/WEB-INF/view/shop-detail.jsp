<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<% %>>
<div id="main">
	<div class="section section-bg-10 pt-11 pb-17">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h2 class="page-title text-center">Shop Detail</h2>
				</div>
			</div>
		</div>
	</div>

	<s:if test="good!=null">
		<div class="section pt-7 pb-7">
			<div class="container">
				<div class="row">
					<div class="col-md-9 col-md-push-3">
						<div class="single-product">
							<div class="col-md-6">
								<div class="image-gallery">
									<div class="image-gallery-inner">
										<div>
											<div class="image-thumb">
												<img src="<s:property value="good.pictures"/>" alt="" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="summary">
									<h1 class="product-title">
										<s:property value="good.name" />
									</h1>
									<div class="product-rating">
										<div class="star-rating">
											<span style="width: 100%"></span>
										</div>
									</div>
									<div class="product-price">
										￥<s:property value="good.price" />
									</div>
									<div class="mb-3">
										<p>商品描述</p>
									</div>
									<button class="single-add-to-cart">
										<a href="addCart.action?goodId=<s:property value="good.id" />">ADD
											TO CART</a>
									</button>
									<div class="product-tool">
										<a href="addCollect.action?goodId=<s:property value="good.id" />" data-toggle="tooltip" data-placement="top"
											title="Add to wishlist"> Browse Wishlist </a>
									</div>
									<!-- <div class="product-meta">
										<table>
											<tbody>
												<tr>
													<td class="label">Category</td>
													<td><a href="#">Juice</a></td>
												</tr>
												<tr>
													<td class="label">Share</td>
													<td class="share">
														<a target="_blank" href="#"><i class="fa fa-facebook"></i></a> 
														<a target="_blank" href="#"><i class="fa fa-twitter"></i></a> 
														<a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
													</td>
												</tr>
											</tbody>
										</table>
									</div> -->
								</div>
							</div>
							<div class="col-md-12">
								<div class="commerce-tabs tabs classic">
									<ul class="nav nav-tabs tabs" style="margin-top: -20px;">
										<li class="active"><a data-toggle="tab"
											href="#tab-description" aria-expanded="true">商品描述</a></li>
										<li class=""><a data-toggle="tab" href="#tab-reviews"
											aria-expanded="false">商品评价</a></li>
									</ul>
									<!--描述与评论区-->
									<div class="tab-content">
										<!--描述区-->
										<div class="tab-pane fade active in" id="tab-description">
											<p>
												<s:property value="good.description" />
											</p>
										</div>
										<!--描述区结束-->
											<div id="tab-reviews" class="tab-pane fade"
												style="margin-top: -20px;">
												<div class="single-comments-list mt-0">
													<!--评论列表-->
													<ul class="comment-list">
														<s:iterator value="comments">
															<li>
																<div class="single-comments-list mt-0">
																	<div class="comment-container">
																		<div class="comment-author-vcard">
																			<img alt="" src="images/avatar/avatar.png" />
																		</div>
																		<div class="comment-author-info">
																			<span class="comment-author-name"><s:property
																					value="userId" /></span> <a href="#" class="comment-date"><s:property
																					value="commentTime" /></a>
																			<p>
																				<s:property value="content" />
																			</p>
																		</div>
																	</div>
																</div>
															</li>
														</s:iterator>
													</ul>
													<!--评论列表结束-->
												</div>

												<div class="single-comment-form mt-0">
													<div class="mb-2">
														<h2 class="comment-title">发表评价</h2>
													</div>
													<s:form class="comment-form" action="addComment" method="post">
														<div class="row">
															<div class="col-md-12">
																<textarea id="content" name="content" cols="45" rows="5"
																	placeholder="写下你的评价"></textarea>
																	
															</div>
	
															
														</div>
														<div class="row">
															<div class="col-md-2">
																<input name="submit" type="submit" id="submit"
																	class="btn btn-alt btn-border" value="发布">
															</div>
														</div>
														<input id="goodId" name="goodId" type="hidden" value="<s:property
																					value="good.id" />">
														<input id="userId" name="userId" type="hidden" value="<s:property
																					value="#session.user.id" />">
													</s:form>
												</div>
											</div>
									</div>
									<!--描述与评论区结束-->
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-md-pull-9">
						<div class="sidebar">
							<div class="widget widget-products">
								<h3 class="widget-title">相关商品</h3>
								<ul class="product-list-widget" style="margin-top: -20px;">
									<li><a href="goods.action?goodId=<s:property value="good.id"/>"> <img
											src="<s:property value="good.pictures"/>" alt="" /> <span
											class="product-title"><s:property value="good.name" /></span>
									</a> 
										￥<s:property value="good.price" />
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</s:if>
</div>
<s:include value="/WEB-INF/view/footer.jsp" />