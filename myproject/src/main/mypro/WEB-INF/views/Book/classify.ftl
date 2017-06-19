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
    	
 		 <!--分类(跳转)--start-->
        
		<section class="m-lib men">
			<h3><a href=""><em class="sep"></em>男生小说</a></h3>
			<table>
				<tr>
					<td><a href="" class='hot' >都市生活</a></td>
					<td><a href="" class='hot' >官场职场</a></td>
					<td><a href=""  >玄幻仙侠</a></td>
				</tr>
				<tr>
					<td><a href=""  >悬疑探险</a></td>
					<td><a href=""  >军事谍战</a></td>
					<td><a href=""  >科幻奇幻</a></td>
				</tr>
				<tr>
					<td><a href=""  >同人网游</a></td>
					<td><a href=""  >灵异恐怖</a></td>
					<td><a href=""  >历史传奇</a></td>
				</tr>
				<tr>
					<td><a href=""  >短篇小说</a></td>
				<tr>
			</table>
		</section>
		
		<section class="m-lib women">
			<h3><a href=""><em class="sep"></em>女生小说</a></h3>
			<table>
				<tr>
					<td><a href=""  >都市言情</a></td>
					<td><a href=""  >穿越架空</a></td>
					<td><a href="" class='hot' >宫斗宅斗</a></td>
				</tr>
				<tr>
					<td><a href=""  >古风古韵</a></td>
					<td><a href="" >种田重生</a></td>
					<td><a href=""  >浪漫青春</a></td>
				</tr>
				<tr>
					<td><a href=""  >同人网游</a></td>
					<td><a href=""  >仙侠幻情</a></td>
					<td><a href=""  >灵异推理</a></td>
				</tr>
				<tr>
					<td><a href=""  >短篇美文</a></td>
				</tr>
			</table>
		</section>

		<section class="m-lib book">
			<h3><a href=""><em class="sep"></em>图书书库</a></h3>
			<table>
				<tr>
					<td><a href="" class='hot' >小说作品</a></td>
					<td><a href="" class='hot' >人文社科</a></td>
					<td><a href=""  >品质生活</a></td>
				</tr>
				<tr>
					<td><a href=""  >两性情感</a></td>
					<td><a href=""  >成功励志</a></td>
					<td><a href=""  >经济管理</a></td>
				</tr>
				<tr>
					<td><a href=""  >文学作品</a></td>
					<td><a href=""  >文化艺术</a></td>
					<td><a href=""  >自然科学</a></td>
				</tr>
				<tr>
					<td><a href=""  >亲子少儿</a></td>
					<td><a href=""  >计算机</a></td>
					<td><a href=""  >培训考试</a></td>
				</tr>
				<tr>
					<td><a href=""  >杂志期刊</a></td>
					<td><a href=""  >外文外版</a></td>
				</tr>
			</table>
		</section>
        <!--分类(跳转)--end-->
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

