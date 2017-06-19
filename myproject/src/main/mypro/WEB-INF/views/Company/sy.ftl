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
		<!--四个入口-->
		<div class="enterContainer">
			<a href="Company/list?type=1" class="enter enter-1"><img src="images/enter-1.png"></a>
			<a href="Company/list?type=2" class="enter enter-2"><img src="images/enter-2.png"></a>
			<a href="Company/list?type=3" class="enter enter-3"><img src="images/enter-3.png"></a>
			<a href="Company/list?type=4" class="enter enter-4"><img src="images/enter-4.png"></a>
		</div>

		<!--常用积分网站-->
		<div class="siteList">
			<h2 class="line-title"><span>常用积分网站</span></h2>
			<#list company as com>
				<div class="site" id="">
					<img alt="image" width="100px" height="100px" src="Company/imageShow?fileName=${com.company_logo_name!}" class="siteImg">
					<a href="Company/jfsc?comid=${com.id!}">
						<p class="siteDes">${com.company_note!}</p>					
					</a>
					<p class="siteName">${com.company_name!}</p>
				</div>				
			</#list>
		</div>

		<!--加载更多-->
		<#--<div class="more"><a onclick="more();">加载更多...</a></div>-->
	</div>
</body>
<script>
</script>
</html>