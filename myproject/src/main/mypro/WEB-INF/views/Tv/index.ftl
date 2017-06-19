<!DOCTYPE HTML>
<html lang="zh-CN">
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
<link rel="stylesheet" href="staticResource\newyaoyiyao/css/styles.css"/>
</head>
<body>
<form method="post" action="Tv/index" class="form-horizontal" id="addform"  accept-charset="UTF-8"  enctype="multipart/form-data" >
<div class="wrap">
    <div class="top">
        <div class="product">
        	<#if code == '1'>
					<img src="staticResource\newyaoyiyao/images/pro-1.png" class="proBg">        	
        	<#elseif code == '2'>
        			<img src="staticResource\newyaoyiyao/images/pro-2.png" class="proBg">
        	<#elseif code == '3'>
        			<img src="staticResource\newyaoyiyao/images/pro-3.png" class="proBg">
        	</#if>
        </div>
        <input type="hidden" id="openid" name="openid" value="${openid!}">
		<input type="hidden" id="code" name="code" value="${code!}">
        <div class="phone"><input type="text" id="phone" name="phone" placeholder="领奖手机号" maxlength="11">
        <button type="button" onclick="toPrize()">确定</button></div>
        <section>
            <img src="staticResource\newyaoyiyao/images/title.png" class="voice">
            <p class="line-1">和包电子券现在可以充值Q币、流量、话费</p>
            <p class="line-2">不要在观望你也有~</p>
            <p class="line-3">点击立即充值，短信立即下发~</p>
            <p class="line-4">和包电子劵充值成功<b class="red">再送<b> >>></p>
            <img src="staticResource\newyaoyiyao/images/tip.png" class="tip">
        </section>
        <a onclick="phoneno();" class="recharge">立刻去充值</a>
    </div>

    <div class="bottom">
        <img src="staticResource\newyaoyiyao/images/yyqr.png">
    </div>
</div>
</form>
</body>
<script>
	function phoneno(){
		var phone = $("#phone").val();
		if(phone == '' || phone == "" || phone == undefined ){
				alert("请输入手机号!!");
		}else{
			var shuzi =/^(0|[1-9][0-9]*)$/;
			if(phone.match(shuzi)==null){
				alert("手机号格式错误,请重新输入");
				$("#phone").val("");
			}else{
				fex(phone);
				$("#addform").submit();			
			}
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
<script>
	function toPrize(){
		var openid=$("#openid").val();
		var code=$("#code").val();
		var phone=$("#phone").val();
		if(phone==''){
			alert("请输入手机号");
			return;
		}
		$.ajax({
		   type: "POST",
		   url: "Tv/toPrize",
		   data: "openid="+openid+"&code="+code+"&phone="+phone,
		   dataType:"json",
		   success: function(msg){
		   	if(msg.status==0){
		   		if(code==1){
		     		alert("你获得的影票代金券以短信形式48小时内下发您的手机,多次领取以最后一个手机号为准。");
		     	}else if(code==2){
		     		alert("你获得的30元Q币充值码，将在48小时内发送到您的手机,多次领取以最后一个手机号为准。");
		     	}else if(code==3){
		     		alert("你获得的20M流量，将在48小时内充值到您的手机,多次领取以最后一个手机号为准。");
		     	}
		     }else{
		     	if(code==1){
		     		alert("你获得的影票代金券以短信形式48小时内下发您的手机,多次领取以最后一个手机号为准。");
		     	}else if(code==2){
		     		alert("你获得的30元Q币充值码，将在48小时内发送到您的手机,多次领取以最后一个手机号为准。");
		     	}else if(code==3){
		     		alert("你获得的20M流量，将在48小时内充值到您的手机,多次领取以最后一个手机号为准。");
		     	}
		     	//alert(msg.msg)
		     }
		   }
		});
	}
</script>
<div style="display:none">
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1257370485'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1257370485' type='text/javascript'%3E%3C/script%3E"));</script>
</div>
</html>
