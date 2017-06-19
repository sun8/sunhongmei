var num = 0;
var $pic = $('#pic');
var $span = $('.circular').find('span');
var onOff = true;
var timer = null;
var arr = ['images/Home/2.png', 'images/Home/3.png', 'images/Home/4.png', 'images/Home/5.png'];
//let num = 0;
//const $pic = $('#pic');
//const $span = $('.circular').find('span');
//let onOff = true;
//let timer = null;
//let arr = ['images/Home/2.png', 'images/Home/3.png', 'images/Home/4.png', 'images/Home/5.png'];
$span[0].className = 'active';
$('#next').click(function() {
    num++;
    tab();
});
$('#prev').click(function() {
    num--;
    tab();
});
timer = setInterval(function() {
    num++;
    tab();
}, 3000);

$('.banner').hover(function() {
    clearInterval(timer);
}, function() {
    timer = setInterval(function() {
        num++;
        tab();
    }, 3000);
});


function tab() {
    if (!onOff) return;
    onOff = false;
    if (num > arr.length - 1) {
        num = 0;
    } else if (num < 0) {
        num = arr.length - 1;
    }
    $span.eq(num).addClass('active').siblings().removeClass('active');

    $pic.animate({
        opacity: 0.2
    }, function() {
        $pic.attr('src', arr[num]);

        $pic.animate({
            opacity: 1
        }, function() {
            onOff = true;
        });
    });
}