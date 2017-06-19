<%@page import="com.hongshouxin.util.ToolDate"%>
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
<title>测试页面</title>
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.md5.js"></script>
</head>
<body>

<form action="access/pay" method="post" target="_blank">
	<input id="key" type="text" value="qwe123"><br>
	接入方编号：<input name="access_channel" type="text" value="test"><br>
	接入方订单号：<input name="access_order_no" type="text" value="<%=ToolDate.getNowString("yyyyMMddHHmmss") %>"><br>
	接入方返回信息：<input name="access_attach" type="text" value="哈哈"><br>
	接入方前端通知地址：<input name="access_return_url" type="text" value="http://www.hongshouxin.com/qianduan"><br>
	接入方服务器端通知地址：<input name="access_return_server_url" type="text" value="http://www.hongshouxin.com/houduan"><br>
	名称：<input name="name" type="text" value="测试"><br>
	介绍：<input name="introduce" type="text" value="测试介绍"><br>
	手机：<input name="phone" type="text" value="18310684044"><br>
	用户ip：<input name="user_ip" type="text" value="127.0.0.1"><br>
	订单时间：<input name="ordertime" type="text" value="<%=ToolDate.getNowString("yyyyMMddHHmmss") %>"><br>
	总价值：<input name="total_price" type="text" value="1"><br>
	支付类型：<input name="pay_type" type="text" value="hebao_sms"><br>
	签名：<input name="sign" id="sign" type="text" value=""><br>
	<input type="button" value="md5" onclick="_md5()">&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" value="提交">
</form>
<script type="text/javascript">
	function _md5(){
		var array_=["access_attach","access_channel","access_order_no","access_return_server_url","access_return_url","introduce","name","ordertime","pay_type","phone","total_price","user_ip"];
		var str=""
		for(var i=0;i<array_.length;i++){
			var obj=$("input[name="+array_[i]+"]").get(0)
			var value=$(obj).val();
			str+=array_[i]+"="+value+"&";
		}
		str=str.substring(0,str.length-1);
		var key=$("#key").val();
		var sign=$.md5(key+str+key);
		$("#sign").val(sign);
	}
</script>


</body>
</html>