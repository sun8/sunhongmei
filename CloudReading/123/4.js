var MB=MB||{};
Function.prototype.bind = Function.prototype.bind||function(a){return $.proxy(this,a)};
function WapManager(){
	$("body").on("touchstart",".j-gap",$.proxy(this.ga,this));
	this.init()
}
WapManager.prototype.init = function(){
	var a=$(".swiper-container");
	if(a.length!=0){
		var b = a.swiper({
				loop:true,
				autoplay:3000,
				autoplayDisableOnInteraction:false
			})
	}
	this.getLastBook();
	this.countDown();
	this.sendajax()
};
WapManager.prototype.getLastBook = function(){
	var b = window.localStorage.getItem("yd-last-book");
	var d = $(".m-last-book");
	var c = d.find(".last-book");
	if(b){
		var a = $.parseJSON(b);
		if(a){
			var e = a.name;
			if(e.length>10){
				e = e.substring(0,10)+"..."
			}
			c.text(e);
			c.attr("href","/reader/book/"+a.uuid)
		}else{
			c.remove();
			d.prepend("<span>还没有最近阅读的书籍哦</span>")
		}
	}	
};
WapManager.prototype.inputChange=function(a){
	var b=$.trim(a.target.value).length;
	if(b>=2){
		this.searchDelete.show()
		}else{
			this.searchDelete.hide()
			}
		};WapManager.prototype.deleteInput=function(a){this.searchInput.val("");this.searchDelete.hide()};WapManager.prototype.sellRank=function(a,c){var b;switch(a){case"man":b="/rank/original/list/data.json?gender=male&sortType="+c+"&type=sell";break;case"woman":b="/rank/original/list/data.json?gender=female&sortType="+c+"&type=sell";break;case"publish":b="/rank/publish/list/data.json?sortType="+c+"&type=sell";break}$.ajax({url:b,type:"GET",success:function(d){if(d.code==0){var h=d.data.books;var g=d.data;g.type=a;var f=$("#J_sellrank_"+a);var e=template.render("j-template",{data:g});f.append(e)}}})};WapManager.prototype.countDown=function(){var k=$(".J_TimeLeft");if(k.length===0){return}var f=[];for(var b=0,d=k.length;b<d;b++){var e=k.eq(b).attr("date").replace(/-/g,"/"),c=new Date(e);f.push(c)}var j=function(m){for(var n=0;n<m.length;n++){if(m[n]<10){m[n]="0"+m[n]}}};var h=function(o,p){var n=new Date(),i=o-n>0?parseInt((o-n)/1000):0,t=parseInt(i/3600/24),q=parseInt((i/3600)),m=parseInt((i/60)%60),r=parseInt(i%60),s=[q,m,r];if(i<0){return false}j(s);t=(t<10)?"0"+t:t;tipText="<b>"+s[0]+"</b>:<b>"+s[1]+"</b>:<b>"+s[2]+"</b>";k.eq(p).empty().append(tipText)};var a=function(){for(var n=0,m=k.length;n<m;n++){h(f[n],n)}};var g=setInterval(function(){a()},1000);var l=function(){a()};l()};WapManager.prototype.ga=function(c){var e=$(c.currentTarget);var b=e.data("category"),d=e.data("action"),a=e.data("label").toString();if(_gaq){_gaq.push(["_trackEvent",b,d,a])}};WapManager.prototype.sendajax=function(b){var a=window.location.search;if(a==""){return false}$.ajax({url:"/login/context.json"+a})};
