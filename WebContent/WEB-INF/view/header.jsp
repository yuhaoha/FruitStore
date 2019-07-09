<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="topbar">
	<div class="container">
		<div class="row">
			<div>
				<div class="topbar-menu">
					<!--导航栏右侧需要在进行设计-->
					<ul class="topbar-menu">
					<s:if test="#session.user==null">
						<li>
								<a href="index.jsp?page=login">登录</a>
						</li>
							</s:if>
							<s:else>
							<li>
								<s:property value="#session.user.name" />
								，欢迎您!
							<a href="logout.action">注销</a>
							</li>
							<li><a href="index.jsp?page=person_info">个人中心</a></li>
							</s:else>
						<li><a href="index.jsp?page=register">注册</a></li>
						
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
