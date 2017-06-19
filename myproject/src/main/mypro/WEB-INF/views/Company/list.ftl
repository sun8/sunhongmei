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
		<!--常用积分网站-->
		<#--<#list company as com>
			<div class="siteList">
					<img src="Company/imageShow?fileName=${com.company_logo_name!}" width="100%" height="100%" class="siteImg">
					<a href="Company/jfsc?comid=${com.id!}" class="site"><p class="siteDes">${com.company_note!}</p></a>
					<p class="siteName">${com.company_name!}</p>
			</div>
		</#list>-->
		<#if company?size <1 >
			<div class="site" id="">
				<p class="siteDes">没有可显示的数据</p>					
			</div>
		</#if>
		<#list company as com>
				<div class="site" id="">
					<img src="Company/imageShow?fileName=${com.company_logo_name!}" width="100px" height="100px" class="siteImg">
					<a href="Company/jfsc?comid=${com.id!}">
						<p class="siteDes">${com.company_note!}</p>					
					</a>
					<p class="siteName">${com.company_name!}</p>
				</div>				
		</#list>
		
		<!--加载更多-->
		<#--<div class="more">加载更多...</div>-->
	</div>
</body>

</html>