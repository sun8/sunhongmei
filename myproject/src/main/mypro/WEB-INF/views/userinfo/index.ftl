<!DOCTYPE html>
<html>
<head>
<base href="${basePath}">
<meta charset="UTF-8">
<link href="css/Home/style.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="js/Home/jquery-1.7.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/Home/reset.css" />
<link rel="stylesheet" type="text/css" href="css/Home/different.css" />
<link rel="stylesheet" type="text/css" href="css/Home/comment.css" />
<script src="js/Home/html5shiv.js"></script>
<title>联系我们</title>
</head>
<body class="gray-bg">
	<div class="ibox-content">
		 <div class="modal-dialog modal-width">
                <div class="modal-content">
                    <form id="Login_form">
	                    <div class="modal-body">
								姓名:<input name="name" id="name" type="text" />
	                    </div>
	                    <div class="modal-body">
								联系方式:<input name="pass" id="pass_word" type="password" />
	                    </div>
	                    <div class="modal-body">
								邮箱地址:<input name="pass" id="pass_word" type="password" />
	                    </div>
	                    <div class="modal-body">
								上传简历:<input name="pass" id="pass_word" type="password" />
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
 	<#--图片回显-->
	function setImagePreview(num) {     
	    var docObj=document.getElementById("file"+num);           
	    var imgObjPreview=document.getElementById("preview"+num);  
	    if(docObj.files && docObj.files[0]){     
	        imgObjPreview.style.display = 'block';  
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
	function sendfile() { 
		var oData = new FormData(document.forms.namedItem("addform" ));  
	     $.ajax({  
	          url: 'ProIndex/save' ,  
	          type: 'POST',  
	          data: oData,  
	          async: false,  
	          cache: false,  
	          contentType: false,  
	          processData: false,  
	          success: function (returndata) {  
	        	  alert(returndata);
	          },  
	          error: function (returndata) {
	              alert("程序出错了");  
	          }  
	     });
	}
</script>
</body>

</html>