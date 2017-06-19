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
<title>添加公司</title>
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>修改信息</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a> <a class="dropdown-toggle" data-toggle="dropdown" href="form_basic.html#"> <i class="fa fa-wrench"></i>
							</a>
							<ul class="dropdown-menu dropdown-user">
								<li><a href="form_basic.html#">选项1</a></li>
								<li><a href="form_basic.html#">选项2</a></li>
							</ul>
							<a class="close-link"> <i class="fa fa-times"></i>
							</a>
						</div>
					</div>


					<div class="ibox-content">
						<form method="post" class="form-horizontal" id="updateform">
							<div class="row">
								<div class="col-sm-6">
									<input type="hidden" name="id" value="${Phone.id}">
									<div class="form-group">
										<label class="col-sm-2 control-label">姓名</label>
										<div class="col-sm-10">
											<input type="text" name="name" class="form-control" value="${Phone.name!""}">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">电话号</label>
										<div class="col-sm-10">
											<input type="text" name="phoneno" class="form-control" value="${Phone.phoneno!""}">
										</div>
									</div>
								</div>
							</div>

							<div class="hr-line-dashed"></div>
							<div class="">
								<div class="col-sm-4 col-sm-offset-2">
									<button class="btn btn-primary "  type="button" onclick="save();">保存内容</button>
									<button class="btn btn-white" type="button" onclick="fanhui();" >取消</button>
								</div>
							</div>

						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
<script>
	<#--点击保存按钮-->
	function save(){
		if(confirm("确定要保存吗!!")){
			$.ajax({
			   type: "POST",
			   url: "Phone/edit",
			   data: $("#updateform").serialize(),
			   error:function(error){ alert("服务出错")},
			   success: function(msg){
			     if(msg>0){
			     	alert("修改成功");
			     }else{
			     	alert("修改失败");
			     }
			     location.href="Phone/list";
			   }
			});
		}
	}
	
	<#--返回按钮操作-->
	function fanhui(){
		location.href="Phone/list";
	}
</script>
</body>
</html>