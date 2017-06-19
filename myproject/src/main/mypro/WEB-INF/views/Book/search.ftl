<!DOCTYPE html>
<html lang="zh">
<base href="${basePath}">
<head>
	<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
	<title>网易云阅读</title>
	<meta name="keywords" content="小说，免费小说，热门小说，言情小说，官场小说，图书，网易，阅读，网易云阅读">
	<meta name="description" content="网易云阅读提供丰富的原创小说、畅销好书、热门新闻和文章免费在线阅读和下载。包括文学、传记、艺术、经济管理，官场小说、都市小说、言情小说，热血漫画，旅游、电影杂志等。手机上支持Android、iPhone、iPad、Android Pad、Windows Phone、Windows8等多平台免费下载！">
	<!-- 样式引入   -->
	<link rel="stylesheet" href="css/Book/reset.css"/>
	<link rel="stylesheet" href="css/Book/index.css"/>
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
	<!--搜索框(跳转)--start-->
	<div class="g-wrap" >
		<header class="level2">
			<div class="title clear">
				<section class="m-search-book">					 
			    	<a class="left" href="Book/"><span class="ui-leftaw-2"></span></a>
			    	<div class="search-input2">
					    <form id="J_Form" class="clearfix" action="Book/search" method="get" class="f-cb">
							<div class="inner fl">			    
								<button>搜索</button>
								<input type="search" id="name" name="name" value="${name!}" autocomplete="off"  placeholder="欢乐颂" />					
							</div>
							<a href="Book/" class="fl home">首页</a>		
						</form>
					</div>
					<ul id="J_SearchOps" style="display:none;"></ul>
				</section>		
			</div>		
		</header>
		
		<div class="more-bd">
            <!--列表-->
            <div class="book-list" id="J_BookList">
            	<#if all_list??>
					<#list all_list as all>
			    		<div class="taste-bookele mar">
			            	<a class="wrap1 clearfix" href="Book/read?id=${all.id}">
				                <img class="bookcover" src="Book/imageShow?fileName=${all.img_name!}" alt="30岁前，最好的修行是恋爱">
				                <h3>${all.name}</h3>
				                <p>${all.username}/${all.book_type}</p>
				                <span class="abstract">${all.note}
				                </span>
				            </a>
			        	</div>
					</#list>
            	</#if>
        	</div>
    	</div>
	
		<section class="m-search-key" id="J_content">	
			<dl class="m-hotkey">
				<dt>大家都在搜</dt>
				<dd>
					<a href=""><em class="new"></em>永恒的边缘</a>							
					<a href=""><em class="hot"></em>阿耐</a>							
					<a href=""><em class="hot"></em>欢乐颂</a>							
					<a href=""><em class="hot"></em>白鹿原</a>							
					<a href=""><em class="new"></em>宠爱入骨，首席的意外新妻</a>							
					<a href=""><em class="hot"></em>人民的名义</a>							
					<a href=""><em class="new"></em>侯沧海商路笔记</a>							
					<a href=""><em class="hot"></em>婚浅情深：总裁诱妻上瘾</a>							
					<a href=""><em class=""></em>一代医后</a>							
					<a href=""><em class="hot"></em>月关</a>							
				</dd>
			</dl>
			<dl class="m-historykey">
				<dt>
					最近搜索<span class="clear" id="clearHistory"></span>
				</dt>					
				<dd id="searchHistory"></dd>
			</dl>			
		</section>
	</div>
	<!--搜索框(跳转)--end-->
</body>
</html>