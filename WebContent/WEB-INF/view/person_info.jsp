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

					<div class="user-info">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong></div>
						</div>
						<hr/>

						<!--个人信息 -->
						<div class="info-main">
							<form class="am-form am-form-horizontal">

								<div class="am-form-group">
									<label for="user-name2" class="am-form-label">用户昵称:</label>
									<div class="am-form-content" style="margin-top: 8px; margin-left:10px;">
										<span style="margin-left: 20px;"><s:property value="#session.user.name"/></span>
									</div>
								</div>

								<div class="am-form-group">
									<label for="user-phone" class="am-form-label" style="margin-left:2px;">登陆账号:</label>
									<div class="am-form-content" style="margin-top: 8px;">
										<span style="margin-left: 20px;"><s:property value="#session.user.loginId"/></span>
									</div>
								</div>

							</form>
						</div>

					</div>

				</div>
			</div>

			<s:include value="/WEB-INF/view/aside.jsp"/>
		</div>
		
		