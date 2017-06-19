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
<title>和包电子券充值</title>
<link rel="stylesheet" href="staticResource/yaoyiyao/css/style.css"/>
</head>
<body>
<div class="wrap">
    <div class="top">
        <div class="product">
            <img src="staticResource/yaoyiyao/images/proBg.png" class="proBg">
			<#if code == '' || code == '1'>
	            <img src="staticResource/yaoyiyao/images/moive.png" class="moive">
	            <p class="tips">影票代金券，仅在积分荟可用<br>代金券以短信形式48小时内下发</p>
            </#if>
            <#if code == '' || code == '2'>
	            <p class="word">30元Q币</p>
	            <p class="tips">Q币以短信形式48小时内下发</p>
	        </#if>
            <#if code == '3'>
	            <p class="word">20M流量</p>
    	        <p class="tips">流量48小时内充值到你手机</p>
    	    </#if>
        </div>
        <img src="staticResource/yaoyiyao/images/title.png" class="voice">
        <div class="methods"><button>充Q币</button><button>充流量</button><button>影票代金券</button></div>
        <p class="tip">点击立即充值，和包电子券短信立即下发~</p>
        <p class="give">和包电子劵充值成功再送 >>></p>
        <p class="givething">50元电影代金券</p>
        <p class="small">电影代金券以短信形式48小时内下发</p>
        <#--<a href="Tv/index?state=${phone!}&type=${type!}" class="recharge">立即去充值</a>-->
        <!--<a href="https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxb65aba4db4f9b6c2&redirect_uri=http%3A%2F%2Fwx.jifenh.com%2Fwxjfh%2FTv%2Findex&response_type=code&scope=snsapi_base&state=${state!}&type=${code!}#wechat_redirect" class="recharge">立即去充值</a>-->
        <a href="Tv/index?phone=&code=${code!}&openid=${openid!}" class="recharge">立即去充值</a>
    </div>

    <div class="bottom">
        <img src="staticResource/yaoyiyao/images/yyqr.png">
    </div>
</div>
</body>