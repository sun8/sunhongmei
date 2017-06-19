<%@ page contentType="text/html;charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<link href="css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
<link href="css/font-awesome.min.css?v=4.3.0" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/style.min.css?v=3.0.0" rel="stylesheet">
<title>腾瑞明微信积分荟</title>

<!-- 全局js -->
<script src="./js/jquery-2.1.1.min.js"></script>
<script src="./js/bootstrap.min.js?v=3.4.0"></script>
<script src="./js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="./js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="./js/plugins/layer/layer.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 自定义js -->
<script src="./js/hplus.min.js?v=3.0.0"></script>
<script type="text/javascript" src="./js/contabs.min.js"></script>
<!-- 第三方插件 -->
<script src="./js/plugins/pace/pace.min.js"></script>
</head>

<body class="fixed-sidebar full-height-layout gray-bg">
	<%@ include file="login/top.jsp"%>
	<div id="">
		<%@ include file="login/left.jsp"%>
		<div id="page-wrapper" class="gray-bg dashbard-1">
			<div class="row J_mainContent" id="content-main">
				<iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="" frameborder="0" data-id="index_v1.html" seamless></iframe>
			</div>
		</div>
	</div>
</body>

</html>