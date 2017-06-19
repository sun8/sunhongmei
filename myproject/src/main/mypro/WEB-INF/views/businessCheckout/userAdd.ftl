<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="${BasePath}">
<title>支付失败</title>
<script src="staticResource/businessCheckout/js/jquery-2.1.1.min.js"></script>
</head>
<body>
<form id="from">
	<ul>
		<li>帐号：${Session["BUSINESS_CHECKOUT_USER_SESSION"].userName}<input name="name" value="" type="text"></li>
		<li>密码：<input name="password" value="" type="text"></li>
		<li>备注：<input name="remark" value="" type="text"></li>
	</ul>
	<input type="button" onclick="addUser()" value="添加">
</form>

<script>
	function addUser(){
		$.ajax({
		   type: "POST",
		   url: "businessCheckoutUser/add",
		   data: $("#from").serialize(),
		   dataType:"json",
		   success: function(msg){
		   		if(msg.status==0){
		   			alert("添加成功");
		   			document.getElementById("from").reset()
		   		}else{
		   			alert(msg.msg)
		   		}
		   	}
		   });
	}
	
</script>

</body>
</html>