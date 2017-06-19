<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${basePath}">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<title></title>
<link href="css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
<link href="css/font-awesome.min.css?v=4.3.0" rel="stylesheet">
<link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/style.min.css?v=3.0.0" rel="stylesheet">
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script src="js/bootstrap.min.js?v=3.4.0"></script>
<script src="js/jqPaginator.js"></script>
<script src="js/jquery.autocomplete.min.js"></script>
<script src="js/custom/productCache.js?"+ Math.random()></script>

<link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">
<script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>活动列表</h5>
							<form id="allform" method="post" action="Qb/list">
							状态：<select id="state" name="state" onchange="find();">
								<option value="" <#if state == ''>selected</#if>>所有</option>
								<option value="1" <#if state == '1'>selected</#if>>正常</option>
								<option value="0" <#if state == '0'>selected</#if>>回收站</option>
							</select>
							活动名称：<input type="text" id="name" name="name" value="${name!}"  onchange="find();">
							充值类别：<select id="type" name="type" onchange="find();">
								<option value="" <#if type == ''>selected</#if>>所有</option>
								<option value="1" <#if type == '1'>selected</#if>>电子券充值手机Q币</option>
								<option value="0" <#if type == '0'>selected</#if>>电子券充值手机话费</option>
							</select>
							</form>
						<div class="ibox-tools">
							<a class="close-link" href="Qb/insert"><i class="fa fa-plus text-navy" title="添加"></i></i>
							</a>
						</div>
					</div>
					<div class="ibox-content">
						<div id="DataTables_Table_0_wrapper"
							class="dataTables_wrapper form-inline" role="grid">
							<table
								class="table table-striped table-bordered table-hover dataTables-example dataTable"
								id="DataTables_Table_0"
								aria-describedby="DataTables_Table_0_info">
								<thead>
									<tr role="row">
										<th>编号</th>
										<th>活动名称</th>
	                                    <th>活动链接</th>
	                                    <th>活动有效期</th>
	                                    <th>浏览次数(PV)</th>
	                                    <th>独立访客(UV)</th>
	                                    <th>充值总次数</th>
	                                    <th>收银金额<br>(电子券)</th>
	                                    <th>直充金额<br>(现金)</th>
	                                    <th>充值类型</th>
	                                    <th>状态</th>
	                                    <th>操作</th>
									</tr>
								</thead>
								<tbody>
									<#list pagination.items as activity>
										<tr>
											<td>${activity.id!}</td>
											<td>${activity.name!}</td>
											<td>${activity.hdurl!}</td>
											<td>${activity.begin!}----${activity.end!}</td>
											<td>${activity.fw_num!}</td>
											<td>${activity.dlfw_num!}</td>
											<td>${activity.cz_num!}</td>
											<td>${activity.cz_money!}</td>
											<td>${activity.sj_money!}</td>
											<td>
												<#if activity.type == '1'>
													电子券充值手机Q币
												<#else>
													电子券充值手机话费
												</#if>
											</td>
											<td>
												<#if activity.state == '1'>
													正常
												<#else>
													删除
												</#if>
											</td>
											<td>
												<a href="Qb/edit?activityid=${activity.id!}">编辑</a>
												<#if activity.state == '1'>
													<a onclick="upstate(${activity.id!},0);">加入回收站</a>
												<#else>
													<a onclick="upstate(${activity.id!},1);">恢复使用</a>
												</#if>
											</td>
										</tr>
									</#list>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
		function upstate(id,state){
			var mes = "";
			if(state == '0'){
		  	  	mes = "确定要移除所选项到回收站吗？";
		  	}else{
				mes = "确定要恢复所选项吗？";			        	  	  
		  	}
			if(confirm(mes)){
				$.ajax({  
			          url: 'Qb/update?activityid='+id+"&num="+state ,  
			          type: 'POST',  
			          success: function (returndata) {  
			        	  if("1" == returndata ){
			        	  	  if(state == '0'){
			        	  	  	alert("移除成功");
			        	  	  }else{
								alert("恢复成功");			        	  	  
			        	  	  }
			        	  }else{
			        		  if(state == '0'){
			        	  	  	alert("移除失败");
			        	  	  }else{
								alert("恢复失败");			        	  	  
			        	  	  }  
			        	  }
			        	  location.href="Qb/list";
			          },  
			          error: function (returndata) {
			              alert("程序出错了");  
			          }  
			     });
			}
		}
		
		function find(){
			$("#allform").submit();
			//var state = $("#state").val();
			//var name = $("#name").val();
			//location.href="Qb/list?state="+state+"&name="+name;
		}
</script>
</body>
</html>