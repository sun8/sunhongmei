<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${basePath}">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<link href="css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
<link href="css/font-awesome.min.css?v=4.3.0" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/style.min.css?v=3.0.0" rel="stylesheet">
<link href="css/plugins/iCheck/custom.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="application/javascript" src="js/jquery-2.0.3.js"></script>  
<title>无标题文档</title>  
<script type="application/javascript">  
</script>  
<title>添加公司</title>
</head>
<body class="gray-bg">
	<div class="ibox-title">
		<h5>权限管理</h5>
		<div class="ibox-tools">
			<a class="close-link" href="javascript:history.go(-1);"><i class="fa fa-close"></i>
			</a>
		</div>
	</div>
	<div class="ibox-content">
		<form id="passform" class="form-horizontal">
			<div class="form-group">
				<input type="hidden" id="userid" name="userid" value="${user.id}">
				<label class="col-sm-2 control-label">旧密码</label>
				<div class="col-sm-10">
					<input type="password" id="oldpass" name="oldpass" class="form-control" onblur="checkpass();" onFocus="dajd();"/>
					<span id="chkpass" color="red"></span>
				</div>
				<label class="col-sm-2 control-label">登录名</label>
				<div class="col-sm-10">
					<input type="text" id="username" name="username" class="form-control" value="${user.login_name!}"/>
					<span id="dlmwk" color="red"></span>
				</div>
				<label class="col-sm-2 control-label">用户真实姓名</label>
				<div class="col-sm-10">
					<input type="text" id="user_name" name="user_name" class="form-control" value="${user.user_name!}"/>
				</div>
				<label class="col-sm-2 control-label">新密码</label>
				<div class="col-sm-10">
					<input type="password" id="newpass" name="newpass" class="form-control"/>
					<span id="xmmwk" color="red"></span>
				</div>
				<label class="col-sm-2 control-label">确认新密码</label>
				<div class="col-sm-10">
					<input type="password" id="pass" name="pass" class="form-control"/>
					<span id="qrmmwk" color="red"></span>
				</div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
				<div class="col-sm-4 col-sm-offset-2">
					<button class="btn btn-primary "  type="button" onclick="save()">保存内容</button>
					<button class="btn btn-white" type="button" onclick="history.go(-1)" >取消</button>
				</div>
			</div>
		</form>
</div>
<script>
	function save(){
		$.ajax({
			   type: "POST",
			   url: "login/updatepass",
			   data: $("#passform").serialize(),
			   error:function(error){ alert("服务出错")},
			   success: function(msg){
			     if(msg>0){
			     	alert("修改成功!!");
			     }else{
			     	alert("修改失败!!");
			     }
			   }
		});
	}
</script>
</body>
</html>