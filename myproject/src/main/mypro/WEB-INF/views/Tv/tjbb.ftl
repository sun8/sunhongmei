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
<title>统计</title>
<link href="css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
<link href="css/font-awesome.min.css?v=4.3.0" rel="stylesheet">
<link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/style.min.css?v=3.0.0" rel="stylesheet">
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script src="js/bootstrap.min.js?v=3.4.0"></script>
<script src="js/jqPaginator.js"></script>
<script src="js/jquery.autocomplete.min.js"></script>
</head>
<body class="gray-bg">
	<form method="post" action="Tv/tjbb" class="form-horizontal" id="xfform"  accept-charset="UTF-8"  enctype="multipart/form-data" >
		<table class="table table-striped table-bordered table-hover dataTables-example dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
			<form id="find" method="post" action="Tv/tjbb">
					<tr class="gradeA odd">
						<td>充值类型：
							<select class="form-control m-b" name="type"  onchange="find();">
								<option value="" <#if type == ''>selected</#if>>--请选择--</option>
								<option value="2" <#if type == '2'>selected</#if>>Q币</option>
								<option value="3" <#if type == '3'>selected</#if>>流量</option>
								<option value="3" <#if type == '4'>selected</#if>>积分荟充值</option>
							</select>
						</td>
						<td>
							是否到账：
							<select class="form-control m-b" name="cz_state"  onchange="find();">
								<option value="" <#if cz_state == ''>selected</#if>>--请选择--</option>
								<option value="0" <#if cz_state == '0'>selected</#if>>未到账</option>
								<option value="1" <#if cz_state == '1'>selected</#if>>已经到账</option>
							</select>
						</td>
						<td>
							日期：<input type="text" id="cz_time" name="cz_time" value="${cz_time!}"  onchange="find();"/>
						</td>
					</tr>
			</form>
			<tr class="gradeA odd">
				<td>日期</td>
				<td>充值类型</td>
				<td>充值金额</td>
				<td>Pv</td>
				<td>Uv</td>
			</tr>
			<#list object as obj>
				<tr class="gradeA odd">
					<td>${obj[4]}</td>			
					<td><#if obj[0] == '2'>Q币<#else>流量</#if></td>		
					<td>${obj[1]!}</td>
					<td>${obj[2]!}</td>
					<td>${obj[3]!}</td>
				</tr>
			</#list>
		</table>
	</form>
<script>
	function find(){
		$("#xfform").submit();
	}
</script>
</body>
</html>