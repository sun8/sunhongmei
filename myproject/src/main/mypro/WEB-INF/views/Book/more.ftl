<!DOCTYPE html>
<html lang="zh">
<base href="${basePath}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>书籍详情</title>
	<meta name="keywords" content="小说，免费小说，热门小说，言情小说，官场小说，图书，网易，阅读，网易云阅读">
	<meta name="description" content="网易云阅读提供丰富的原创小说、畅销好书、热门新闻和文章免费在线阅读和下载。包括文学、传记、艺术、经济管理，官场小说、都市小说、言情小说，热血漫画，旅游、电影杂志等。手机上支持Android、iPhone、iPad、Android Pad、Windows Phone、Windows8等多平台免费下载！">

	<!-- 样式引入   -->
	<link rel="stylesheet" href="css/Book/reset.css"/>
	<link rel="stylesheet" href="css/Book/index.css"/>
	<link rel="stylesheet" href="css/Book/bookDetails.css"/>
	<link rel="stylesheet" href="css/Book/comment.css"/>
	<link rel="stylesheet" href="css/Book/different.css"/>
		
	<!-- 获取设备的宽  -->	
	<script type="text/javascript">
		var iScale=1/window.devicePixelRatio;
		document.write('<meta name="viewport" content="width=device-width,initial-scale='+iScale+',minimum-scale='+iScale+',maximum-scale='+iScale+',user-scalable=no"/>');
		var iWidth=document.documentElement.clientWidth;
		document.getElementsByTagName('html')[0].style.fontSize=iWidth/16+ 'px';
	</script>
	<!-- 图标  -->
	<link rel="shortcut icon" href="//yuedust.yuedu.126.net/assets/mobile/images/favicon/favicon.ico" />
	<!-- Standard iPhone -->  
	<link rel="apple-touch-icon-precomposed" sizes="57x57" href="//yuedust.yuedu.126.net/assets/mobile/images/favicon/favicon-114.png" />  
	<!-- Retina iPhone -->  
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="//yuedust.yuedu.126.net/assets/mobile/images/favicon/favicon-114.png" />  
	<!-- Standard iPad -->  
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="//yuedust.yuedu.126.net/assets/mobile/images/favicon/favicon-144.png" />  
	<!-- Retina iPad -->  
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="//yuedust.yuedu.126.net/assets/mobile/images/favicon/favicon-144.png" /> 
</head>
<body>
	<!--首页更多(跳转)--start-->
	<div class="g-wrap" >
		<!--header--start-->
		<header class="level2">
			<section class="title clearfix">
				<a class="mid" href="javascript:;">${name!}</a>
				<a class="left" href="index.html">
					<span class="ui-leftaw-2"></span>
				</a>
				<a class="right" href="Book/">首页</a>
			</section>
		</header>
		<!--header--end-->
		
		<div class="more-bd">
            <!--列表-->
            <div class="book-list" id="J_BookList">
            	<#list more_list as more>
		    		<div class="taste-bookele mar">
		            	<a class="wrap1 clearfix" href="Book/read?id=${more.id}">
			                <img class="bookcover" src="img/Book/11.jpg" alt="30岁前，最好的修行是恋爱">
			                <h3>${more.name}</h3>
			                <p>${more.username}/${more.book_type}</p>
			                <span class="abstract">${more.note}
			                </span>
			            </a>
		        	</div>
				</#list>
        	</div>
    	</div>
	</div>
	<!--首页更多(跳转)--end-->
	
	<!--footer--start-->
   	<footer>
		<nav class="channel">
			<a href="man.html">男生</a>
			<a href="man.html">女生</a>
			<a href="index.html">出版</a>
			<a href="javascript:;">客服</a>
			<a href="javascript:;">微信</a>
		</nav>
		<nav>
			<a href="javascript:;">客户端</a>
			<a href="javascript:;">帮助</a>
			<a href="javascript:;">反馈</a>
			<a href="javascript:;" class="cur">触屏版</a>
			<a href="javascript:;">电脑版</a>
		</nav>
		<div class="m-right"><p>网易公司版权所有©1997-2017</p></div>
	</footer>
   	<!--footer--end-->
</body>
</html>
