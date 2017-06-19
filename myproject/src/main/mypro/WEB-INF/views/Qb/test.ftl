<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="${basePath}">
	<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="grey" />
	<meta name="format-detection" content="telephone=no"/>
	<title>测试</title>
	<link rel="stylesheet" href="css/integral.css"/>
</head>
<body>
	<ui id="tt">
	</ui>
</body>
<script>
	 function ryxz(){
		//显示人员选择对话框
		$('#tt').treegrid({   
			url:"/jy/jy-selectuser.action?sign=aa",  
			height:500, 
	        idField:'id',
			treeField:'name', 
			rownumbers: false,//前面不显示序号
		    animate:false,
			singleSelect:false,//可以多选
			columns:[[  	      
			          	 {field:'name',title:'姓名',width:220}
			        ]]
		});
	}
</script
</html>