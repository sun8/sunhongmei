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
	<form method="post" action="Tv/index" class="form-horizontal" id="addform"  accept-charset="UTF-8"  enctype="multipart/form-data" >

	<div class="box view">
		<input type="hidden" name="code" value="${code!}"/>
		<input type="hidden" name="openid" value="${openid!}"/>
		<label><strong>充值号码：</strong>
		<input type="text" id="phone" name="phone" value="" placeholder="请输入您的手机号码" style="width:70%"></label>
		<a class="submit" onclick="tijiao();" style="text-align:center;">查询电子券</a>
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
	function tijiao() { 
		var phone = $("#phone").val();
		if(phone == '' || phone == "" || phone == undefined ){
			alert("请输入手机号!!");
		}else{
			fex(phone);
			$("#addform").submit();
		}
	}
	
	
	function fex(phone){
		$.ajax({  
          url: 'Tv/hebaoSmsYuE' ,  
          type: 'POST',  
          data : {"phone":phone}, 
          success: function (data) {
          },  
          error: function (returndata) {
          	$(".gray-bg").hideLoading(); 
          }  
		});
	}
	
	
</script>
<div style="display:none">
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1257370514'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1257370514' type='text/javascript'%3E%3C/script%3E"));</script>
</div>
</body>
</html>