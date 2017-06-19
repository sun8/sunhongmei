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
<title>修改活动信息</title>
</head>
<body class="gray-bg">
	<form method="post" class="form-horizontal" id="addform"  accept-charset="UTF-8"  enctype="multipart/form-data" >
	<div class="wrapper wrapper-content animated fadeInRight">
		<input type="hidden" name="img_name" value="${activity.img_name!}">
		<input type="hidden" name="img_path" value="${activity.img_path!}">
		<input type="hidden" name="cz_money" value="${activity.cz_money!}">
		<input type="hidden" name="sj_money" value="${activity.sj_money!}">
		<input type="hidden" name="state" value="${activity.state!}">
		<input type="hidden" name="Long_url" value="${activity.long_url!}">
		<input type="hidden" name="fw_num" value="${activity.fw_num!}">
		<input type="hidden" name="dlfw_num" value="${activity.dlfw_num!}">
		<input type="hidden" name="cz_num" value="${activity.cz_num!}">
		<input type="hidden" name="sy_money" value="${activity.sy_money!}">
		<input type="hidden" name="zc_money" value="${activity.zc_money!}">
		<input type="hidden" name="id" value="${activity.id!}">
		
		<table>
			<tr>
				<td onmousedown="yj(if(event.button == 2));">活动名称</td>
				<td><input type="text" id="name" name="name" value="${activity.name!}"></td>
			</tr>
			<tr>
				<td>活动分类</td>
				<td>
					<select id="type" name="type" >
						<option value="0" <#if activity.type == '' || activity.type == '0'>selected</#if>>电子券充值手机话费</option>
						<option value="1" <#if activity.type == '' || activity.type == '1'>selected</#if>>电子券充值手机Q币</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>活动链接</td>
				<td>
					<input type="text" id="hdurl" name="hdurl" value="${activity.hdurl!}"/>
				</td>
			</tr>
			<tr>
				<td>活动有效期</td>
				<td>
					<input type="text" id="begin" name="begin" value="${activity.begin!}">--
					<input type="text" id="end" name="end" value="${activity.end!}">
				</td>
			</tr>
			<tr>
				<td>活动换算比例</td>
				<td>
					兑换比例 1:<input type="text" id="proportion" name="proportion" value="${activity.proportion!}">
				</td>
			</tr>
			<tr>
				<td>
					上传公司网站图片:(200*200)<input type="file" name="file" id="file" onchange="javascript:setImagePreview(2);">
					<img id="preview" src="Qb/imageShow?fileName=${activity.img_name!}" width="200px" height="200px" style="diplay:none" />
				</td>
			</tr>
			<tr>
				<td>
					<a onclick="sendfile();">提交</a>
				</td>
			</tr>
		</table>
	</div>
	</form>
<script>

	function yj(){	
		alert("点击了右键");
	}


	function hqyzm() { 
		var phone = $("#phone").val();
		alert(phone);
	     $.ajax({  
	          url: 'Qb/yzm?phone='+phone ,  
	          type: 'POST',  
	          async: false,  
	          cache: false,  
	          contentType: false,  
	          processData: false,  
	          success: function (data) {  
	          	 $("#hid").val(data);
	        	 alert(data);
	          },  
	          error: function (returndata) {
	              alert("程序出错了");  
	          }  
	     });  
	}
	
	function setImagePreview() {     
    var docObj=document.getElementById("file");           
    var imgObjPreview=document.getElementById("preview");  
    if(docObj.files && docObj.files[0]){                          
        imgObjPreview.style.display = 'block';  
		imgObjPreview.style.width = '200px';                          
    	imgObjPreview.style.height = '200px';        
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
     
     
     function sendfile() { 
			var oData = new FormData(document.forms.namedItem("addform" ));  
		     $.ajax({  
		          url: 'Qb/add' ,  
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
		        	  location.href="Qb/list";
		          },  
		          error: function (returndata) {
		              alert("程序出错了");  
		          }  
		     });
	}
	
	
</script>
</body>
</html>