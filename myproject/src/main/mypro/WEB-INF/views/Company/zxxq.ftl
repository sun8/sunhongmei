<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="${basePath}">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="grey" />
	<meta name="format-detection" content="telephone=no"/>
	<title>积分黄页</title>
	<link rel="stylesheet" href="css/integral.css"/>
</head>
<body>
	<div class="wrap">
		<img src="Company/imageShow?fileName=${company.company_url_img!}" class="detailBanner" >

		<p class="proTitle">${company.company_name!}</p>
		<div class="proDetail">
			<#--<p style="font-size:1rem;">商城介绍：</p>-->
			<p>${company.company_note!}
			<img src="Company/imageShow?fileName=${company.company_url_twjs!}" >
		</div>

		<div class="box mobileLink">
			<p>移动版网址</p>
			<span style="display:block;width:65%;overflow:hidden;white-space:nowrap;">${company.company_url!}</span>
			<a href="${company.company_url!}">点击进入</a>
		</div>
		<div class="box PCLink">
			<p>PC版网址(请在电脑上操作 ）</p>
			<span>${company.company_add!}</span>
		</div>
			<#if company.company_android != '' || company.company_ios != '' || company.company_ewm != ''>
				<div class="box apps">
				<p>APP（${company.company_name!}）</p>
			</#if>
			<#if company.company_android != ''><a href="${company.company_android!}" class="android"><img src="images/android.png"></a></#if>
			<#if company.company_ios != ''><a href="${company.company_ios!}" class="iphone"><img src="images/iphone.png"></a></#if>
			<#if company.company_ewm != ''><a href="${company.company_ewm!}" class="jfh"><img src="images/jfh.png"></a></#if>
			<#if company.company_android != '' || company.company_ios != '' || company.company_ewm != ''>
				</div>			
			</#if>
	</div>
</body>
</html>