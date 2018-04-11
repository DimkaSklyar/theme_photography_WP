$(document).ready(function() {


var touch = $('#touch-menu');
    var menu = $('.nav');
 
    $(touch).on('click', function(e) {
        e.preventDefault();
        menu.slideToggle();
    });
    $(window).resize(function(){
        var w = $(window).width();
        if(w > 760 && menu.is(':hidden')) {
            menu.removeAttr('style');
        }
    });
	$('#nav-icon1,#nav-icon2,#nav-icon3,#nav-icon4').click(function(){
		$(this).toggleClass('open');
	});

    treeDotEndText();

$('.owl-carousel').owlCarousel({
    loop:true,
    margin:-10,
    dots: true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:5
        }
    }
})

$(function(){
	$("a[href^='#']").click(function(){
		var _href = $(this).attr("href");
		$("html, body").animate({scrollTop: $(_href).offset().top+"px"},900);
		return false;
	});
});


});

$(window).resize(function(){
    treeDotEndText();
});



var treeDotEndText = function(){
var size = 150,
    newsContent= $('.blog-text'),
    newsText = newsContent.text();
if ($(document).width() < 840){
    size = 120;
    }
    else{
        size = 150;
    }
if(newsText.length > size){
	newsContent.text(newsText.slice(0, size) + ' ...');
}  
}