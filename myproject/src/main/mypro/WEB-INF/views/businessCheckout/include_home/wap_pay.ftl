 <!--和包wap支付-->
<div id="wap" style="display:none">
    <!--支付金额-->
    <p class="need"></p>

    <form action="businessCheckout/pay_wap" method="post" class="form" id="wap_form">
        <p><span>收银员编号</span>${u.userName}</p>
        <p><span>请输入手机号</span><input type="text" name="phone" value="" placeholder="请输入手机号"></p>
        <p><span>请输入金额</span><input type="text" name="price" placeholder="请输入金额"></p>
    </form>

    <!--操作方法-->
    <div class="btns">
        <button>查询余额</button><button  type="button" onclick="submit_from('wap_form')">确认收银</button>
        <button type="button" onclick="reset_form('wap_form')">重新填写</button>
    </div>
</div>
<script>
	var _price="";
	$("#wap input[name=price]:first").bind("keypress",function(){
		_price=$(this).val();
	})
	$("#wap input[name=price]:first").bind("keyup",function(){
		var price=$(this).val();
		if(price==''){
			price=0;
			$("#wap .need:first").text("支付金额"+price+"元");
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
		$("#wap .need:first").text("支付金额"+price+"元");
	})
</script>