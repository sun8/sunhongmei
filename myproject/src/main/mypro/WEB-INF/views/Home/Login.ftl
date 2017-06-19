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
                    </div>
                    <form id="Login_form">
	                    <div class="modal-body">
								用户名:<input name="name" id="name" type="text" />
	                    </div>
	                    <div class="modal-body">
								密&nbsp;&nbsp;&nbsp;码:<input name="pass" id="pass_word" type="password" />
	                    </div>
                    </form>
                    <div class="modal-footer">
                        <button id="uploadFormBtn" class="btn btn-primary">登录</button>
                    </div>
                </div>
                <div style="word-wrap:break-word;word-break:break-all;">
                	<span id="mes"></span>
                </div>
            </div>
<script>
	$("#uploadFormBtn").click(function(){
		$.ajax({  
          url: 'Home/Login',  
          type: 'POST',  
          data: $("#Login_form").serialize(),
          dataType: 'json',
          success: function (returndata) {  
        	  if(returndata.status == '0'){
        	  	location.href="ProIndex/home"
        	  }else{
        	  	alert(returndata.msg);
        	  }
          },  
          error: function (returndata) {
              alert("程序出错了");  
          }  
     });
	});
</script>
</body>
</html>