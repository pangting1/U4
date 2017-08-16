<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!--
		Charisma v1.0.0

		Copyright 2012 Muhammad Usman
		Licensed under the Apache License v2.0
		http://www.apache.org/licenses/LICENSE-2.0

		http://usman.it
		http://twitter.com/halalit_usman
	-->
<meta charset="utf-8">
<title>Free HTML5 Bootstrap Admin Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
<meta name="author" content="Muhammad Usman">

<!-- The styles -->
<link id="bs-css" href="/statics/css/bootstrap-cerulean.css"
	rel="stylesheet">
<style type="text/css">
body {
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}
</style>
<link href="/statics/css/bootstrap-responsive.css" rel="stylesheet">
<link href="/statics/css/charisma-app.css" rel="stylesheet">
<link href="/statics/css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
<link href='/statics/css/fullcalendar.css' rel='stylesheet'>
<link href='/statics/css/fullcalendar.print.css' rel='stylesheet'
	media='print'>
<link href='/statics/css/chosen.css' rel='stylesheet'>
<link href='/statics/css/uniform.default.css' rel='stylesheet'>
<link href='/statics/css/colorbox.css' rel='stylesheet'>
<link href='/statics/css/jquery.cleditor.css' rel='stylesheet'>
<link href='/statics/css/jquery.noty.css' rel='stylesheet'>
<link href='/statics/css/noty_theme_default.css' rel='stylesheet'>
<link href='/statics/css/elfinder.min.css' rel='stylesheet'>
<link href='/statics/css/elfinder.theme.css' rel='stylesheet'>
<link href='/statics/css/jquery.iphone.toggle.css' rel='stylesheet'>
<link href='/statics/css/opa-icons.css' rel='stylesheet'>
<link href='/statics/css/uploadify.css' rel='stylesheet'>

<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

<!-- The fav icon -->
<!--  <link  rel="shortcut icon" href="/statics/img/favicon.ico">-->
<script type="text/javascript">
	var tt = '${mList}';
</script>

</head>

<body>
	<!-- topbar starts -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> </a> <a class="brand" href="index.html"> <img
					alt="Charisma Logo" src="/statics/img/logo20.png" /> <span>会员商城登录中</span>
				</a>

				<!-- theme selector starts -->
				<div class="btn-group pull-right theme-container">
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-tint"></i><span class="hidden-phone"> 改变主题皮肤
							</span> <span class="caret"></span> </a>
					<ul class="dropdown-menu" id="themes">
						<li><a data-value="classic" href="#"><i
								class="icon-blank"></i> Classic</a>
						</li>
						<li><a data-value="cerulean" href="#"><i
								class="icon-blank"></i> Cerulean</a>
						</li>
						<li><a data-value="cyborg" href="#"><i class="icon-blank"></i>
								Cyborg</a>
						</li>
						<li><a data-value="redy" href="#"><i class="icon-blank"></i>
								Redy</a>
						</li>
						<li><a data-value="journal" href="#"><i
								class="icon-blank"></i> Journal</a>
						</li>
						<li><a data-value="simplex" href="#"><i
								class="icon-blank"></i> Simplex</a>
						</li>
						<li><a data-value="slate" href="#"><i class="icon-blank"></i>
								Slate</a>
						</li>
						<li><a data-value="spacelab" href="#"><i
								class="icon-blank"></i> Spacelab</a>
						</li>
						<li><a data-value="united" href="#"><i class="icon-blank"></i>
								United</a>
						</li>
					</ul>
				</div>
				<!-- theme selector ends -->

				<!-- user dropdown starts -->
				<div class="btn-group pull-right">
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-user"></i><span class="hidden-phone"> admin</span>
						<span class="caret"></span> </a>
					<ul class="dropdown-menu">
						<li><a href="#">质料</a>
						</li>
						<li class="divider"></li>
						<li><a href="login.html">注销</a>
						</li>
					</ul>
				</div>
				<!-- user dropdown ends -->

				<div class="top-nav nav-collapse">
					<ul class="nav">
						<li><a href="#">查询</a>
						</li>
						<li>
							<form class="navbar-search pull-left">
								<input placeholder="请输入" class="search-query span2"
									name="query" type="text">
							</form></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<!-- topbar ends -->
	<div class="container-fluid">
		<div class="row-fluid">

			<!-- left menu starts -->
			<div class="span2 main-menu-span">
				<div class="well nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu" id="menus"></ul>
					<!-- 
					<label id="for-is-ajax" class="hidden-tablet" for="is-ajax"><input id="is-ajax" type="checkbox"> Ajax on menu</label>
				 	-->
				</div>
				<!--/.well -->
			</div>
			<!--/span-->
			<!-- left menu ends -->

			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>
						You need to have <a href="http://en.wikipedia.org/wiki/JavaScript"
							target="_blank">JavaScript</a> enabled to use this site.
					</p>
				</div>
			</noscript>

			<div id="content" class="span10">