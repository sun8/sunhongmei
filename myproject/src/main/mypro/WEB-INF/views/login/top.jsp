<%@ page contentType="text/html;charset=UTF-8"%>
<div class="row border-bottom"></div>
<div class="header">
			<div class="header_logo">
				<a target="_blank">
					<img alt="腾瑞明微信积分荟" src="./img/jfh.png" " />
				</a>
				<span>欢迎登录:${user.login_name}</span>
					<a href="/wxjfh/login.jsp" class="link_text_blue">退出系统</a>
			</div>
</div>
<div class="row content-tabs">
	<button class="roll-nav roll-left J_tabLeft">
		<i class="fa fa-backward"></i>
	</button>
	<nav class="page-tabs J_menuTabs">
	
		<div class="page-tabs-content">
			<a href="javascript:;" class="active J_menuTab"
				data-id="index_v1.html">首页</a>
		</div>
	</nav>
	<button class="roll-nav roll-right J_tabRight">
		<i class="fa fa-forward"></i>
	</button>
	<button class="roll-nav roll-right dropdown J_tabClose">
		<span class="dropdown-toggle" data-toggle="dropdown">关闭操作<span
			class="caret"></span></span>
		<ul role="menu" class="dropdown-menu dropdown-menu-right">
			<li class="J_tabShowActive"><a>定位当前选项卡</a></li>
			<li class="divider"></li>
			<li class="J_tabCloseAll"><a>关闭全部选项卡</a></li>
			<li class="J_tabCloseOther"><a>关闭其他选项卡</a></li>
		</ul>
	</button>
	<a href="" method="get" class="roll-nav roll-right J_tabExit"><i class="fa fa fa-sign-out"></i> 退出</a>
</div>
