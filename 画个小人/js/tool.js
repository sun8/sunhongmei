//画布
var canvas = document.getElementById('canvas');
//按钮大盒子
var btn = document.getElementById('btn');
//确定按钮
var yes = document.getElementById('yes');
//取消按钮
var no = document.getElementById('no');
//请画小人的背景图
var point = document.getElementById('point');
//画布的背景图
var cloth = document.getElementById('cloth');
//顶部的背景图
var titlebar = document.getElementById('titlebar');

var onOff = true;

//创建环境
var oGC = canvas.getContext('2d');
/*========================================*/
//第一个小人的画板范围的构造函数
function Person(obj) {
    this.drawL
    this.settings = {
        l: 0,
        t: 0,
        w: 0,
        h: 0
    };
    for (var attr in obj) {
        this.settings[attr] = obj[attr];
    }
    //画板

    oGC.beginPath();
    oGC.fillStyle = 'transparent';
    oGC.fillRect(this.settings.l, this.settings.t, this.settings.w, this.settings.h);
    oGC.closePath();
    oGC.fill();

}

/*========================================*/

canvas.addEventListener('mousedown', down);
Person.prototype.draw = function(point) {
    //	if( oGC.isPointInPath(point.x,point.y) ){
    if (this.settings.l > point.x || point.x > (this.settings.l + this.settings.w) || this.settings.t > point.y || point.y > (this.settings.t + this.settings.h)) {} else {
        btn.style.cssText = `
			opacity:1;
			z-index:4;
		`;
        oGC.save();
        oGC.moveTo(point.x, point.y);
        document.addEventListener('mousemove', move);
        document.addEventListener('mouseup', up);

    }
}

/*========================================*/
//第一个画板上的
function down(ev) {
    var ev = ev || window.event;
    var point = {
        x: ev.clientX - this.offsetLeft,
        y: ev.clientY - this.offsetTop
    };
    if (onOff) {
        person.draw(point);
    }

}

function move(ev) {
    var ev = ev || window.event;
    //线的坐标根据移动鼠标的坐标走
    oGC.lineWidth = 2;
    oGC.strokeStyle = '#545251';
    oGC.lineTo(ev.clientX - canvas.offsetLeft, ev.clientY - canvas.offsetTop);
    //线显示
    oGC.stroke();
    oGC.restore();
}

function up(ev) {
    document.removeEventListener('mousemove', move);
    document.removeEventListener('mouseup', up);
}

/*========================================*/
//画板清除
function drawF() {
    oGC.clearRect(540, 126, 303, 301);
    oGC.save();
    oGC.restore();
    // 	invalidate();
    console.log(oGC)
}

/*========================================*/
//第一个小人的确定
function drawT() {
    //图片消失
    point.style.cssText = `
		left:160px;
		opacity:0;
	`
        //画板背景图消失
    cloth.style.cssText = `
		transform:rotate(360deg) scale(0);
	`
        //按钮消失层级降低
    btn.style.cssText = `
		opacity:0;
		z-index:1;
	`;
    titlebar.style.cssText = `
		top:0;
	`
    onOff = false;
}