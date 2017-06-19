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

<link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">
<script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>

<title>添加活动</title>
</head>
<body class="gray-bg">
	<form method="post" class="form-horizontal" id="addform"  accept-charset="UTF-8"  enctype="multipart/form-data" >
	<div class="wrapper wrapper-content animated fadeInRight">
		<table>
			<tr>
				<td>活动名称</td>
				<td><input type="text" id="name" name="name"></td>
			</tr>
			<tr>
				<td>活动分类</td>
				<td>
					<select id="type" name="type" >
						<option value="0">电子券充值手机话费</option>
						<option value="1">电子券充值手机Q币</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>活动有效期</td>
				<td>
					<div id="begin" class="input-group date col-sm-2">
                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                        <input name="begin" type="text" placeholder="开始时间" class="form-control" value="${begin!}" width="200px">
                    </div>
                    <div id="end" class="input-group date col-sm-2">
                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                        <input name="end" type="text" placeholder="结束时间" class="form-control" value="${end!}">
                    </div>
					
					
				</td>
			</tr>
			<tr>
				<td>活动换算比例</td>
				<td>
					兑换比例 1:<input type="text" id="proportion" name="proportion">
				</td>
			</tr>
			<tr>
				<td>地区</td>
				<td>
					上传公司网站图片:(200*200)<input type="file" name="file" id="file" onchange="javascript:setImagePreview(2);" >
					<img id="preview" src="" width="200px" height="200px" style="diplay:none" />
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
	
	 $("#begin.input-group.date").datepicker({
        todayBtn: "linked",
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: true,
        autoclose: true
    });
    
  $("#end.input-group.date").datepicker({
        todayBtn: "linked",
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: true,
        autoclose: true
    });
	
	
</script>
</body>
</html>