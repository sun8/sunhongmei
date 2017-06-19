<!--查询当日统计-->
<div id="viewcount" style="display:none">
    <form action="" class="form" id="query_day_form">
        <p><span>开始时间</span><input type="text" name="starttime" class="mh_date" placeholder="开始时间"></p>
        <p><span>结束时间</span><input type="text" name="endtime" class="mh_date" placeholder="结束时间"></p>
        <button class="view" type="button" onclick="query_day_form()">查询</button>
    </form>

    <div class="countlist">
        <p id="total_money"></p>
        <p id="succeed_num"></p>
        <p id="un_succeed_num"></p>
        <p id="total_num"></p>
        <p id="total_phone"></p>
    </div>
</div>

<script>
	function query_day_form(){
		$.ajax({
		   type: "POST",
		   url: "businessCheckout/query_day",
		   data: $("#query_day_form").serialize(),
		   dataType:"json",
		   success: function(msg){
		   		var total_money=msg.total_money;
		   		var succeed_num=msg.succeed_num;
		   		var un_succeed_num=msg.un_succeed_num;
		   		var total_phone=msg.total_phone;
		   		$("#total_money").text("订单总金额："+total_money+"元");
		   		$("#succeed_num").text("成功支付订单："+succeed_num+"笔");
		   		$("#un_succeed_num").text("未成功支付订单："+un_succeed_num+"笔");
		   		$("#total_phone").text("订单手机号："+total_phone+"个");
		   		//$("#total_num").text("订单总数："+（succeed_num + un_succeed_num）+"个");
		   		
		   		
		   }		
		   });
		   
	}
	query_day_form();
</script>