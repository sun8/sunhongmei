<!--和包pos支付-->
<div id="message">
    <!--支付金额-->
    <p class="need"></p>

    <form action="businessCheckout/pay_pos" class="form" method="post" id="pos_form">
    	<input type="hidden" name="orderNo" >
        <p><span>收银员编号</span>${u.userName}</p>
        <p><span>请输入手机号</span><input type="text" name="phone" placeholder="请输入手机号"></p>
        <p><span>请输入金额</span><input type="text" name="price"  placeholder="请输入金额"></p>
        <p class="verity"><span>请输入验证码</span><input type="text" name="vcode" placeholder="验证码">
        <button onclick="getSMS(this)" type="button" id="sms_button">获取验证码</button></p>
    </form>

    <!--操作方法-->
    <div class="btns">
        <button type="button" onclick="yuE('pos_form')">查询余额</button><button type="button" onclick="submit_from('pos_form')">确认收银</button><button type="button" onclick="reset_form('pos_form')" >重新填写</button>
    </div>
</div>
<script>
	var sms_button_time=0;
	function getSMS(obj){
		sms_button_time=30;
		$(obj).attr("disabled","")
		$(obj).text(sms_button_time+"秒后重新发送")
		$.ajax({
		   type: "POST",
		   url: "businessCheckout/pay_pos_sms",
		   data: $("#pos_form").serialize(),
		   dataType:"json",
		   success: function(msg){
		     if(msg.status==0){
		     	$("#pos_form input[name=orderNo]").val(msg.orderNo);
			     $("#alert p:first").text("短信已下发，请注意查收！");
			     $("#alert").show();
		     }else{
		     	 $("#alert p:first").text(msg.msg);
			     $("#alert").show();
		     }
		   }
		});
	}

function sms_button_action(){
	if(sms_button_time>0){
		sms_button_time--;
		$("#sms_button").text(sms_button_time+"秒后重新发送")
	}else{
		if(typeof($("#sms_button").attr("disabled"))=="undefined"){
			
		}else{
			$("#sms_button").removeAttr("disabled")
			$("#sms_button").text("获取验证码")
		}
	}
}
setInterval(sms_button_action, 1000); 
</script>

<script>
	var _price="";
	$("#message input[name=price]:first").bind("keypress",function(){
		_price=$(this).val();
	})
	$("#message input[name=price]:first").bind("keyup",function(){
		var price=$(this).val();
		if(price==''){
			price=0;
			$("#message .need:first").text("支付金额"+price+"元");
			return;
		}
		
		if(price<0){
			alert("金额不能小于0");
			return;
		}
		
		var test_price=/^[0-9]{1}[0-9]*\.{0,1}[0-9]{0,2}$/

		if(!test_price.test(price)){
			alert("金额格式不正确");
			$(this).val(_price);
			return;
		}
		$("#message .need:first").text("支付金额"+price+"元");
	})
</script>