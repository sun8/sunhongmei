<!DOCTYPE html>
<html>
<head>
<base href="${basePath}">
<title>短信支付</title>  
</head>
<body >
	<form action="access/pay/hebao_sms" method="post">
		<input name="order_no" value="${order_no!}" type="hidden">
		请输入验证码：<input type="text" name="vcode" value=""><br>
		<input type="submit" value="提交">
	</form>
</body>
</html>