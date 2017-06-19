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
							<form id="allform" method="post" action="Qb/czlist">
							手机号：<input type="text" id="phone" name="phone" value="${phone!}"  onchange="find();">
							QQ号：<input type="text" id="qqno" name="qqno" value="${qqno!}"  onchange="find();">
							充值类别：
								<select id="type" name="type" onchange="find();">
									<option value="" <#if type == ''>selected</#if>>所有</option>
									<option value="1" <#if type == '1'>selected</#if>>电子券充值手机Q币</option>
									<option value="0" <#if type == '0'>selected</#if>>电子券充值手机话费</option>
								</select>
							充值状态：
							<select id="state" name="state" onchange="find();">
								<option value="" <#if state == ''>selected</#if>>所有</option>
								<option value="1" <#if state == '1'>selected</#if>>成功</option>
								<option value="0" <#if state == '0'>selected</#if>>未到账</option>
							</select>
							</form>
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
										<th>手机号</th>
										<th>QQ号</th>
	                                    <th>电子券消费金额</th>
	                                    <th>充值金额</th>
	                                    <th>来源链接</th>
	                                    <th>活动名称</th>
	                                    <th>充值时间</th>
	                                    <th>是否充值到账</th>
									</tr>
									<#list pagination as pag>
										<tr>
											<td>${pag[0]!}</td>
											<td>${pag[1]!}</td>
											<td>${pag[2]!}</td>
											<td>${pag[3]!}</td>
											<td>${pag[4]!}</td>
											<td>${pag[5]!}</td>
											<td>${pag[6]!}</td>
											<td>${pag[7]!}</td>
											<td>
												<#if pag[8] == '0'>
													<a onclick="bc();">补充</a>
												<#else>
													是
												</#if>
											</td>
										</tr>
									</#list>
								</thead>
								<tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
		function bc(){
			alert("补充");
		}
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
		}
</script>
</body>
</html>