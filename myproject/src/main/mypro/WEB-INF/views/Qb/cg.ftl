<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="${basePath}">
	<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="grey" />
	<meta name="format-detection" content="telephone=no"/>
	<title>充值成功</title>
	<link rel="stylesheet" href="css/index.css"/>
</head>
<body>
	<div class="top">
		<div class="successImg"></div>
		<p class="successTip">和包电子券支付成功</p>
	</div>

	<div class="confirm">
		<#if type="1">
			<p>充值QQ号码：${qqno!}</p>
		</#if>
		<p>充值手机号码：${phone!}</p>
		<p>电子劵消费金额：${money!}元</p>
		<#if type="1">
			<p>实际兑换Q币：${czje!}元</p>			
		<#else>
			<p>实际兑换话费:${czje!}元</p>
		</#if>
		
		<p>充值时间：2016.1.7    15:22</p>
	</div>

	<div class="again"><a href="${url!}">再充值一次</a></div>

	<div class="qrcode">
		<img src="images/QR.jpg">
		<p>长按二维码关注积分荟，更多惊喜等待你~</p>
		<p>客服热线：400-6500-8820</p>
	</div>
</body>
</html>