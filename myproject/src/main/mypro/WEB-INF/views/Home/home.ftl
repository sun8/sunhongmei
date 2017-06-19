<!DOCTYPE html>
<html>
<head>
<base href="${basePath}">
<meta charset="UTF-8">
<link href="css/Home/style.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="js/Home/jquery-1.7.2.min.js"></script>
<title>首页</title>
<style >
	#abnormal_num{
		color:red;
	}
</style>
</head>
<body>
	<div class="main">
    	<div class="top">
			<div class="fr topBack">
				欢迎${username}登录后台系统
			</div>
		</div>
		<div class="center clearfix">
        	<div class="left">
				<ul >
					<li><a href="ProIndex/shouye" target="iFrame">首页管理</a></li>
					<li><a href="UserInfo/" target="iFrame">联系我们</a></li>
                </ul>
			</div>
        	<div class="right">
				<iframe id="iFrame" name="iFrame" scrolling="auto" width="100%" height="800" marginwidth="0" marginheight="0" frameborder="0">
				</iframe>
			</div>
		</div>
	</div>
</body>

</html>