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
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的评价</strong></div>
						</div>
						<hr/>

						<div class="single-comments-list mt-0" style="width: 95%;">
							<!--评论列表-->
							<ul class="comment-list">
								<s:iterator value="userComments">
									<li>
										<div class="comment-container">
											<div class="comment-author-vcard">
												<img alt="" src="images/avatar/avatar.png" />
											</div>
											<div class="comment-author-info">
												<span class="comment-author-name"><s:property value="#session.user.name"/></span>
												<a href="#" class="comment-date"><s:property value="commentTime"/></a>
												<p><s:property value="content"/></p>
											</div>
										</div>
									</li>
								</s:iterator>
							</ul>
							<!--评论列表结束-->
						</div>
					</div>
				</div>	
			</div>
			
<s:include value="/WEB-INF/view/aside.jsp"/>
		</div>