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
	<link rel="stylesheet" href="css/index.css"/>
<body>
	<div class="banner">
		<img src="Qb/imageShow?fileName=${activity.img_name!}" class="bannerImg" style="height:200px">
		<img src="images/logo.png" class="bannerLogo">
	</div>
	<div class="wrap">
		<form id="czform"  method="post" action="">
		<input type="hidden" id="hid" name="hid" value="">
		<input type="hidden" id="proportion" name="proportion" value="${activity.proportion!}">
		<input type="hidden" id="type" name="type" value="${activity.type!}">
		<input type="hidden" id="czje" name="czje">
		<input type="hidden" id="orderid" name="orderid">
		<input type="hidden" id="activity_id" name="activity_id" value="${activity.id}">
		
		<form action="" hidden>
			<div class="exchageTip" style="padding-bottom:30px;">
				<span id="je" style="text-align:left; width:100%; color:red; float:right;"></span>
			</div>
			<#if activity.type == '1'>
			<input type="text" placeholder="请输入充值的QQ号" id="qqno" name="qqno">
			</#if>
			<input type="text" placeholder="请输入您的手机号" id="phone" name="phone">
			<input type="text" placeholder="电子劵消费金额(元)" id="money" name="money" onchange="moneys();">
			<input type="text" placeholder="请输入验证码" id="yzm" name="yzm" class="input-virify" style="width:50%;">
			<input type="button" id="yznum" class="btn-virify" style="width:48%;" value="获取验证码" onclick="showtime(60)" style=""></button>
			<a class="submit" onclick="tj();" style="text-align:center;">提交</a>
		</form>	
		
		
		<div class="qrcode">
			<img src="images/QR.jpg">
			<p>长按二维码关注积分荟，更多惊喜等待你~</p>
			<p>客服热线：400-6500-8820</p>
		</div>
		
		<!--确认信息-->
		<div id="proif" class="alert" hidden>
			<div class="content">
				<p class="title">确定充值信息</p>
				<p>充值QQ号码：</p><span id="qqhao"></span>
				<p>充值手机号码：<span id="phoneno"></span></p>
				<p>电子劵消费金额：<span id="jine"></span></p>
				<#if activity.type == '1'>
					<p>实际兑换Q币：<span id="qbi"></span></p>			
				<#else>
					<p>实际兑换话费：<span id="qbi"></span></p>
				</#if>
				<div class="btns">
					<button class="sure" onclick="queren();">确认</button>
					<button class="cancel" onclick="quxiao();">取消</button>
				</div>
			</div>
		</div>
		
<script>
	$('#proif').hide();
	function moneys(){
		var type = $("#type").val();
		var bl = $("#money").val();
		var money = $("#proportion").val();
		var test = parseInt(bl*money);
		if(money != '' && money != "" && money != undefined ){
			var shuzi =/^(0|[1-9][1-9]*)$/;	
			if(bl.match(shuzi)==null){
				alert("消费金额只能输入正整数!");
				$("#money").val("");
			}else{
				if(parseInt(bl) <2){
					alert("消费金额必须大于1!");
					$("#money").val("");
				}
			}
			if(type == 0){
				$("#czje").val(test);
				$("#je").text("实际充值话费："+test+"元");	
			}else{
				$("#czje").val(test);
				$("#je").text("实际兑换Q币："+test+"元");
			}			
		}
		$("#orderid").val("");
	}
	
	function checje(){
		var money = $("#money").val();
		var shuzi =/^(0|[1-9][1-9]*)$/;	
		if(money != '' && money != "" && money != undefined ){
			if(money.match(shuzi)==null){
				alert("充值金额只能输入正整数!");
				$("#money").val("");
			}else{
				if(parseInt(money) <1){
					alert("充值金额必须大于0!");
					$("#money").val("");
				}
			}
		}
	}
	
	
	function tj(){
		if(check()){
			var yzm = $("#yzm").val();
			var orderid = $("#orderid").val();
			if(yzm == '' || yzm == "" || yzm == undefined ){
				alert("请输入验证码!!");
			}else if(orderid == '' || orderid == "" || orderid == undefined ){
				alert("请重新获取短信验证码!!");
				$("#yzm").val("");
			}else{
				var type = $("#type").val();
				if(type == '1'){
					var qqno = $("#qqno").val();
					var phone = $("#phone").val();
					var money = $("#money").val();
					var czje = $("#czje").val();
					$("#proif").show();
					$("#qqhao").text(qqno);
					$("#phoneno").text(phone);
					$("#jine").text(money);
					$("#qbi").text(czje);
					//var mes = "确认充值信息,充值QQ号码:"+qqno+"充值手机号码为:"+phone+"电子券消费金额:"+money+"实际兑换Q币"+czje;			
					//if(confirm(mes)){
					//	checkyzm();
					//}
				}else{
					checkyzm();		
				}
			}
		}
	}
	
	function checkyzm(){
		$.ajax({  
          url: 'Qb/cz' ,  
          type: 'POST',  
          data : $("#czform").serializeArray(), 
          success: function (data) {
          		if(data.state == '0'){
          			$("#czform").attr("action","Qb/cz_right").submit();
          		}else{
          			alert(data.mes);
          			$("#je").text(data.mes);	
          		}
          },  
          error: function (returndata) {}  
		});	
	}
	
	
	function czcg(){
		$.ajax({  
          url: 'Qb/czcg' ,  
          type: 'POST',  
          data : $("#czform").serializeArray(), 
          success: function (data) {
          		alert("充值成功！");
          },  
          error: function (returndata) {}  
		});	
	}
	
	function showtime(t){ 
		if(check()){
			yzms();
			$("#yznum").attr("disabled",true);
		    for(i=1;i<=t;i++) { 
		        window.setTimeout("update_p(" + i + ","+t+")", i * 1000); 
		    } 
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
	          url: 'Qb/yzm' ,  
	          type: 'POST',  
	          data : $("#czform").serializeArray(), 
	          success: function (data) {
	          	$("#orderid").val(data);
	          },  
	          error: function (returndata) {}  
		});
	}
	
	function check(){
		var bol = true;
		var phone = $("#phone").val();
		var hid = $("#hid").val();
		var yzm = $("#yzm").val();
		var money = $("#money").val();
		var type = $("#type").val();
		if(type == '1'){
			var qqno = $("#qqno").val();
			if(qqno == '' || qqno == "" || qqno == undefined ){
				alert("请输入QQ号!!");
				return false;
			}
		}
		if(phone == '' || phone == "" || phone == undefined ){
			alert("请输入手机号!!");
			return false;
		}
		if(money == '' || money == "" || money == undefined ){
			alert("请输入兑换金额!!");
			return false;
		}
		return bol;
	}
	
	function quxiao(){
		$("#proif").hide();
	}
	
	function queren(){
		checkyzm();
	}
	
</script>
<style type="text/css">
         #proif{display: none;  position: absolute;  top:10%;  left:24%;  width:50%;  height:60%;  padding: 8px;  border: 8px solid #E8E9F7;  background-color: white;  z-index:1002; }
</style>
</body>
</html>