<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${basePath}">
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.showLoading.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="grey" />
<meta name="format-detection" content="telephone=no"/>
<title>和包电子券充值</title>
<link rel="stylesheet" href="css/indexy.css"/>
<link rel="stylesheet" href="css/showLoading.css" media="screen" />
</head>
<body class="gray-bg">
	<span id="showlpad" style="display:none;width:100%;height:100%;position:fixed;top:0;left:0;background:rgba(0,0,0,.6);color:#fff;text-align:center;padding-top:40%;z-index:99999;"></span>
	<form method="post" action="" class="form-horizontal" id="yzform"  accept-charset="UTF-8"  enctype="multipart/form-data" >
	<input type="hidden" id="orderid" name="orderid" value="${orderid!}">
	<input type="hidden" id="phone" name="phone" value="${phone!}">
	<input type="hidden" id="money" name="money" value="${money!}">
	<input type="hidden" id="type" name="type" value="${type!}">
	<input type="hidden" id="czhm" name="czhm" value="${czhm!}">
	<input type="hidden" id="yyslx" name="yyslx" value="${yyslx!}">
	<input type="hidden" id="czsl" name="czsl" value="${czsl!}">
	<input type="hidden" id="jp_type" name="jp_type" value="${jp_type!}">
	<div class="progress">
		<span class="step step-1">选分类充值</span>
		<span class="step step-2 active">验证支付</span>
		<span class="step-3">充值成功</span>
	</div>
	<div class="box view">
		<p class="voice">支付验证码已经下发</p>
		<label><strong>验证码：</strong>
			<input type="text" style="width:70%" id="yzm" name="yzm" placeholder="请输入验证码">
		</label>
		<p class="getVerity">短信没有收到吗？——
		<input type="button" id="yznum" class="normal" style="width:48%;" value="重新获取验证码" onclick="showtime(60)"></button></p>
		<a class="submit" style="text-align:center;" onclick="queding();">确定</a>
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
	function queding(){
		var yzm = $("#yzm").val();
		if(yzm == '' || yzm == "" || yzm == undefined ){
			alert("请输入验证码!");
		}else{
			/*$(".gray-bg").showLoading(); */
			$("#showlpad").css("display","block").text("正在充值，请稍后！！");
			$.ajax({  
	          url: 'Tv/cz' ,  
	          type: 'POST',  
	          data : $("#yzform").serializeArray(), 
	          success: function (data) {
	          		if(data.state == '0'){
	          			location.href="Tv/success";
	          			/*$(".gray-bg").hideLoading();*/ 
	          			$("#showlpad").css("display","none");
	          		}else{
	          			alert(data.mes);
	          			/*$(".gray-bg").hideLoading();*/ 
	          			$("#showlpad").css("display","none");
	          		}
	          },  
	          error: function (returndata) {
	          	$(".gray-bg").hideLoading(); 
	          }  
			});	
		}
	}
	
	
	function showtime(t){ 
		yzms();
		$("#yznum").attr("disabled",true);
	    for(i=1;i<=t;i++) { 
	        window.setTimeout("update_p(" + i + ","+t+")", i * 1000); 
	    } 
	} 
	 
	function update_p(num,t) { 
	    if(num == t) { 
	    	$("#yznum").val("重新获取验证码");
	    	$("#yznum").attr("disabled",false);
	    } else { 
	        printnr = t-num; 
	        $("#yznum").val(" (" + printnr +")秒后重新发送"); 
	    } 
	} 
	
	function yzms(){
		 $.ajax({  
	          url: 'Tv/yzm' ,  
	          type: 'POST',  
	          data : $("#yzform").serializeArray(), 
	          success: function (data) {
	          	$("#orderid").val(data);
	          },  
	          error: function (returndata) {}  
		});
	}
</script>
</body>
</html>