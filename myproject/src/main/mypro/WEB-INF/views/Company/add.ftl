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
						<h5>添加公司信息</h5>
						<div class="ibox-tools">
							<a class="close-link" href="Company/alllist"> <i class="fa fa-times"></i>
							</a>
						</div>
					</div>


					<div class="ibox-content">
						<form method="post" class="form-horizontal" id="addform"  accept-charset="UTF-8"  enctype="multipart/form-data" >
						<div class="col-sm-6">
									<div class="form-group">
										<label class="col-sm-2 control-label">公司名称</label>
										<div class="col-sm-10">
											<input type="text" id="company_name" name="company_name" class="form-control"/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">移动版网址</label>请填写http://XXXXXXXX的格式
										<div class="col-sm-10">
											<input type="text" id="company_url" name="company_url" class="form-control"/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">PC端网址</label>请填写http://XXXXXXXX的格式
										<div class="col-sm-10">
											<input type="text" id="company_add" name="company_add" class="form-control"/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">安卓下载地址</label>请填写http://XXXXXXXX的格式(没有可不填)
										<div class="col-sm-10">
											<input type="text" name="company_android" class="form-control"/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">ios下载地址</label>请填写http://XXXXXXXX的格式(没有可不填)
										<div class="col-sm-10">
											<input type="text" name="company_ios" class="form-control"/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">二维码下载地址</label>请填写http://XXXXXXXX的格式(没有可不填)
										<div class="col-sm-10">
											<input type="text" name="company_ewm" class="form-control"/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">公司简介</label>
										<div class="col-sm-10">
											<textarea id="company_note" name="company_note" class="form-control" rows="4"></textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">公司类型</label>
										<div class="col-sm-10">
											<select id="company_type" name="company_type">
												<option value="1" class="form-control">运营商</option>
												<option value="2" class="form-control">银行</option>
												<option value="3" class="form-control">航空</option>
												<option value="4" class="form-control">其他</option>
											</select>
										</div>
									</div>
									<div class="form-group">  
										上传公司LOGO:(200*200)<input type=file name="file1" id="file1" onchange="javascript:setImagePreview(1);">
										<img id="preview1" src="" width="200px" height="200px" style="diplay:none" />  
									</div>
									<div class="form-group">  
										上传公司网站图片:(750*345)<input type=file name="file2" id="file2" onchange="javascript:setImagePreview(2);">
										<img id="preview2" src="" width="750px" height="345px" style="diplay:none" />  
									</div>
									<div class="form-group">  
										上传公司图文介绍:(712*200)<input type=file name="file3" id="file3" onchange="javascript:setImagePreview(3);">
										<img id="preview3" src="" width="712px" height="200px" style="diplay:none" />  
									</div>
									<div class="hr-line-dashed"></div>
							<div class="">
								<div class="col-sm-4 col-sm-offset-2">
									<button class="btn btn-primary "  type="button" onclick="sendfile(this);"   > 保存</button> 
									<button class="btn btn-white" type="button" onclick="fanhui();" >取消</button>
								</div>
							</div>
								</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
	
	function setImagePreview(num) {     
    var docObj=document.getElementById("file"+num);           
    var imgObjPreview=document.getElementById("preview"+num);  
    if(docObj.files && docObj.files[0]){                          
        imgObjPreview.style.display = 'block';  
        if(num ==1){
			imgObjPreview.style.width = '200px';                          
        	imgObjPreview.style.height = '200px';        
        }else if(num ==2){
        	imgObjPreview.style.width = '750px';                          
        	imgObjPreview.style.height = '345px';
        }else{
        	imgObjPreview.style.width = '712px';                          
        	imgObjPreview.style.height = '200px';
        }                        
        //imgObjPreview.src = docObj.files[0].getAsDataURL();  
        imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);  
     }else{                          
         docObj.select();                          
         var imgSrc = document.selection.createRange().text;                          
         var localImagId = document.getElementById("localImag");  
         //必须设置初始大小                          
         localImagId.style.width = "100px";                          
         localImagId.style.height = "100px";  
        try{                                  
            localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";                                  
            localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;                          
        }catch(e){                                  
            alert("您上传的图片格式不正确，请重新选择!");                                  
            return false;                          
        }  
            imgObjPreview.style.display = 'none';                          
            document.selection.empty();                  
        }                  
            return true;          
     } 
	<#--点击保存按钮-->
	function sendfile(obj) { 
		if(checkall()){
			obj.disabled=true;
			var oData = new FormData(document.forms.namedItem("addform" ));  
		     $.ajax({  
		          url: 'Company/add' ,  
		          type: 'POST',  
		          data: oData,  
		          async: false,  
		          cache: false,  
		          contentType: false,  
		          processData: false,  
		          success: function (returndata) {  
		        	  if("OK" == returndata ){
			              alert("保存失败");  
		        	  }else{
		        		  alert("保存成功");  
		        	  }
		        	  location.href="Company/insert";
		          },  
		          error: function (returndata) {
		              alert("程序出错了");  
		          }  
		     });
		}
	}
	
	function checkall(){
		var mes = true;
		var file1 = $("#file1").val();
		var file2 = $("#file2").val();
		var file3 = $("#file3").val();
		var company_name = $("#company_name").val();
		var company_url = $("#company_url").val();
		var company_add = $("#company_add").val();
		var company_note = $("#company_note").val();
		if(company_name == ''){
			alert("公司名称不能为空");
			return false;
		}
		if(company_url == ''){
			alert("移动版网址不能为空");
			return false;
		}
		if(company_add == ''){
			alert("公司pc端网址不能为空");
			return false;
		}
		if(company_note == ''){
			alert("公司简介不能为空");
			return false;
		}
		if(file1 == ''){
			alert("请上传公司logo图片");
			return false;
		}
		if(file2 == ''){
			alert("请上传公司网页图片");
			return false;
		}
		if(file3 == ''){
			alert("请上传公司图文介绍图片");
			return false;
		}
		return mes;
	}
	
	<#--返回按钮操作-->
	function fanhui(){
		location.href="Company/alllist";
	}
</script>
</body>
</html>