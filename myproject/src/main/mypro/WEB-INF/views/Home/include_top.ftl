<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${basePath}">
<base href="${basePath}">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>小徐科技</title>
<meta name="keywords" content="小徐科技">
<meta name="description" content="小徐科技">
<meta name="mobile-agent" content="format=xhtml;url=http://m.fuzikeji.cn/">
<link rel="stylesheet" type="text/css" href="css/Home/reset.css" />
<link rel="stylesheet" type="text/css" href="css/Home/different.css" />
<link rel="stylesheet" type="text/css" href="css/Home/comment.css" />
<script src="js/Home/html5shiv.js"></script>
</head>
<body>
<!-- header -->
    <div class="wrap">
        <header class="width1200">
            <h1 class="logo">
                <img src="images/Home/1.png" border="0" alt="" />
            </h1>
            <nav>
                <a href="Home/?type=index" <#if type == 'index'>style="color:red;"</#if>>首页</a>
                <a href="Home/?type=about_us" <#if type == 'about_us'>style="color:red;"</#if>>关于我们</a>
                <a href="Home/?type=product" <#if type == 'product'>style="color:red;"</#if>>视频中心</a>
                <a href="Home/?type=service" <#if type == 'service'>style="color:red;"</#if>>服务中心</a>
                <a href="Home/?type=news" <#if type == 'news'>style="color:red;"</#if>>新闻中心</a>
                <a href="Home/?type=successful" <#if type == 'successful'>style="color:red;"</#if>>成功案例</a>
                <a href="Home/?type=talent" <#if type == 'talent'>style="color:red;"</#if>>人才招聘</a>
                <a href="Home/?type=contact_us" <#if type == 'contact_us'>style="color:red;"</#if>>联系我们</a>
            </nav>
            <form id="new_url"  method="post" action="Home/?type=index">
        </header>
    </div>
    <!--轮播图-->
    <div class="banner">
        <img src="images/Home/2.png" alt="" id="pic" />
        <div id="next"></div>
        <div id="prev"></div>
        <p class="circular">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </p>
    </div>
    <script type="text/javascript">
    	function open_url(value){
    		alert(value);
    		$("#new_url").submit();
    	}
    </script>
</body>
<script src="js/Home/jquery-3.2.1.js"></script>
<script src="js/Home/main.js"></script>
