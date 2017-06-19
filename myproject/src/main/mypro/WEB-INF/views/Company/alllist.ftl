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
<link href="css/plugins/dataTables/dataTables.bootstrap.css"
	rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/style.min.css?v=3.0.0" rel="stylesheet">
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script src="js/bootstrap.min.js?v=3.4.0"></script>
<script src="js/jqPaginator.js"></script>
<script src="js/jquery.autocomplete.min.js"></script>
<script src="js/custom/productCache.js?"+ Math.random()></script>
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>积分黄页维护</h5>
							<select id="state" name="state" onchange="find();">
								<option value ="1" <#if state == 'null' || state == '1'>selected</#if>>正常</option>
								<option value ="0" <#if state == '0'>selected</#if>>回收站</option>
							</select>
						<div class="ibox-tools">
							<a class="close-link" href="Company/insert"><i class="fa fa-plus text-navy" title="添加"></i></i>
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
										<th>logo</th>
										<th>id</th>
	                                    <th>公司名称</th>
	                                    <th>简介</th>
	                                    <th>操作</th>
									</tr>
								</thead>
								<tbody>
									<#list company as com>
									<tr class="">
										<td>
											<img alt="image" class="" src="Company/imageShow?fileName=${com.company_logo_name!}" width="100px" height="100px"/>
										</td>
										<td>${com.id!}</td>
	                                    <td>${com.company_name!}</td>
	                                    <td width="50%"><a href="Company/jfsc?comid=${com.id!}"><p class="siteName">${com.company_note!}</p></a></td>
	                                    <td>
	                                    	<a href="Company/edit?comid=${com.id!}" class="btn btn-primary ">编辑</a>
	                                    	<#if com.state == '1'>
	                                    		<a onclick="upstate(${com.id!},'0');" class="btn btn-primary ">移到回收站</a>
	                                    	<#else>
	                                    		<a onclick="upstate(${com.id!},'1');" class="btn btn-primary ">恢复使用</a>
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
			          url: 'Company/upstate?comid='+id+"&state="+state ,  
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
			        	  location.href="Company/alllist";
			          },  
			          error: function (returndata) {
			              alert("程序出错了");  
			          }  
			     });
			}
		}
		
		function find(){
			var state = $("#state").val();
			location.href="Company/alllist?state="+state;
		}
</script>
</body>
</html>