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
<title>首页管理</title>
</head>
<body>
	<section class="width1800 service_box">
		<form id="addform" accept-charset="UTF-8"  enctype="multipart/form-data">
        <ul class="success clearfix">
            <li class="suc_ri">
                <ul class="case clearfix">
                    <li class="succ_f">
                    	<div class="form-group">  
							<img id="preview2" src="images/Home/2.JPG" />
						</div>
                        <span class="info"></span>
                        <div class="info_int">
                            <p><input type=file name="file2" id="file2" onchange="javascript:setImagePreview(2);"></p>
                        </div>
                    </li>
                    <li class="succ_f">
                    	<div class="form-group">  
							<img id="preview3" src="images/Home/3.JPG" />
						</div>
                        <span class="info"></span>
                        <div class="info_int">
                            <p><input type=file name="file3" id="file3" onchange="javascript:setImagePreview(3);"></p>
                        </div>
                    </li>
                    <li class="succ_f">
                    	<div class="form-group">  
							<img id="preview4" src="images/Home/4.JPG" />
						</div>
                        <span class="info"></span>
                        <div class="info_int">
                            <p><input type=file name="file4" id="file4" onchange="javascript:setImagePreview(4);"></p>
                        </div>
                    </li>
                    <li class="succ_f">
                    	<div class="form-group">  
							<img id="preview5" src="images/Home/5.JPG" />
						</div>
                        <span class="info"></span>
                        <div class="info_int">
                            <p><input type=file name="file5" id="file5" onchange="javascript:setImagePreview(5);"></p>
                        </div>
                    </li>
                     <li class="succ_f">
                    	<div class="form-group">  
                    		<button class="btn btn-primary "  type="button" onclick="sendfile();">保存</button> 
						</div>
                    </li>
                </ul>
            </li>
        </ul>
        </form>
    </section>
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