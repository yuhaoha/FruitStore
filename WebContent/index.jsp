<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0" />
<title>Home</title>
<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css"/>
<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css"/>
<link href="css/personal.css" rel="stylesheet" type="text/css"/>
<link href="css/orstyle.css" rel="stylesheet" type="text/css"/>
<script src="AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
<script src="AmazeUI-2.4.2/assets/js/amazeui.js" type="text/javascript"></script>

<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/ionicons.min.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/owl.theme.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/settings.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/custom.css" type="text/css" media="all" />
<link
	href="http://fonts.googleapis.com/css?family=Great+Vibes%7CLato:100,100i,300,300i,400,400i,700,700i,900,900i"
	rel="stylesheet" />
</head>
<body>
	<div class="noo-spinner">
		<div class="spinner">
			<div class="cube1"></div>
			<div class="cube2"></div>
		</div>
	</div>
	<div class="site">
		<s:include value="/WEB-INF/view/header.jsp" />
		<s:include value="/WEB-INF/view/nav.jsp" />
		<s:if test="#parameters.page==null">
        <s:include value="/WEB-INF/view/index.jsp"/>
      	</s:if>
		<s:if test="#parameters.action!=null">
      	<s:action name="%{#parameters.action}" executeResult="true"/>      	
      	</s:if>
      	<s:elseif test="#parameters.page!=null">
        <s:include value="/WEB-INF/view/%{#parameters.page}.jsp"/>
      	</s:elseif>
	</div>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/modernizr-2.7.1.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="js/imagesloaded.pkgd.min.js"></script>
	<script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="js/jquery.isotope.init.js"></script>
	<script type="text/javascript" src="js/script.js"></script>

	<script type="text/javascript" src="js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript"
		src="js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.migration.min.js"></script>
	<script type="text/javascript"
		src="js/extensions/revolution.extension.parallax.min.js"></script>

</body>
</html>