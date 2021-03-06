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
	
</head>
<body>
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
		
		<!--阅读的书籍--start-->
        <div class="m-last-book clearfix">  
        	<span>还没有最近阅读的书籍哟</span>
          <a href="" class="j-gap last-book" ></a>
          <a href="javascript:;" class="shelf" >书架</a> 
          <i class="sep"></i>          
        </div>
        <!--阅读的书籍--end--> 
       
        <!--重磅推荐--start-->
        <section class="m-list-box">
        	<!--标题-->
            <h3 class="clearfix">
                <strong class="fl">
                	<em class="sep"></em>
                	<span class="gradient">重磅推荐</span>
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
			                        <h4>${zbtj.username!}</h4>
			                        <span>${zbtj.name!}</span>
			                    </a>
			                </li>
						</#if>
					</#list>
            	</ul>
            </div>   
        	<div class="m-book-item">
                <ul>
                	<#list zbtj_list as zbtj>
						<#if zbtj_index != 0 && zbtj_index != 1 && zbtj_index !=2>
		                    <li>
			                    <a href="Book/read?id=${zbtj.id}" class="j-gap">
			                        <h4>[${zbtj.book_type!}]${zbtj.name!}</h4>
			                        <p>${zbtj.note!}</p>
			                    </a>
		                    </li>
						</#if>
					</#list>
                </ul>
            </div>
        </section> 
        <!--重磅推荐--end-->
         
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
        
        <!--都市爽文--start-->
        <section class="m-list-box">           
            <h3 class="clearfix">
                <strong class="fl">
                	<em class="sep"></em>
                	<span class="gradient">都市爽文</span>
                </strong>
                <a href="more.html" class="more" >更多<em class="m-arrow"></em></a>
            </h3> 
            <div class="m-book-single clearfix">
                <a href="" class="j-gap" title="桃运神戒">
                    <img src="img/man.jpg" alt="桃运神戒">
                    <h3>桃运神戒</h3>
                    <p>不是蚊子/都市生活</p>                    
                    <p>获得神奇戒指，各色美女闯入我的生活，好烦恼！</p>
                </a>
            </div>
            <div class="m-book-item">
                <ul>
                    <li>
	                    <a href="" class="j-gap">
	                        <h4>[重生]都市之最强修仙</h4>
	                        <p>这一世我纵横都市，踏上巅峰，灭杀强敌，不留遗憾…</p>
	                    </a>
                    </li>
                    <li>
	                    <a href="" class="j-gap">
	                        <h4>[都市]传奇再现</h4>
	                        <p>兄弟何意？我与你并肩，那你就是我的兄弟！</p>
	                    </a>
                    </li>
                        <li>
	                    <a href="" class="j-gap">
	                        <h4>[种田]神奇小村长</h4>
	                        <p>站在村口望一望，家家都有丈母娘！</p>
	                    </a>
                    </li>
                    <li>
	                    <a href=" " class="j-gap">
	                        <h4>[美女]师娘，别玩火</h4>
	                        <p>一堆人打美艳师娘的主意，要怎么才能保住师娘呢？</p>
	                    </a>
                    </li>
                </ul>
            </div>
        </section>
        <!--都市爽文--end-->
        
        <!--官场职场--start-->
        <section class="m-list-box">           
            <h3 class="clearfix">
                <strong class="fl">
                	<em class="sep"></em>
                	<span class="gradient">官场职场</span>
                </strong>
                <a href="more.html" class="more" >更多<em class="m-arrow"></em></a>
            </h3> 
            <div class="m-book-single clearfix">
                <a href="" class="j-gap" title="桃运神戒">
                    <img src="img/man.jpg" alt="桃运神戒">
                    <h3>桃运神戒</h3>
                    <p>不是蚊子/都市生活</p>                    
                    <p>获得神奇戒指，各色美女闯入我的生活，好烦恼！</p>
                </a>
            </div>
            <div class="m-book-item">
                <ul>
                    <li>
	                    <a href="" class="j-gap">
	                        <h4>[重生]都市之最强修仙</h4>
	                        <p>这一世我纵横都市，踏上巅峰，灭杀强敌，不留遗憾…</p>
	                    </a>
                    </li>
                    <li>
	                    <a href="" class="j-gap">
	                        <h4>[都市]传奇再现</h4>
	                        <p>兄弟何意？我与你并肩，那你就是我的兄弟！</p>
	                    </a>
                    </li>
                        <li>
	                    <a href="" class="j-gap">
	                        <h4>[种田]神奇小村长</h4>
	                        <p>站在村口望一望，家家都有丈母娘！</p>
	                    </a>
                    </li>
                    <li>
	                    <a href=" " class="j-gap">
	                        <h4>[美女]师娘，别玩火</h4>
	                        <p>一堆人打美艳师娘的主意，要怎么才能保住师娘呢？</p>
	                    </a>
                    </li>
                </ul>
            </div>
        </section>
        <!--官场职场--end-->
        
        
        <!--作品欣赏--start-->
        <section class="m-list-box clearfix">
            <a href="" title="盘点：那些充满正能量的官场小说" class="sbanner" >
            	<img src="img/special.jpg"  alt="盘点：那些充满正能量的官场小说" />
            </a>
            <a href="" title="东野圭吾作品赏" class="sbanner margin0" >
            	<img src="img/special2.jpg"  alt="东野圭吾作品赏" />
            </a>
        </section>
        <!--作品欣赏--end-->
        
		<!--最新红书--start-->
        <section class="m-list-box">           
            <h3 class="clearfix">
                <strong class="fl">
                	<em class="sep"></em>
                	<span class="gradient">最新红书</span>
                </strong>
                <a href="more.html" class="more" >更多<em class="m-arrow"></em></a>
            </h3> 
            <div class="m-book-single clearfix">
                <a href="" class="j-gap" title="桃运神戒">
                    <img src="img/man.jpg" alt="桃运神戒">
                    <h3>桃运神戒</h3>
                    <p>不是蚊子/都市生活</p>                    
                    <p>获得神奇戒指，各色美女闯入我的生活，好烦恼！</p>
                </a>
            </div>
            <div class="m-book-item">
                <ul>
                    <li>
	                    <a href="" class="j-gap">
	                        <h4>[重生]都市之最强修仙</h4>
	                        <p>这一世我纵横都市，踏上巅峰，灭杀强敌，不留遗憾…</p>
	                    </a>
                    </li>
                    <li>
	                    <a href="" class="j-gap">
	                        <h4>[都市]传奇再现</h4>
	                        <p>兄弟何意？我与你并肩，那你就是我的兄弟！</p>
	                    </a>
                    </li>
                        <li>
	                    <a href="" class="j-gap">
	                        <h4>[种田]神奇小村长</h4>
	                        <p>站在村口望一望，家家都有丈母娘！</p>
	                    </a>
                    </li>
                    <li>
	                    <a href=" " class="j-gap">
	                        <h4>[美女]师娘，别玩火</h4>
	                        <p>一堆人打美艳师娘的主意，要怎么才能保住师娘呢？</p>
	                    </a>
                    </li>
                </ul>
            </div>
        </section>
        <!--最新红书--end-->

		<!--完本精选--start-->
        <section class="m-list-box">           
            <h3 class="clearfix">
                <strong class="fl">
                	<em class="sep"></em>
                	<span class="gradient">完本精选</span>
                </strong>
                <a href="more.html" class="more" >更多<em class="m-arrow"></em></a>
            </h3> 
            <div class="m-book-single clearfix">
                <a href="" class="j-gap" title="桃运神戒">
                    <img src="img/man.jpg" alt="桃运神戒">
                    <h3>桃运神戒</h3>
                    <p>不是蚊子/都市生活</p>                    
                    <p>获得神奇戒指，各色美女闯入我的生活，好烦恼！</p>
                </a>
            </div>
            <div class="m-book-item">
                <ul>
                    <li>
	                    <a href="" class="j-gap">
	                        <h4>[重生]都市之最强修仙</h4>
	                        <p>这一世我纵横都市，踏上巅峰，灭杀强敌，不留遗憾…</p>
	                    </a>
                    </li>
                    <li>
	                    <a href="" class="j-gap">
	                        <h4>[都市]传奇再现</h4>
	                        <p>兄弟何意？我与你并肩，那你就是我的兄弟！</p>
	                    </a>
                    </li>
                        <li>
	                    <a href="" class="j-gap">
	                        <h4>[种田]神奇小村长</h4>
	                        <p>站在村口望一望，家家都有丈母娘！</p>
	                    </a>
                    </li>
                    <li>
	                    <a href=" " class="j-gap">
	                        <h4>[美女]师娘，别玩火</h4>
	                        <p>一堆人打美艳师娘的主意，要怎么才能保住师娘呢？</p>
	                    </a>
                    </li>
                </ul>
            </div>
        </section>
        <!--完本精选--end-->


        
        <!--经典排行榜--start-->
        <section class="m-list-box subject-box">            
            <!--标题-->
            <h3 class="clearfix">
                <strong class="fl">
                	<em class="sep"></em>
                	<span class="gradient">经典排行榜</span>
                </strong>
                <a href="more.html" class="more" >更多<em class="m-arrow"></em></a>
            </h3> 
            <div class="m-book-list">
            	<ul class="clearfix">
            		<li>
            			<em class="classical">1</em>
	                    <a href="" class="pic">
	                    	<img src="img/6.jpg" srcset="" alt="24个比利" />
	                    </a>
	                    <a href=""  class="info">
	                        <h4>24个比利</h4>
	                        <span>【美】丹尼尔·凯斯</span>
	                    </a>
	                </li>
	                <li>
	                	<em class="classical">2</em>
	                    <a href="" class="pic">
	                    	<img src="img/6.jpg" srcset="" alt="24个比利" />
	                    </a>
	                    <a href=""  class="info">
	                        <h4>比利战争（《24个比利》续作）</h4>
	                        <span>【美】丹尼尔·凯斯</span>
	                    </a>
	                </li>
	                <li class="margin0">
	                	<em class="classical">3</em>
	                    <a href="" class="pic">
	                    	<img src="img/6.jpg" srcset="" alt="24个比利" />
	                    </a>
	                    <a href=""  class="info">
	                        <h4>时光倒流的女孩（现象级畅销书《岛上书店》作者口碑成名作！</h4>
	                        <span>【美】加·泽文</span>
	                    </a>
	                </li>
            	</ul>
            </div> 
        </section>
        <!--经典排行榜--end-->
        
        <!--精彩书单--start-->
        <section class="m-list-box"> 
            <h3 class="clearfix">
                <strong class="fl">
                	<em class="sep"></em>
                	<span class="gradient">精彩书单</span>
                </strong>
            </h3>         
            <div class="m-subject">
                 <a href="" class="j-gap" title="重磅好书六一欢乐促  献礼永远的大儿童">
                    <img src="img/man1.jpg" alt="重磅好书六一欢乐促  献礼永远的大儿童">
                    <h3>重磅好书六一欢乐促  献礼永远的大儿童</h3>
                    <p>假如你仍童心未泯,快来一起加入狂欢！重磅好书六一欢乐促，献礼永远的大儿童。</p>   
                </a>
            </div>               
            <div class="m-book-item">
                <a href="" title="重磅好书六一欢乐促  献礼永远的大儿童" class="j-gap">点击阅读专题图书<em class="m-arrow"></em></a>
            </div>
        </section>
        <!--精彩书单--end-->
        
		
		
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
        <!--固定定位-->
        <div id="J_GoTop" class="m-gotop"></div>
   	</div>
   	
   
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
