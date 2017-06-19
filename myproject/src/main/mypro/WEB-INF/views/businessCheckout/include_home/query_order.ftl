<!--查询订单-->
<div id="vieworder" style="display:none">
    <form action="businessCheckout/query_excel" class="form" method='post' id="query_form">
    	<input name="page" type="hidden" value="0">
        <p><span>订单手机号</span><input type="text" name="phone" placeholder="订单手机号"></p>
        <p><span>订单流失号</span><input type="text" name="orderNo" placeholder="订单流失号"></p>
        <p><span>订单状态</span>
	        <button class="oneThird ">已支付</button>
	        <input type="radio" style="display:none" value="pay" name="status">
	        <button class="oneThird">未支付</button>
	        <input type="radio" style="display:none" value="unpay" name="status">
	        <button class="oneThird btnActive">全部</button>
	        <input type="radio" style="display:none" value="" name="status" checked>
        </p>
        <p><span>订单日期</span><input type="text" readonly="true" name="starttime" class="half mh_date" placeholder="起始日期"> - 
        <input type="text" readonly="true" class="half mh_date" name="endtime" placeholder="结束日期"></p>
        <button class="view" type="button" onclick="query_form()">查询</button>
    </form>
    <button class="export" type="button" onclick="execl1()">订单导出</button>

    <!--订单列表-->
    <ul class="orderlist">
        
    </ul>
    <p class="pages"></p>
</div>
<script>
function execl1(){
	//var old_acton=$("#query_form").attr("action");
	//$("#form").attr("action","");
	$("#query_form").submit();
	//$("#form").attr("query_form",old_acton);

}
</script>


<script>
$(function(){
 	$("#button_query_order").click(function(){
		query_form();
	})
});
	
	$("#query_form .oneThird").click(function(){
		$(this).next().click();
	})

	var vieworder_ul=$("#vieworder ul:first"); 

	function query_form(){
		$(vieworder_ul).empty();
		$.ajax({
		   type: "POST",
		   url: "businessCheckout/query",
		   data: $("#query_form").serialize(),
		   dataType:"json",
		   success: function(msg){
		   	var userMap=msg.userMap;
		   	var page_tool=msg.pageTool;
		   	console.info(page_tool);
		    var array=msg.pageTool.items;
		    for(var i=0;i<array.length;i++){
		    	var obj=array[i];
		    	var status=obj.status=='pay'?"支付":"未支付";
		    	var pay_status=obj.pay_status=='SUCCEED'?'成功':"失败"
		    	var userid=obj.userid;
		    	var userName=userMap[userid].userName;
		    	var str="<li>";
             		str+="<p>支付状态："+status+"</p>";
             		str+="<p>交易状态："+pay_status+"</p>";
            		str+="<p>操作编号："+userName+"</p>";
            		str+="<p>支付金额："+obj.price+"</p>";
            		str+="<p>手机号："+obj.mobile+"</p>";
            		str+="<p>订单流水号："+obj.orderflowNo+"</p>";
            		str+="<p>支付时间："+obj.eventtime+"</p>";
            		str+="<p>创建时间："+obj.createtime+"</p>";
        			str+="</li>";
        		$(vieworder_ul).append(str);
		    }
		    $(".pages").empty();
		    var page_str='<a href="javascript:void(0)" onclick="pref_page()">上一页</a>';
		    page_str+='<span>'+page_tool.curIndex+'/'+page_tool.pagesCount+'</span>';
		    page_str+='<a href="javascript:void(0)" onclick="next_page()">下一页</a>';
		    
		    $(".pages").append(page_str	)
		   }
		});
	}
	//下一页
	function next_page(){
		var page=$("#vieworder input[name=page]").val()
		var page=parseInt(page)+1
		$("#vieworder input[name=page]").val(page)
		query_form();
	}
	//上一页
	function pref_page(){
		var page=$("#vieworder input[name=page]").val()
		var page=parseInt(page)-1
		$("#vieworder input[name=page]").val(page)
		query_form()
	}
</script>
