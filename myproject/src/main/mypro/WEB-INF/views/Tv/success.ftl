<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${basePath}">
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="grey" />
<meta name="format-detection" content="telephone=no"/>
<title>和包电子券充值</title>
<link rel="stylesheet" href="css/indexy.css"/>
</head>
<body class="gray-bg">
	<form method="post" action="Tv/yzm" class="form-horizontal" id="addform"  accept-charset="UTF-8"  enctype="multipart/form-data" >
	<div class="progress">
		<span class="step step-1">选分类充值</span>
		<span class="step step-2">验证支付</span>
		<span class="step-3 active">充值成功</span>
	</div>
	<input type="hidden" id="type" name="type" value="1"/>
	
	<div class="box view forThree" >
		<div class="success"></div>
		<p class="successTip">恭喜你！充值成功(48小时内到账)！！！</p>
	</div>
	
	<div class="box how">
		<div class="title"><span>积分如何变成和包电子劵</span></div>
		<div class="content">
			<p>发送短信DH198766到1098765换成你手中的和包电子劵<br>如有疑问请拨打当地10086进行咨询</p>
		</div>
		<div class="title"><span>积分当钱花尽在积分荟</span></div>
		<div class="content">
			<img src="images/qrcode.png">
		</div>
	</div>
	
	</form>
<script>
	function check(num) { 
		if(num == '2'){
			$("#phone").val("");
		}else{
			$("#phone").val($("#hidphone").val());
		}
	}
	
	function tijiao(){
		$("#addform").submit();
	}
</script>
</body>
</html>