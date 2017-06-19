/**
*产品缓存
需要先引入jquery
引入方式：
sessionStorage["productList"]
sessionStorage["productMap"]
*/
var sessionStorage;

if (window.sessionStorage) {
    sessionStorage = window.sessionStorage;
} else {
    console.info("浏览暂不支持sessionStorage")
}

var _product_ = function () {};
_product_.init = function () {
    this.ajaxProduct();
    this.ajaxBrand()
}
//品牌
_product_.ajaxBrand=function(){
	$.ajax({
        type: "get",
        url: "product/brands",
        dataType: "json",
        contentType: "application/x-www-form-urlencoded;charset=utf-8",
        async:false,
        success: function (list) {
            sessionStorage.setItem("brandList",JSON.stringify(list));
        }
    });
}
_product_.getBrandList=function(){
	var str = sessionStorage.getItem("brandList");
    if (str == null) {
        this.init();
    }
    str=sessionStorage.getItem("brandList");
    return JSON.parse(str);
}
//产品
_product_.ajaxProduct=function(){
	$.ajax({
        type: "POST",
        url: "product/autoCompleteData",
        dataType: "json",
        contentType: "application/x-www-form-urlencoded;charset=utf-8",
        async:false,
        success: function (productList) {
            var map = {};
            var objMap={};
            for (var i = 0; i < productList.length; i++) {
                var obj = productList[i];
                var id = obj.data;
                if(obj.value==null){
                	obj.value="";
                }
                map[id] = obj.value;
                
                objMap[id]=obj;
                
            }
           // console.info(map)
            sessionStorage.setItem("productList",JSON.stringify(productList));
            sessionStorage.setItem("productMap",JSON.stringify(map));
            sessionStorage.setItem("productObjMap",JSON.stringify(objMap));
            //console.info(productList);
            //console.info(map);
        }
    });
}
_product_.clear = function () {
    sessionStorage.removeItem("productList");
    sessionStorage.removeItem("productMap");
}
_product_.getMap = function () {
    var str = sessionStorage.getItem("productMap");
    if (str == null) {
        this.init();
    }
    str=sessionStorage.getItem("productMap");
    return JSON.parse(str);
}
_product_.getObjMap = function () {
    var str = sessionStorage.getItem("productObjMap");
    if (str == null) {
        this.init();
    }
    str=sessionStorage.getItem("productObjMap");
    return JSON.parse(str);
}
_product_.getList = function () {
    var str = sessionStorage.getItem("productList");
    if (str == null) {
        this.init();
    }
    str=sessionStorage.getItem("productList");
    return JSON.parse(str);
}
_product_.getById = function (productId) {
    var map = this.getMap();
    return map[productId];
}
_product_.getObjById = function (productId) {
    var map = this.getMap();
    return this.getObjMap()[productId];
}
_product_.timer = function (boolean) {
    if (boolean) {
        window.setInterval(this.init, 300000);
    }
}