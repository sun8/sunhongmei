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
<title>礼品发放</title>
<link rel="stylesheet" href="css/indexy.css"/>
</head>
<body class="gray-bg">
	<form method="post" action="Tv/fflp" class="form-horizontal" id="xfform"  accept-charset="UTF-8"  enctype="multipart/form-data" >
	<input type="hidden" id="type" name="type"/>
	<div class="box view">
		<label><strong>发放分类：</strong>
			<span id="qb" onclick="dj(1);" class="">Q币</span>
			<span id="ll" onclick="dj(2);" >流量</span>
		</label>
		<label><strong id="je_ll">发放金额：</strong>
		<input type="text" id="money" name="money" placeholder="请输入您的金额" style="width:40%" onchange="checje();" maxlength="5">
		<select id="czsl" name="czsl" style="display:none; width:40%;" onchange="lldyje();">
		</select>
		<em id="lldyje" style="" class="normal"></em>
		</label>
		<label><strong>充值号码：</strong><input type="text" id="czhm" name="czhm" value="" placeholder="请输入您的QQ号码" maxlength="12" onchange="checkphone();"></label>
		<label><strong>输入秘钥：</strong><input type="text" id="my" name="my" value="" placeholder="请输入秘钥" maxlength="30"></label>
		<a class="submit" id="anniu" onclick="tijiao();" style="text-align:center;">确定</a>
	</div>
	
	</form>
<script>
	
	var type = $("#type").val();
	if(type == 2 || type == 1 || type == ''){
		$("#qb").click();
		//$("#lldyje").hide();
		$("#qb").attr("class","active");
		$("#ll").attr("class","");
	}else if(type == 3){
		$("#ll").click();
		//$("#czsl").empty();
		//$("#lldyje").show();
		$("#qb").attr("class","");
		$("#ll").attr("class","active");
	}
	//$("#type").val("1");
	//$("#czhm").val("");

	function check(num) { 
		if(num == '2'){
			$("#phone").val("");
		}else{
			$("#phone").val($("#hidphone").val());
		}
	}
	
	function checkphone(){
		var yyslx = $("#yyslx").val();
		var type = $("#type").val();
		var czhm = $("#czhm").val();
		if(type == 3){
		  if(czhm != '' && czhm != "" && czhm != undefined ){
		  	$("#czsl").val("");
			$.ajax({  
		          url: 'Tv/checkphone' ,  
		          type: 'POST',  
		          data : {"type":yyslx,"phone":czhm}, 
		          success: function (data) {
		          		$("#lldyje").text("");
		          		var html;
		          		$("#czsl").empty();
		          		if(data == 1){
		          			html = '<option value="">请选择</option><option value="722">移动1024M</option><option value="782">移动500M</option><option value="716">移动30M</option><option value="715">移动10M</option>';
		          		}else if(data == 2){
		          			html = '<option value="">请选择</option><option value="005000">联通500M</option><option value="001000">联通100M</option><option value="002000">联通20M</option>';
		          		}else{
		          			html = '<option value="">请选择</option><option value="0205020000500">电信500M</option><option value="0205020000200">电信200M</option><option value="0205020000030">电信30M</option>';
		          		}
		          		$("#czsl").append(html);
		         }, error: function (returndata) {}  
			});
		  }	
		}
	}
	
	
	function check(){
		var bool = true;
		var type = $("#type").val();
		var czhm = $("#czhm").val();
		var my = $("#my").val();
		if(my == '' || my == "" || my == undefined ){
			alert("秘钥不能为空!!");
			return false;
		}
		if(type != '3'){
			var money = $("#money").val();
			if(money == '' || money == "" || money == undefined ){
				alert("请输入兑换金额!!");
				return false;
			}	
		}else{
			var czsl = $("#czsl").val();
			if(czsl == '' || czsl == "" || czsl == undefined ){
				alert("请选择兑换流量!!");
				return false;
			}
		}
		if(czhm == '' || czhm == "" || czhm == undefined ){
			alert("请输入充值号码!!");
			return false;
		}else{
			var shuzi =/^(0|[1-9][0-9]*)$/;
			if(czhm.match(shuzi)==null){
				alert("充值号码格式错误,请重新输入");
				$("#czhm").val("");
				return false;
			}
		}	
		return bool;	
	}
	
	function checje(){
		var money = $("#money").val();
		var shuzi =/^[1-9]([0-9])*$/;	
		if(money != '' && money != "" && money != undefined ){
			if(money.match(shuzi)==null){
				alert("充值金额只能输入大于0正整数!");
				$("#lldyje").text("");
				$("#money").val("");
			}else{
				if(parseInt(money) <2){
					alert("兑换Q币必须大于1!");
					$("#lldyje").text("");
					$("#money").val("");
				}else if(parseInt(money) > 112){
					alert("兑换Q币必须小于100!");
					$("#lldyje").text("");
					$("#money").val("");
				}else{
					$.ajax({  
				          url: 'Tv/qbmoney' ,  
				          type: 'POST',  
				          data : {"money":money}, 
				          success: function (data) {
				          	$("#lldyje").text(data+"Q币");
				         }, error: function (returndata) {}  
					});
				}
			}
		}
	}
	
	
	function tijiao(){
		if(check()){
			$.ajax({  
		          url: 'Tv/fflp' ,  
		          type: 'POST',  
		           data : $("#xfform").serializeArray(), 
		          success: function (data) {
		          		location.href="Tv/lpff"
		          },  
		          error: function (returndata) {}  
			});
			$("#addform").submit();
		}
	}
	
	function lldyje(){
		var czsl = $("#czsl").val();
		if(czsl != '' && czsl != "" && czsl != undefined ){
			$.ajax({  
		          url: 'Tv/lldyje' ,  
		          type: 'POST',  
		          data : {"code":czsl}, 
		          success: function (data) {
		          		$("#lldyje").text(data+"元")
		          },  
		          error: function (returndata) {}  
			});
		}else{
			$("#lldyje").text("");
		}
	}
	
	function dj(num){
		var phone = $("#phone").val();
		if(num == 1){
			$("#qb").attr("class","active");
			$("#ll").attr("class","");
			$("#type").val("2");
			$("#czhm").attr("placeholder","请输入您的QQ号");
			$("#money").show();
			$("#money").val("");
			$("#czsl").hide();
			$("#je_ll").text("充值金额:");
			$("#czhm").val("");
			$("#lldyje").text("");
			//$("#lldyje").hide();
		}else{
			$("#czhm").val(phone);
			$("#qb").attr("class","");
			$("#ll").attr("class","active");
			$("#type").val("3");
			$("#czhm").attr("placeholder","请输入您的手机号");
			$("#czsl").show();
			$("#money").hide();
			$("#je_ll").text("充值流量:");
			//$("#lldyje").show();
			$("#lldyje").text("");
			var yyslx = $("#yyslx").val();
			var html = "";
			$("#czsl").empty(); 
	  		if(yyslx == 1){
	  			html = '<option value="">请选择</option><option value="722">移动1024M</option><option value="782">移动500M</option><option value="716">移动30M</option><option value="715">移动10M</option>';
	  		}else if(yyslx == 2){
	  			html = '<option value="">请选择</option><option value="005000">联通500M</option><option value="001000">联通100M</option><option value="002000">联通20M</option>';
	  		}else{
	  			//document.getElementById("czsl").options.length = 0; 
	  			html = '<option value="">请选择</option><option value="0205020000500">电信500M</option><option value="0205020000200">电信200M</option><option value="0205020000030">电信30M</option>';
	  		}
	  		$("#czsl").append(html);
			}
	}
	
</script>
</body>
</html>