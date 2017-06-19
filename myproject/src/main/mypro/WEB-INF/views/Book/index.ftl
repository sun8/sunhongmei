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
	            <a href="http://count.liqucn.com/d.php?id=33321&amp;urlos=android&amp;from_type=web" target="_blank" class="download" >下载APP</a>
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
    	
    	<!--banner--start-->
    	<div class="banner">
			<ul class="ban_list clearfix">
				<li><a href="javascript:;" alt="《欢乐颂》作者阿耐经典代表作"><img src="img/Book/banner1.jpg" alt="" /></a></li>
				<li><a href="javascript:;" alt="《欢乐颂》作者阿耐经典代表作"><img src="img/Book/banner2.jpg" alt="" /></a></li>
				<li><a href="javascript:;" alt="《欢乐颂》作者阿耐经典代表作"><img src="img/Book/banner3.jpg" alt="" /></a></li>
				<li><a href="javascript:;" alt="《欢乐颂》作者阿耐经典代表作"><img src="img/Book/banner4.jpg" alt="" /></a></li>
				<li><a href="javascript:;" alt="《欢乐颂》作者阿耐经典代表作"><img src="img/Book/banner5.jpg" alt="" /></a></li>
				<li><a href="javascript:;" alt="《欢乐颂》作者阿耐经典代表作"><img src="img/Book/banner6.jpg" alt="" /></a></li>
			</ul>
		</div> 
		<!--banner--end-->
		
		<!--阅读的书籍--start-->
        <div class="m-last-book clearfix">  
        	<span>还没有最近阅读的书籍哟</span>
          <a href="" class="j-gap last-book" ></a>
          <a href="Book/" class="shelf" >书架</a> 
          <i class="sep"></i>          
        </div>
        <!--阅读的书籍--end-->
        
        <!--主编推荐--start-->
        <section class="m-list-box">
        	<!--标题-->
            <h3 class="clearfix">
                <strong class="fl">
                	<em class="sep"></em>
                	<span class="gradient">主编推荐</span>
                </strong>
                <a href="Book/type?type=zbtj&name=zbtj" class="more" >更多<em class="m-arrow"></em></a>
            </h3> 
            <!--内容-->
            <div class="m-book-list">
            	<ul class="clearfix">
	            	<#list zbtj_list as zbtj>
						<#if zbtj_index == 0 || zbtj_index == 1 || zbtj_index ==2>
	            			<li>
			                    <a href="Book/read?id=${zbtj.id}" class="pic">
			                    	<img src="Book/imageShow?fileName=${zbtj.img_name!}" srcset=""/>
			                    </a>
			                    <a href=""  class="info">
			                        <h4>${zbtj.title!}</h4>
			                        <span>【${zbtj.nation!}】${zbtj.username!}</span>
			                    </a>
			                </li>
						</#if>
					</#list>
            	</ul>
                <ul class="clearfix margin0">
            		<#list zbtj_list as zbtj>
						<#if zbtj_index == 3 || zbtj_index == 4 || zbtj_index ==5>
	            			<li>
			                    <a href="Book/read?id=${zbtj.id}" class="pic">
			                    	<img src="Book/imageShow?fileName=${zbtj.img_name!}" srcset=""/>
			                    </a>
			                    <a href=""  class="info">
			                        <h4>${zbtj.title!}</h4>
			                        <span>【${zbtj.nation!}】${zbtj.username!}</span>
			                    </a>
			                </li>
						</#if>
					</#list>
            	</ul>
            </div>   
        </section> 
        <!--主编推荐--end-->
        
        <!--作品欣赏--start-->
        <section class="m-list-box clearfix">
        	<#list gg_list as gg>
				<#if gg_index == 0 || gg_index == 1>
        			<a href="Book/read?id=${gg.id}" title="${gg.title!}" class="sbanner" >
			        	<img src="Book/imageShow?fileName=${gg.img_name!}" srcset=""/>
			        </a>
				</#if>
			</#list>
        </section>
        <!--作品欣赏--end-->
        
        <!--新书上线--start-->
        <section class="m-list-box">
        	<!--标题-->
            <h3 class="clearfix">
                <strong class="fl">
                	<em class="sep"></em>
                	<span class="gradient">新书上线</span>
                </strong>
                <a href="Book/type?type=xssj&name=xssj" class="more" >更多<em class="m-arrow"></em></a>
            </h3> 
            <!--内容-->
            <div class="m-book-list">
            	<ul class="clearfix">
	            	<#list xssj_list as xssj>
						<#if xssj_index == 0 || xssj_index == 1 || xssj_index ==2>
	            			<li>
			                    <a href="Book/read?id=${xssj.id}" class="pic">
			                    	<img src="Book/imageShow?fileName=${xssj.img_name!}" srcset=""/>
			                    </a>
			                    <a href=""  class="info">
			                        <h4>${xssj.title!}</h4>
			                        <span>【${xssj.nation!}】${xssj.username!}</span>
			                    </a>
			                </li>
						</#if>
					</#list>
            	</ul>
                <ul class="clearfix margin0">
            		<#list xssj_list as xssj>
						<#if xssj_index == 3 || xssj_index == 4 || xssj_index ==5>
	            			<li>
			                    <a href="Book/read?id=${xssj.id}" class="pic">
			                    	<img src="Book/imageShow?fileName=${xssj.img_name!}" srcset=""/>
			                    </a>
			                    <a href=""  class="info">
			                        <h4>${xssj.title!}</h4>
			                        <span>【${xssj.nation!}】${xssj.username!}</span>
			                    </a>
			                </li>
						</#if>
					</#list>
            	</ul>
            </div>   
        </section>
        <!--新书上线--end-->
        
        <!--经典排行榜--start-->
        <section class="m-list-box subject-box">            
            <!--标题-->
            <h3 class="clearfix">
                <strong class="fl">
                	<em class="sep"></em>
                	<span class="gradient">经典排行榜</span>
                </strong>
                <a href="Book/type?type=jdph&name=jdph" class="more" >更多<em class="m-arrow"></em></a>
            </h3> 
            <div class="m-book-list">
            	<ul class="clearfix">
            		<#list jdph_list as jdph>
						<#if jdph_index == 0 || jdph_index == 1 || jdph_index ==2>
	            			<li>
			                	<em class="classical">3</em>
			                    <a href="Book/read?id=${jdph.id}" class="pic">
			                    	<img src="Book/imageShow?fileName=${jdph.img_name!}" srcset=""/>
			                    </a>
			                    <a href="Book/read?id=${jdph.id}"  class="info">
			                        <h4>${jdph.title!}</h4>
			                        <span>【${jdph.nation!}】${jdph.username!}</span>
			                    </a>
			                </li>
						</#if>
					</#list>
            	</ul>
            </div> 
        </section>
        <!--经典排行榜--end-->
        
        <!--专题阅读--start-->
        <section class="m-list-box"> 
            <h3 class="clearfix">
                <strong class="fl">
                	<em class="sep"></em>
                	<span class="gradient">专题阅读</span>
                </strong>
            </h3>         
            <div class="m-subject">
            	<#list ztyd_list as ztyd>
					<#if ztyd_index == 0>
            			<a href="Book/special" class="j-gap" title="${ztyd.title!}">
			                <img src="Book/imageShow?fileName=${ztyd.img_name!}" srcset=""/>
			                <h3>${ztyd.title!}</h3>
			                <p>${ztyd.note!}</p>   
			            </a>
					</#if>
				</#list>
            </div>               
            <div class="m-book-item">
                <a href="Book/special" title="重磅好书六一欢乐促  献礼永远的大儿童" class="j-gap">点击阅读专题图书<em class="m-arrow"></em></a>
            </div>
        </section>
        <!--专题阅读--end-->
        
        <!--搜索框-->
        <div class="m-bottom-wrap">
            <section class="m-search">
                <form id="J_Form_bottom" action="Book/search" method="get">
	                <div class="search-input">
	                    <div class="inner">  
	                        <input name="key" id="search-input-bottom" name="name" autocomplete="off" placeholder="搜索资讯源、书籍、杂志" />
	                        <button>搜索</button> 
	                    </div>
	                </div>
                </form>
            </section>
            <div class="ui-line"></div>
            <div class="m-down-btn">
                <a href="http://count.liqucn.com/d.php?id=33321&amp;urlos=android&amp;from_type=web" class="ui-red-light">下载网易云阅读客户端</a>
            </div>
        </div>
        <!--固定定位-->
        <div id="J_GoTop" class="m-gotop"></div>
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
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   <script>
			function(){
				var w = screen.width/40*1.6;
				document.addEventListener('touchstart',function(ev){
				})
				var wrap = document.getElementsByClassName('banner')[0];
				var ul = wrap.getElementsByTagName('ul')[0];
				var lis = ul.getElementsByTagName('li');
				var pressX = 0;
				var ulLeft = 0;
				ul.innerHTML+=ul.innerHTML;
				ul.style.width = lis.length*lis[0].offsetWidth/40+'rem';
				wrap.addEventListener('touchstart',function(ev){
					var ev = ev.changedTouches[0];
					pressX = ev.pageX;
					var num = Math.round((ul.offsetLeft/40)/w);
					ul.style.transition = '';
					if(num==0){
						num = lis.length/2;
						ul.style.left = -num/40*w+'rem';
					}
					if(-num==lis.length-1){
						num = lis.length/2-1;
						ul.style.left = -num/40*w+'rem';
					}
					ulLeft = ul.offsetLeft/40;
				})
				wrap.addEventListener('touchmove',function(ev){
					var ev = ev.changedTouches[0];
					var x = ev.pageX-pressX;
					ul.style.left = x/40+ulLeft+'rem';
				})
				wrap.addEventListener('touchend',function(){
					var num = Math.round((ul.offsetLeft/40)/w);
					ul.style.transition = '.5s';
					ul.style.left = num*w+'rem';
				})
			};
		</script>
</body>
</html>

