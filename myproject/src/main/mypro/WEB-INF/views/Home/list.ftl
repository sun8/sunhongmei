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
						<h5>信息列表</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a> <a class="dropdown-toggle" data-toggle="dropdown" href="form_basic.html#"> <i class="fa fa-wrench"></i>
							</a>
							<ul class="dropdown-menu dropdown-user">
								<li><a href="form_basic.html#">选项1</a></li>
								<li><a href="form_basic.html#">选项2</a></li>
							</ul>
							<a class="close-link" href="Phone/insert"><i class="fa fa-plus text-navy" title="添加"></i></i>
							</a>
						</div>
					</div>
					<div class="ibox-content">
						<div id="DataTables_Table_0_wrapper"
							class="dataTables_wrapper form-inline" role="grid">
							<div class="row">
								<form id="find" method="post" action="Phone/list">
								<input type="hidden" name="page" value="${pagination.curIndex!}">
								<div class="col-sm-12">
									<div id="DataTables_Table_0_filter" class="dataTables_filter">
										<a onclick="" href="javascript:find();" class="btn btn-primary ">查找</a>
										<label>
											姓名：<input type="text" class="form-control" name="name" value="${name!}">
										</label>
										<label>
											手机号：<input type="text" class="form-control" name="phoneno" value="${phoneno!}">
										</label>
									</div>
								</div>
								</form>
							</div>
							<table
								class="table table-striped table-bordered table-hover dataTables-example dataTable"
								id="DataTables_Table_0"
								aria-describedby="DataTables_Table_0_info">
								<thead>
									<tr role="row">
										<th>id</th>
	                                    <th>姓名</th>
	                                    <th>电话号</th>
	                                    <th>操作</th>
									</tr>
								</thead>
								<tbody>
									<#list pagination.items as Phone>
									<tr class="gradeA odd">
										<td>${Phone.id!}</td>
	                                    <td>${Phone.name!}</td>
	                                    <td>${Phone.phoneno!}</td>
	                                    <td class="center">
	                                    	<a href="Phone/update?Phoneid=${Phone.id}"><i class="fa fa-pencil text-navy" title="修改"></i></a>
										<a href="javascript:del('${Phone.id!}')"><i class="fa fa-trash-o text-navy" title="删除"></i></a>
										</td>
									</tr>
									</#list>
							</table>
							<div class="row">
								<div class="col-sm-6">
									<div class="dataTables_info" id="DataTables_Table_0_info"
										role="alert" aria-live="polite" aria-relevant="all">
										共 ${pagination.rowsCount!} 项,共 ${pagination.pagesCount!}  页</div>
								</div>
								<div class="col-sm-6">
									<div class="dataTables_paginate paging_simple_numbers"
										id="DataTables_Table_0_paginate">
										<ul class="pagination" id="pagination1">
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
     $.jqPaginator('#pagination1', {
		        totalPages: ${pagination.pagesCount!},
		        visiblePages: 8,
		        currentPage: ${pagination.curIndex!},
		        onPageChange: function (num, type) {
		           if(type=="change"){
		           	  $("#find input[name=page]").val(num);
		              $("#find").submit();
		           }
		        }
		    });
    
    function find(){
    	var	url=$("#find").attr("action");
   		$("#find").submit();
    }

	function findcx(){
    	var	url=$("#find").attr("action");
    	if(num==1){
    		$("#find").attr("action",url+"/excel")
    	}
    	if($('#product_').val().trim==''){
    		$("#product_id").val(0)
    	}
   		$("#find").submit();
   		$("#find").attr("action",url)
   		return false;
	}

	//产品
	$(function(){
		
	var productList=_product_.getList();
	var map=_product_.getMap();
	
	var page_init=function(){
		 $(".pro_name").each(function(){
		     	var id=$(this).text();
		     	var pro_name=map[id];
		     	$(this).text(pro_name)
		  });
		 var input_key=$("#product_id").val()
		 $("#product_").val(map[input_key])
	}
		
		$('#product_').autocomplete({
		   lookup: productList,
		   onSelect: function (suggestion) {
		   $('#product_').val(suggestion.value);
		   $("#product_id").val(suggestion.data);
		  }
		});
		page_init();
	});
	function del(Phoneid){
		parent.layer.confirm('确定要删除数据吗？删除后将无法恢复!!', {
			    btn: ['确定','取消'], 
			    title:'友情提示:',
			    shade: false 
			}, function(){
				$.ajax({
				   type: "POST",
				   url: "Phone/delete?Phoneid="+Phoneid,
				   error:function(error){ parent.layer.msg('服务出错', {icon: 1});},
				   success: function(msg){
				     if(msg>0){
				     	parent.layer.msg('删除成功', {icon: 1});
				     }else{
				     	parent.layer.msg('删除失败', {icon: 1});
				     }
				     location.href="Phone/list";
				   }
				});
			}, function(){
			});
	}
	
	function test(){
		alert("test");
		//.href="product/dcexcel";
		$.layer({  
		    type: 2,  
		    shadeClose: true,  
		    title: false,  
		    closeBtn: [0, false],  
		    shade: [0.8, '#000'],  
		    border: [0],  
		    offset: ['20px',''],  
		    area: ['1000px', ($(window).height() - 50) +'px'],  
		    iframe: {src: 'product/initAddView'}  
		});   
	}
	
	function test(){
		alert("test");
		location.href="product/dcexcel";
	}
</script>
<style>
.autocomplete-suggestions { border: 1px solid #999; background: #fff; cursor: default; overflow: auto; }
.autocomplete-suggestion { padding: 10px 5px; white-space: nowrap; overflow: hidden; }
.autocomplete-selected { background: #f0f0f0; }
.autocomplete-suggestions strong { font-weight: normal; color: #3399ff; }
</style>

</html>