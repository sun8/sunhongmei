<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0044)http://www.zi-han.net/theme/hplus/login.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <!-- <title>腾瑞明产品销售管理系统</title> -->
    <title>微信积分荟</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
<!-- 
    <link rel="shortcut icon" href="http://www.zi-han.net/theme/hplus/favicon.ico"> 
 -->    
 	<link href="./css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="./css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="./css/animate.min.css" rel="stylesheet">
    <link href="./css/style.min.css?v=4.0.0" rel="stylesheet"><!--<base target="_blank">--><base href="." target="_blank">
    <!-- <script>if(window.top !== window.self){ window.top.location = window.location;}</script> -->
</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>
                <h3 class="logo-name">TM</h3>
            </div>
            <!-- <h3>腾瑞明产品销售管理系统</h3> -->
            <h3>微信积分荟</h3>

            <form class="m-t" role="form" action="login/login" method="POST" target='_self'>
                <div class="form-group">
                    <input type="text" class="form-control" name="logname" id="logname" placeholder="用户名" required="">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="pass" id="pass" placeholder="密码" required="">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">登 录</button>
            </form>
        </div>
    </div>
</body></html>