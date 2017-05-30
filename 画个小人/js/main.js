//第一个小人的画板范围
var person = new Person({
	l:540,
	t:126,
	w:303,
	h:301
});

//第一个画板上的清除
no.addEventListener('click',drawF);

//第一个画板上的确定
yes.addEventListener('click',drawT);