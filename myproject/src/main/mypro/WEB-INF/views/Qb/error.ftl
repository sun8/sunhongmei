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
	<title>电子券兑换</title>
	<link rel="stylesheet" href="css/integral.css"/>
</head>
<body>
	<div class="wrap">
		<h1>${mes!}<h1>
	</div>
<script>
	function moneys(){
		var type = $("#type").val();
		var bl = $("#money").val();
		var money = $("#proportion").val();
		var test = parseInt(bl*money);
		if(money != ''){
			if(type == 0){
				$("#je").text("实际充值话费："+test+"元");	
			}else{
				$("#je").text("实际兑换Q币："+test+"元");
			}
		}
	}
</script>
</body>
</html>