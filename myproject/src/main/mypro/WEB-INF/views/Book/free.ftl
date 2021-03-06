<!DOCTYPE html>
<html lang="zh">
<base href="${basePath}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>网易云阅读</title>
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
<body style="height: 110rem;">
	<div class="wrap">
		<!--header--start-->
        <header>
        	<!--导航条-->
	        <section class="head clearfix">
	            <h1 class="logo">网易云阅读</h1>
	            <a href="Book/" class="download" >下载APP</a>
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
    	
 		 <!--限时畅读--start-->
        <section class="m-list-box">
        	<h3 class="clearfix">
                <strong class="fl">
                	<em class="sep"></em>
                	<span class="gradient">限时畅读</span>
                </strong>
                <div class="m-freecount"  date="2017-06-05 12:00">
                	<b>00</b>:<b>00</b>:<b>00</b>
                </div>
                <a href="more.html" class="more" >更多<em class="m-arrow"></em></a>
                
           </h3>      
            <ul class="m-free-list">
                <li>
                    <a href="" class="clearfix" title=" 妖孽兵王">
                         <img src="img/man.jpg" alt=" 妖孽兵王">
                         <h3> 妖孽兵王</h3>
                         <p>笔仙在梦游/都市生活</p>                    
                         <p>重回都市，本想安逸生活，却卷进地下势力倾轧之中！</p>
                         <p>限时畅读<del>3300阅点</del></p>
                    </a> 
                </li>
                <li>
                    <a href="" class="clearfix" title="仙噬">
                         <img src="img/man.jpg" alt="仙噬">
                         <h3>仙噬</h3>
                         <p>颓废的烟121/玄幻仙侠</p>                    
                         <p>凭借着逆天的吞噬灵根，他步步为营，朝着天道最顶端靠近！</p>
                         <p>限时畅读<del>14000阅点</del></p>
                    </a> 
                </li>
                <li>
                    <a href="" class="clearfix" title="深圳迷城">
                         <img src="img/man.jpg" alt="深圳迷城">
                         <h3>深圳迷城</h3>
                         <p>仰者观望于天/官场职场</p>                    
                         <p>我们的爱欲情仇，挣扎，奋斗，梦想……都发生在这里。</p>
                         <p>限时畅读<del>11000阅点</del></p>
                    </a> 
                </li>                      
            </ul>          
        </section>
        <!--限时畅读--end-->
        <!--搜索框-->
        <div class="m-bottom-wrap">
            <section class="m-search">
                <form id="J_Form_bottom" action="" method="get">
	                <div class="search-input">
	                    <div class="inner">  
	                        <input name="key" id="search-input-bottom" autocomplete="off" placeholder="搜索资讯源、书籍、杂志" />
	                        <button>搜索</button> 
	                        <a class="delete" href="/"></a>
	                    </div>
	                </div>
                </form>
            </section>
            <div class="ui-line"></div>
            <div class="m-down-btn">
                <a href="/download" class="ui-red-light">下载网易云阅读客户端</a>
            </div>
        </div>
   	</div>
   	
   	<!--footer--start-->
   	<footer>
	    <nav>
	        <a href="/client">客户端</a>
	        <a href="/help">帮助</a>
	        <a href="">反馈</a>
	        <a href="/" class="cur">触屏版</a>
	        <a href="">电脑版</a>
	    </nav>
	    <div class="m-right"><p>网易公司版权所有&#169;1997-2017<span id="J_Copyright"></span></p></div>
	</footer>
   	<!--footer--end-->
   
   


</body>
</html>

