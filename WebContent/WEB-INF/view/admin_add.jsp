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
						<strong class="am-text-danger am-text-lg">商品管理</strong>
					</div>
				</div>
				<hr />

					<form action="adminAddGood" method="post" enctype="multipart/form-data">
						<div class="col-md-6 login-do">
							<div>
								<input type="text" placeholder="商品名称" name="name">
							</div>
							<div style="margin-top: 20px; margin-bottom: 20px;">
								<input type="text" placeholder="商品类型" name="type">
							</div>
							<div style="margin-top: 20px; margin-bottom: 20px;">
								<input type="text" placeholder="商品描述" name="description">
							</div>
							<div style="margin-top: 20px; margin-bottom: 20px;">
								<input type="text" placeholder="商品价格" name="price">
							</div>
							<div style="margin-top: 20px; margin-bottom: 20px;">
								<input type="text" placeholder="图片路径：如images/shop/shop_6.jpg" name="pictures">
							</div>
							<input type="submit" value="增添商品">
						</div>
					</form>
					

							<%-- 					<form action="perUpload" method="post"
						enctype="multipart/form-data">
						<input type="file" name='path'><select name='categoryId'>
							<c:if test="${!empty categoryList}">
								<option>请选择图片相册</option>
								<c:forEach items="${categoryList}" var="category">
									<option value='${category.id}'>${category.name}</option>
								</c:forEach>
							</c:if>
						</select> <input type="submit" value="BUTTON">
					</form> --%>
<!-- 				</div> -->
			</div>
		</div>
	</div>
	<s:include value="/WEB-INF/view/aside.jsp" />