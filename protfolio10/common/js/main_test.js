var h; // 윈도우의 높이를 지정하는 변수입니다.
var n=0; // 전체를 이끌어가는 중요한 변수입니다.
var distance=0; // body, html이 움직이는 위치입니다.


$(document).ready(function(){

	//박스 전체높이
	$('.Allbox').css('height', $(window).height());

	//메인롤링배너
	var swiper = new Swiper('.swiper-container0', {
		speed:800,
	  //effect:'fade',
	  centeredSlides: true,
	  parallax: true,
	  loop:true,
	  autoplay: {
		delay: 5000,
		disableOnInteraction: false,
	  },
	  pagination: {
		el: '.swiper-pagination',
		clickable: true,
	  },
	  navigation: {
		nextEl: '.swiper-button-next',
		prevEl: '.swiper-button-prev',
	  },
	  simulateTouch:false,
	});

	//계열사

    $(".family_logo").mouseenter(function(){ 
		if($(window).width() > 1024){
			$(this).children('img').attr("src", $(this).children('img').attr("src").replace(".png", "_on.png")); 
		}
	});
	$(".family_logo").mouseleave(function(){ 
		if($(window).width() > 1024){
			$(this).children('img').attr("src", $(this).children('img').attr("src").replace("_on.png", ".png")); 
		}
	});

	$('.page_slide').click(function(){
		$('.family_p').show();
		if($('.family_p').css('display') == 'block'){
			console.log(1);
			var curPopH = $('.family_list').outerHeight();
			$('.family_list').css('margin-top', -curPopH / 2);
			$('.f_list').fadeIn(1300);
		}
	});

	$('.family_c').click(function(){
		$('.family_p').hide();
		$('.f_list').hide();
	});

});


function family_btn(obj){
	$(obj).parents().siblings('div').show();
	if($('.family_p').css('display') == 'block'){
		console.log(1);
		var curPopH = $('.family_list').outerHeight();
		$('.family_list').css('margin-top', -curPopH / 2);
		$('.f_list').fadeIn(1300);
	}
}


$(function(){

setTimeout(function(){
	$(".quick li").eq(n).addClass("on");
	$('#wrap').parents("body, html").animate({scrollTop:distance}, 500);
	}, 150);

$(window).resize(function(){
	h=$(window).height();
$(".Allbox").css({height:h});
	distance=n*h;
});
$(window).trigger("resize");


$(".quick li").click(function(e){
	e.preventDefault();
	n=$(this).index();
	distance=n*h;
		if(n == 2){
		$('.quick').addClass("on");
	}else if(n == 3){
		$('.quick').addClass("on");
	}else{
		$('.quick').removeClass("on");
	}

	if(n == 1){
		$('.his_txt').addClass('on');
	}else{
		$('.his_txt').removeClass('on');
	}

	if(n == 2){
		$('.soc_r').addClass('on');
	}else{
		$('.soc_r').removeClass('on');
	}

	$(".quick li").removeClass("on");
	$(this).addClass("on");
	$('#wrap').parents("body, html").animate({scrollTop:distance}, 500);
});


});

$(window).resize(function(){
	if($(window).width() > 1024){
		$("body").css('overflow','hidden');
		$(document).mousewheel(function(e, delta){
			if($('.family_p').css('display') == 'block'){
				$('#wrap').parents("body, html").stop().animate({scrollTop:distance}, 500);

			}

			if($('#wrap').parents("body, html").is(":animated")){
				return false;
			}
				if(delta > 0){
				if(n > 0){
					n--;
				}
				}else{
					if(n < 3){ //수정
					n++;
					}
				}
			

			if(n == 2){
				$('.quick').addClass("on");
			}else if(n == 3){
				$('.quick').addClass("on");
			}else{
				$('.quick').removeClass("on");
			}

			if(n == 1){
				$('.his_txt').addClass('on');
			}else{
				$('.his_txt').removeClass('on');
			}

			if(n == 2){
				$('.soc_r').addClass('on');
			}else{
				$('.soc_r').removeClass('on');
			}

			distance=n*h;
			$('#wrap').parents("body, html").stop().animate({scrollTop:distance}, 500);
			$(".quick li").removeClass("on");
			if (n == 4){ 
				$(".quick li").eq(n-1).addClass("on");
			} else {
				$(".quick li").eq(n).addClass("on");
			}
		});
		return false
	}
});


$(function(){

	//history 슬라이드
	var galleryThumbs = new Swiper('.gallery-thumbs', {
		  spaceBetween: 10,
		  slidesPerView: 4,
		  freeMode: true,
		  loopedSlides: 8, //looped slides should be the same
		  watchSlidesVisibility: true,
		  watchSlidesProgress: true,
		  direction:'vertical',
		  simulateTouch:true,
		  breakpoints: {
				1024: {
					direction:'horizontal',
					slidesPerView: 4,
				},
				750: {
					direction:'horizontal',
					slidesPerView: 3,
				},
			}
		});
	var galleryTop = new Swiper('.gallery-top', {
	  spaceBetween: 10,
	  loop:true,
	  loopedSlides: 8, //looped slides should be the same
	  navigation: {
		nextEl: '.swiper-button-next1',
		prevEl: '.swiper-button-prev1',
	  },
	  thumbs: {
		swiper: galleryThumbs,
	  },
	  simulateTouch:false,
	  breakpoints: {
			1024: {
				simulateTouch:true,
			},
		}
	});

});


$(function(){
	//장학재단 슬라이드
	var swiper = new Swiper('.swiper-container2', {
	  centeredSlides: true,
	  loop:true,
	  /*autoplay: {
		delay: 5000,
		disableOnInteraction: false,
	  },*/
	  navigation: {
		nextEl: '.swiper-button-next',
		prevEl: '.swiper-button-prev',
	  },
	  simulateTouch:false,
	});
});



$(document).ready(function(){ 
	setTimeout(function(){ 
		$('html, body').scrollTop(0);
	}, 1000); 
});