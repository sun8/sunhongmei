<!DOCTYPE html>
<html lang="zh">
<base href="${basePath}">
<head>
	<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
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
<body style="height: 70rem;">
	<!--首页点击图片的(跳转)--start-->
	<div class="g-wrap" >
		<!--header--start-->
		<header class="level2">
			<section class="title clearfix">
				<a class="mid" href="javascript:;">书籍详情</a>
				<a class="left" href="">
					<span class="ui-leftaw-2"></span>
				</a>
					<a class="right" href="Book/">首页</a>
					<a class="left-search" href="">
						<span class="ui-search"></span>
					</a>
			</section>
		</header>
		<!--header--end-->
		
		<!--书籍内容展示--start-->
		<section class="m-book-info">
			<div class="info">
				<div class="img">
					<img src="img/Book/book.jpg" />
				</div>
				<h1>${book.name!}</h1>
				<p>作者：${book.username!}</p>
				<p>分类：${book.book_type!}</p>
				<p>点击：${book.num!}万</p>
				<p>授权方：${book.grant!}</p>
				<p>
					<span class="w-star2">
						<span>&nbsp;</span>
						<span>&nbsp;</span>
						<span>&nbsp;</span>
						<span>&nbsp;</span>
						<span class="no">&nbsp;</span>
					</span>
				</p>
			</div>
			<div class="j-actions">
				<div class="btns" >						
					<#--<a href="" class="ui-blue fl" >立即阅读</a>-->
					<a href="javascript:;" class="ui-blue fl" >立即阅读
					<a id="J_Offline" href="javascript:;" class="ui-blue-light fr">下载整本</a>
				</div>
				<div class="btns">
					<a href="javascript:;" class="m-shelf ui-grey ">
						<i class="ui-shelf"></i>放入书架
					</a>
				</div>
			</div>
		</section>
		<!--书籍内容展示--end-->
	
		<!--书籍内容简介--start-->
		<section class="m-book-detail j-intro-wrap">
			<h4 class="m-book-title">内容简介</h4>
			<p class="content j-intro">
					&nbsp;&nbsp;宁炒一座楼，不办一家厂，开厂为啥干不过炒房，做实业的为啥干不过搞金融的？作为立国之本、创造财富的制造业发生了什么？市场的大手，政策的大手，究竟在其中起到什么样的作用？<br/>　　
				<br/>&nbsp;&nbsp;小说以一家中小型机械制造厂切入，以手术解剖的方式娓娓道来秉持实业理想的柳钧和从事金融的好友钱宏明的典型遭遇。无论是山寨模仿、技术剽窃、恶意抢单、黑社会威胁、税务查账、环保穿小鞋还是信用证诈骗、房地产投机、民间高利贷、非法集资，从起步到发展过程中大到政策，小到员工管理的九九八十一难一一为你呈现。<br/>
				<br/>&nbsp;&nbsp;本书作者阿耐曾为浙江某著名民营制造业高管，几十年经营管理经验，写出来的都是“实打实的真材实料”。自连载以来，引发珠三角、长三角众多制造业老板及金融从业者的广泛共鸣。
			</p>
			<p class="showmore j-more">展开<i class="j-more"></i></p>
		</section>
		<!--书籍内容简介--end-->
		
		<!--书籍目录--start-->
		<section class="m-book-directory">
			<h4 class="m-book-title">目录
				<span class="j-cata-length">(共12章)</span>
				<a class="sort j-squece">倒序<i></i></a>
			</h4>
			<div class="j-cata catalist">
				<ul class="caul">
					<li class="grade_01 ">
						<a href="">版权信息<i></i></a>
					</li>
					<li class="grade_01 ">
						<a  href="">1998年 子承父业，回国挑起旧工厂重担<i></i></a>
					</li>
					<li class="grade_01 ">
						<a  href="">1999年 新产品被模仿，陷入恶性竞争<i></i></a>
					</li>
					<li class="grade_01 ">
						<a  href="">2000年 建立新厂，员工管理成大问题<i></i></a>
					</li>
					<li class="grade_01 dis">
						<a  href="">2001年 质量体系认证成为企业的“心病”<i></i></a>
					</li>
				</ul>
				<a class="more1"  href=""><span>更多目录</span><i></i></a>
			</div>
		</section>
		<!--书籍目录--end-->
	
		<!--精彩评论--start-->
		<section class="m-book-comment m-allcomment">
			<!--标题-->
			<h4 class="m-book-title">
				<i class="j-comment-title">评论</i>
				<span class="j-comment-count">(12)</span>
				<a class="comment j-to-comment" >
					<i class="" ></i>
					<span class="" >写评论</span>
				</a>
			</h4>
			<!--评论内容-->
			<ul class="j-more-comment">
				<!--用户信息-->
				<li class="item j-intro-wrap clearfix">
					<input type="hidden" name="cid" value="">
					<input type="hidden" name="tipstr" value="快樂永随">
					<input type="hidden" name="uid" value="">
					<img src="img/touxiang.jpg" class="headimg j-headimg">
					<p class="user">
						<span class="uname j-uname">
							快樂永随
						</span>
						<span class="time">5月28日  00:27</span>
					</p>		
					<p class="star">
						<span>&nbsp;</span>
						<span>&nbsp;</span>
						<span>&nbsp;</span>
						<span>&nbsp;</span>
						<span>&nbsp;</span>
					</p>								
					<p class="desc j-intro">
						写的是血与泪。为何要发展制造业，因为目前的称不上是制造业。工匠精神，智能制造，都不是无的放矢。
					</p>
					<p class="opt opts clearfix">
						<span class="praise j-praise" data-likes="207"><i></i><span class="likes">207</span> </span>			
					</p>				
				</li>
				<li class="item j-intro-wrap clearfix last">
					<input type="hidden" name="cid" value="">
					<input type="hidden" name="tipstr" value="">
					<input type="hidden" name="uid" value="">
					<img src="img/touxiang.jpg" class="headimg j-headimg">
					<p class="user">
						<span class="uname j-uname">
						手机用户_0836
						</span>
						<span class="time">5月28日  21:53</span>
					</p>		
					<p class="star">
						<span>&nbsp;</span>
						<span class="no">&nbsp;</span>
						<span class="no">&nbsp;</span>
						<span class="no">&nbsp;</span>
						<span class="no">&nbsp;</span>
					</p>								
					<p class="desc j-intro">
						咋那里都有你呀大師來了，是不是就是拉拉隊長呀
					</p>
					<p class="opt opts clearfix">
						<span class="praise j-praise" data-likes="162">
							<i></i><span class="likes">162</span> 
						</span>			
					</p>				
				</li>
			</ul>		
			<a class="more1 j-more-comment"  href="#">
				<span>更多评论</span><i></i>
			</a>			
		</section>
		<!--精彩评论--end-->
	
		<!--您可能还喜欢--start-->
		<section class="m-book-likemore">
			<h3 class="m-book-title">您可能还喜欢</h3> 
            <div class="m-book-list">
            	<ul class="clearfix">
            		<li>
	                    <a href="" class="pic">
	                    	<img src="img/1.jpg" srcset="" alt="24个比利" />
	                    </a>
	                    <a href=""  class="info">
	                        <h4>24个比利</h4>
	                        <span>【美】丹尼尔·凯斯</span>
	                    </a>
	                </li>
	                <li>
	                    <a href="" class="pic">
	                    	<img src="img/1.jpg" srcset="" alt="24个比利" />
	                    </a>
	                    <a href=""  class="info">
	                        <h4>比利战争（《24个比利》续作）</h4>
	                        <span>【美】丹尼尔·凯斯</span>
	                    </a>
	                </li>
	                <li class="margin0">
	                    <a href="" class="pic">
	                    	<img src="img/1.jpg" srcset="" alt="24个比利" />
	                    </a>
	                    <a href=""  class="info">
	                        <h4>时光倒流的女孩（现象级畅销书《岛上书店》作者口碑成名作！</h4>
	                        <span>【美】加·泽文</span>
	                    </a>
	                </li>
            	</ul>
            </div>
		</section>	
		<!--您可能还喜欢--start-->
	</div>
	<!--首页点击图片的(跳转)--end-->
	
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
