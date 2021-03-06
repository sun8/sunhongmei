<!DOCTYPE html>
<html lang="zh">
<base href="${basePath}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>口味</title>
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
	<div class="wrap">
		<!--header--start-->
        <header>
        	<!--导航条-->
	        <section class="head clearfix">
	            <h1 class="logo">网易云阅读</h1>
	            <a href="/client" class="download" >下载APP</a>
	            <div class="headR">
	            	<a href="Book/search"  class="search fl" >搜索</a>
	            	<i class="sep fl"></i>
	            	<a href="Book/" class="account fl" >帐户</a>    
	            </div>
	        </section>
	        <!--选择菜单-->
	        <ul class="menu clearfix">
	        	<li>
	            	<a  href="Book/ts_type?type=man" >男频</a>
	            </li>
	            <li>
	            	<a href="Book/ts_type?type=man" >女频</a>
	            </li>
	            <li>
	            	<a  href="Book/" >出版</a>
	            </li>
	            <li>
	            	<a  href="Book/ts_type?type=classify" >分类</a>
	            </li>
	            <li>
	            	<a href="Book/ts_type?type=free" >免费</a>
	            </li>
	            <li>
	            	<a  href="Book/ts_type?type=taste" >口味</a>
	            </li>
	            <li>
	            	<a  href="Book/ts_type?type=ranking" >排行</a>
	            </li>
	            <li>
	            	<a href="Book/ts_type?type=account" class="recharge" >充值</a>
	            </li>           
	        </ul>
    	</header>
    	<!--header--end-->
    	
 		<!--口味(口味跳转)--start-->
		<div class="g-bd">
			<!--私人订制-->
            <div class="m-taste">
                <a class="j-cate" href="/taste/select.do">
                	<span class="m-tip">
        				<b class="m-arrow"></b>
    				</span>
        			<p class="m-status m-status-empty">
        				<b class="u-tag"></b>设定阅读基因，为你私人定制
        			</p>
    			</a>
            </div>
            <!--加载-->
            <div class="u-loading" style="display:none;">
            	<b></b> 正在加载...
            </div>
            <!--列表-->
            <div class="book-list" id="J_BookList">
        		<div class="taste-bookele">
	            	<a class="wrap1 clearfix" href="">
		                <img class="bookcover" src="img/11.jpg" alt="30岁前，最好的修行是恋爱">
		                <h3>30岁前，最好的修行是恋爱</h3>
		                <p>苏芩/两性关系</p>
		                <span class="abstract">苏芩与迷茫都市人心灵对话：“你最该去的地方，是自己的内心，去看看那颗心，你要做你的一心之主。然后，所有的一切，从这里开始！”作者以此传达给大家：心境变了，世界就变了，你变好，世界跟着变好！
		 一本风靡都市白领间充满正向能量的情感励。
		                </span>
		            </a>
	        	</div>
        	</div>
    	</div>
		<!--口味--end-->
	</div>
   	
   		<!--footer--start-->
   	<footer>
		<nav class="channel">
			<a href="/yc">男生</a>
			<a href="/ycmm">女生</a>
			<a href="/book">出版</a>
			<a href="/help/about.do">客服</a>
			<a href="/help/weixin.do">微信</a>
		</nav>
		<nav>
			<a href="/client">客户端</a>
			<a href="/help">帮助</a>
			<a href="https://fankui.163.com/ft/comment.fb?pid=11001">反馈</a>
			<a href="/" class="cur">触屏版</a>
			<a href="https://yuedu.163.com/index">电脑版</a>
		</nav>
		<div class="m-right"><p>网易公司版权所有©1997-2017</p></div>
	</footer>
   	<!--footer--end-->
 
   
   


</body>
</html>

