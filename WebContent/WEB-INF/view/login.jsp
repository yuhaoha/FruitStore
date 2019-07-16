<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
		<div id="main">
<!-- 			<div class="section section-bg-10 pt-11 pb-17">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<h2 class="page-title text-center">Login</h2>
						</div>
					</div>
				</div>
			</div> -->

			<div class="section pt-7 pb-7">
				<div class="container" style="margin-top: -30px;">
					<div class="row">
						<s:form action="login" method="post">
							<div class="col-md-6 login-do">
								<div>
									<input type="text" placeholder="用户名" name="loginId">
								</div>
								<div style="margin-top: 20px; margin-bottom: 20px;">
									<input type="password" placeholder="密码" name="password">
								</div>
								<input type="submit" value="登录">
							</div>
							<div class="col-md-6" style="margin-top: -10px;">
								<h4>永久免费注册账号</h4>
								<div style="margin-top: 5px;">
									<p>我们的水果商店，每天从全球各地进口最新鲜的水果，种类丰富，价格便宜，比超市更新鲜便宜。我们的物流保证您订单24小时内收到水果，不必再为等待快递而烦恼。心动不如行动，快来购物吧！</p>
									<h6>
										<a href="index.jsp?page=register">点击注册，加入我们</a>
									</h6>
								</div>
						</s:form>
					</div>
				</div>
			</div>
		</div>
		<s:include value="/WEB-INF/view/footer.jsp" />