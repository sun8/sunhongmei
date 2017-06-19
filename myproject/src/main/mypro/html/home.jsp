<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<style type="text/css">
#dir{
  width: 14%;
  float:left;
}
#context{
  width: 85%;
  float:right;
}
#dir ul li{
	cursor: pointer;
	border: solid 1px;
}
div{
	border: solid 1px;
}
</style>
</head>
<body>
<div id="dir">
	<ul>
		<li href="product/manage/list">产品管理</li>
		<li>采购订单</li>
		<li>后台订单</li>
		<li>订单比对</li>
		<li></li>	
	</ul>
</div>
<div id="context">
	<iframe id="iFrame" name="iFrame" width="100%" height="550" marginwidth="0" marginheight="0" frameborder="0" src="">
	</iframe>
</div>
<script>
	function initFrame(){
		var hrefP=$("#dir ul li").attr("href");
		document.getElementById("iFrame").src=hrefP;
	}
	initFrame();
	$(document).ready(function(){
		 $("#dir ul li").bind("click",function(){
			 var hrefP=$(this).attr("href");
			 document.getElementById("iFrame").src=hrefP;
		 })
		});
	
</script>
</body>
</html>