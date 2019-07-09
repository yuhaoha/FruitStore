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
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">商品管理</strong></div>
						</div>
						<hr/>

						<div>
						        <table class="table table-striped table-bordered table-hover" >
						            <thead>
						                <tr>
						                    <th>商品id</th>
						                    <th>商品名称</th>
						                    <th>商品价格</th>
						                    <th>操作</th>
						                </tr>
						            </thead>
						            <tbody>
						            	<s:iterator value="adminGoods">
							                <tr class="odd gradeX">
							                    <td><s:property value="id"/></td>
							                    <td><s:property value="name"/></td>
							                    <td>￥<s:property value="price"/></td>
							                    <td>
													<a href="adminRemoveGood.action?goodId=<s:property value="id" />">删除</a>
												</td>
							                </tr>
						                </s:iterator>
						            </tbody>
						        </table>
						        <!-- <table class="table table-striped table-bordered table-hover" style="margin-top:10%;" >
						            <thead>
						                <tr>
						                    <th>商品名称</th>
						                    <th>商品价格</th>
						                    <th>商品类型</th>
						                    <th>商品图片</th>
						                    
						                    <th>操作</th>
						                </tr>
						            </thead>
						            <tbody>
							        	<tr class="odd gradeX">
							                <td><input type="text" name="请输入商品名称" /></td>
							                <td><input type="text" name="请输入商品价格" /></td>
							                <td>
												<input type="submit" value="添加" />
											</td>
							        	</tr>
						            </tbody>
						        </table> -->
						</div>
					</div>
				</div>	
			</div>
<s:include value="/WEB-INF/view/aside.jsp"/>