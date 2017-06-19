<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
	<base href="${BasePath}">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="grey" />
	<meta name="format-detection" content="telephone=no"/>
	<title>支付</title>
    <link rel="stylesheet" href="staticResource/businessCheckout/css/style.css">
    <link rel="stylesheet" href="staticResource/businessCheckout/css/mainpc.css" id="setActiveCss">
    <script src="staticResource/businessCheckout/js/jquery-2.1.1.min.js"></script>
	<script>
        setActiveCss();

		function setActiveCss() {
            var sUserAgent = navigator.userAgent.toLowerCase();
            var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
            var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
            var bIsMidp = sUserAgent.match(/midp/i) == "midp";
            var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
            var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
            var bIsAndroid = sUserAgent.match(/android/i) == "android";
            var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
            var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";

            var $setActiveCss = $('#setActiveCss');
            if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
                $setActiveCss.prop('href', 'staticResource/businessCheckout/css/main.css');
            } else {
                $setActiveCss.prop('href', 'staticResource/businessCheckout/css/mainpc.css');
            }
        }
	</script>
</head>
<body>
    <div class="main">
        <!--菜单-->
        <div class="tabs" id="tabs">
            <span class="btnActive _active" class="tab1" data-id="message">和包短信收银</span><span class="tab2 _active" data-id="wap">和包wap支付</span><span class="tab3 _active" data-id="web">和包web支付</span>
        </div>

        <div class="switchBlock">
            
            <#-- pos支付 -->
            <#include "include_home/pos_pay.ftl"> 
			<#-- wap支付 -->
            <#include "include_home/wap_pay.ftl"> 
            <#-- web支付 -->
            <#include "include_home/web_pay.ftl"> 

            <#-- 查询订单 -->
			<#include "include_home/query_order.ftl"> 
            
			<#--查询当日统计-->
            <#include "include_home/query_day_statistics.ftl">
            
        </div>

        <!--支付成功提示-->
        <div class="paysuccess" style="display:none">
            <div class="success">
                <img src="staticResource/businessCheckout/images/right.png">
                <p>支付成功</p>
            </div>
            <div class="info">
                <p>操作编号：101</p>
                <p>订单手机号：15863849853</p>
                <p>订单流水号：548664215</p>
                <p>支付时间：2015.25.16 14:15:15</p>
            </div>
            <a href="" class="goback">返回</a>
        </div>

        <!--未登录状态工具栏-->
        <!-- <div class="footer">
            <button class="fororder" data-id="vieworder">查询订单</button><button class="forcount" data-id="viewcount">查看当日统计</button>
        </div> -->

        <!--登录状态工具栏-->
        <div class="footer three">
            <button id="button_query_order" class="fororder _active" data-id="vieworder">查询订单</button><button class="forcount _active" data-id="viewcount">查看当日统计</button><button class="forquit" type="button" onclick='outLogin()'>退出账号</button>
        </div>

        <!--弹框提示-->
        <div id="alert" style="display:none">
            <div class="cont">
                <p>短信已下发，请注意查收！</p>
                <div class="confirm">
                    <button class="full">知道了</button>
                </div>
            </div>
        </div>
        
        <div id="alert_pay" style="display:none">
            <div class="cont">
                <p>短信已下发，请注意查收！</p>
                <div class="confirm">
                    <button class="half halfLeft">确认</button><button class="half halfRight">取消</button>
                </div>
            </div>
        </div>
        
    </div>
<script>
	$("#alert .full:first").click(function(){
		$("#alert").hide();
	})
	
	function reset_form(obj_id){
		document.getElementById(obj_id).reset()
	}
	
	function submit_from(obj_id){
		$("#"+obj_id).submit();
	}
	
	function yuE(form_id){
		var phone=$("#"+form_id+" input[name=phone]").val();
		$.ajax({
		   type: "POST",
		   url: "businessCheckout/yuE",
		   data: "phone="+phone,
		   dataType:"json",
		   success: function(msg){
		   		if(msg.status==0){
		   			alert("短信下发成功");
		   		}else{
		   			alert(msg.msg)
		   		}
		   	}
		   });
	}
	
	function outLogin(){
		$.ajax({
		   type: "POST",
		   url: "businessCheckout/outlogin",
		   success: function(msg){
		   		location.href="${BasePath}businessCheckout"
		   	}
		   });
	}
	
	
</script>

    <script src="staticResource/businessCheckout/js/n.js"></script>
    <script>
        $(document).ready(function() {
            bind();

            function bind() {
                $(document).on('click', '#tabs span', function(event) {
                    event.preventDefault();
                    $(this).addClass('btnActive').siblings().removeClass('btnActive');
                    var id = $(this).data('id');
                    $('#'+id).show().siblings('div').hide();
                }).on('click', '.footer button', function(event) {
                    event.preventDefault();
                    $(this).addClass('btnActive').siblings().removeClass('btnActive');
                    var id = $(this).data('id');
                    $('#'+id).show().siblings('div').hide();
                }).on('click', '.oneThird', function() {
                    event.preventDefault();
                    $(this).addClass('btnActive').siblings().removeClass('btnActive');
                }).on('click', '.footer button', function() {
                    event.preventDefault();
                    $(this).addClass('btnActive').siblings().removeClass('btnActive');
                }).on('click', '.btns button', function() {
                    event.preventDefault();
                    $(this).addClass('btnActive').siblings().removeClass('btnActive');
                });
            }
        });

        $(function (){
            $(".mh_date").manhuaDate({
                Event : "click", //可选
                left : 5, //左边距
                Top : -16, //弹出时间停靠的顶部边位置
                fuhao : "-", //日期连接符默认为-
                isTime : false, //是否开启时间值默认为false
            });
            
            $("._active").click(function(){
            	$("._active").removeClass("btnActive");
            	$(this).addClass("btnActive");
            })
            
        });
    </script>
</body>
</html>

