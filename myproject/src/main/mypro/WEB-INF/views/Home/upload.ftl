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
<script src="js/bootstrap.min.js?v=3.4.0"></script>
<script src="js/content.min.js?v=1.0.0"></script>

<script src="js/jquery.form.js"></script>
<title>导入文件</title>
</head>
<body class="gray-bg">
	<div class="ibox-content">
		 <div class="modal-dialog modal-width">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title">导入文件</h4>
                        <h4 class="modal-title">js引入路径示例:src="js/Home/上传的js文件名称"</h4>
                        <h4 class="modal-title">css引入路径示例:href="css/Home/上传的css文件名"</h4>
                        <h4 class="modal-title">图片引入路径示例:src="images/Home/上传的图片文件名"</h4>
                    </div>
                    <form id="uploadForm" enctype="multipart/form-data" >
	                    <div class="modal-body">
								<input name="file" id="file_" type="file" />
								<input name="channelPass_id" type="hidden" value="0">
	                    </div>
                    </form>
                    <div class="modal-footer">
                        <button id="uploadFormBtn" class="btn btn-primary">开始上传</button>
                    </div>
                </div>
                <div style="word-wrap:break-word;word-break:break-all;">
                	<span id="mes"></span>
                </div>
            </div>
<script>

	$("#uploadFormBtn").click(function(){
		var order_name = $("#order_name").val();
		var province = $("#province").val();
		if(confirm("确定上传吗？")){
			$("#uploadFormBtn").text("上传中，请稍后！！");
			$("#mes").text("上传中，请稍后！！");
			$("#uploadForm").submit();
		}
	});

	$('#uploadForm').ajaxForm({
	 		url:"Home/save",
	 		type:"post",
	 		timeout:"900000",
	        dataType: 'text',
	        success: function(msg){
	        	$("#uploadFormBtn").text("开始上传");
	        	$("#mes").text(msg);
	        	alert(msg);
	        },error:function(e){alert("error");$("#uploadFormBtn").text("开始上传");}
	 });
</script>
</body>
</html>