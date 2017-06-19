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
	<title>登录</title>
    <link rel="stylesheet" href="staticResource/businessCheckout/css/style.css">
    <link rel="stylesheet" href="staticResource/businessCheckout/css/express.css">
    <style>
        body{background:#E9ECF5;font-family:arial,microsoft yahei;width: 100%;
        height: 100%;}
        div.layout{width:480px;margin:0 auto;}
        .author,.author a{color:#2F52A1;text-align:center;margin-top:27px;opacity:.5}
        .btn-blue:hover {background: #008BEE;}
        .btn-blue {
        color: #fff;
        background: #2F52A1;
        line-height: 20px;
        }
        .btn {
        padding: 5px 15px;
        border-radius: 3px;
        overflow: hidden;
        cursor: pointer;
        border: 0;
        }
        li, dd {
        list-style-type: none;
        margin: 0px;
        padding: 0px;
        }
        .login-main {
            height: 200px;
            position: relative;
        }
        .tip {
            position: absolute;
            bottom: 18px;
            left: 100px;
        }
        .tip input { width: auto; margin-right: 5px; }
    </style>
    <link rel="stylesheet" id="setActiveCss">
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
                $setActiveCss.prop('href', 'staticResource/businessCheckout/css/pos.css');
            } else {
                $setActiveCss.prop('href', 'staticResource/businessCheckout/css/pospc.css');
            }
        }
	</script>
</head>
<body>
    <div class="layout">
        <div id="login-box">
            <div class="login-top"><h1>积分荟</h1><p>Management System</p></div>
            <div class="login-main">
                <form name="form1" id="form" >
                    <dl>
                        <dt>用户名：</dt>
                        <dd><input type="text" name="loginName" /></dd>
                        <dt>密码：</dt>
                        <dd><input type="password" class="alltxt" name="password" /></dd>
                        <dt></dt>
                        <dt>&nbsp;</dt>
                        <dd style="margin-left: 94px;"><button type="button" name="sm1" class="btn login-btn btn-blue" onclick="_submit()">登录</button></dd>
                    </dl>
                    <div class="tip"><input type="checkbox" checked>记住密码，下次将自动登录</div>
                </form>
                
            </div>
        </div>
    </div>
<script>
	function _submit(){
		$.ajax({
		  url: "businessCheckout/login",
		  method: "post",
		  data:$("#form").serialize(),
		  dataType:"json",
		  success: function(data){
		  	console.info(data)
		    if(data.status==0){
		    	location.href='${BasePath}businessCheckout';
		    }else{
		    	alert("登录失败");
		    }
		  }
		});
	}
</script>
</body>
</html>

