$(document).ready(function(){
	//창업주 약력 뷰이미지
	$('.his_img .swiper-slide-active span img:last').clone().appendTo($('.his_img_on'));

	$('.h_btn').click(function(){
		$('.his_img .swiper-slide-active span img:last').clone().appendTo($('.his_img_on'));
		$('.his_img_on img:first').remove();
	});

	//발자취 약력 뷰이미지
	$('.load_list1 .swiper-slide-active span img:last').clone().appendTo($('.load_img_on1'));
	$('.load_list1 .swiper-slide-active p').clone().appendTo($('.load_img_on1'));

	$('.load_list2 .swiper-slide-active span img:last').clone().appendTo($('.load_img_on2'));
	$('.load_list2 .swiper-slide-active p').clone().appendTo($('.load_img_on2'));

	$('.load_list3 .swiper-slide-active span img:last').clone().appendTo($('.load_img_on3'));
	$('.load_list3 .swiper-slide-active p').clone().appendTo($('.load_img_on3'));

	$('.h_btn1').click(function(){
		$('.load_list1 .swiper-slide-active span img:last').clone().appendTo($('.load_img_on1'));
		$('.load_list1 .swiper-slide-active p').clone().appendTo($('.load_img_on1'));
		$('.load_img_on1 img:first').remove();
		$('.load_img_on1 p:first').remove();
		$('.p_load .load_list1 .swiper-slide-prev').prev().css('opacity','0.2');
		$('.p_load .load_list1 .swiper-slide-next').next().css('opacity','0.2');
	});

	$('.h_btn2').click(function(){
		$('.load_list2 .swiper-slide-active span img:last').clone().appendTo($('.load_img_on2'));
		$('.load_list2 .swiper-slide-active p').clone().appendTo($('.load_img_on2'));
		$('.load_img_on2 img:first').remove();
		$('.load_img_on2 p:first').remove();
		$('.p_load .load_list2 .swiper-slide-prev').prev().css('opacity','0.2');
		$('.p_load .load_list2 .swiper-slide-next').next().css('opacity','0.2');
	});

	$('.h_btn3').click(function(){
		$('.load_list3 .swiper-slide-active span img:last').clone().appendTo($('.load_img_on3'));
		$('.load_list3 .swiper-slide-active p').clone().appendTo($('.load_img_on3'));
		$('.load_img_on3 img:first').remove();
		$('.load_img_on3 p:first').remove();
		$('.p_load .load_list3 .swiper-slide-prev').prev().css('opacity','0.2');
		$('.p_load .load_list3 .swiper-slide-next').next().css('opacity','0.2');
	});

	$('.p_load .load_list .swiper-slide-prev').prev().css('opacity','0.2');
	$('.p_load .load_list .swiper-slide-next').next().css('opacity','0.2');

	//창업주 약력
   var swiper = new Swiper('.swiper-container_his', {
       slidesPerView: 5,
       freeMode: true,
       watchSlidesVisibility: true,
       watchSlidesProgress: true,
	   centeredSlides:true,
	   loop:true,
       navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
       },
       pagination: {
        el: '.swiper-pagination',
        clickable: true,
       },
	   allowTouchMove:false,
    });

	
	//회사소개
	$('.comp_tab a').click(function(){
		$('.comp_tab a').removeClass('on');
		$(this).addClass('on');
	});

	$('#c_tab1').click(function(){
		$('#comp_tab1').fadeIn(700).show();
		$('#comp_tab2').fadeOut(700).hide();
		$('#comp_tab3').fadeOut(700).hide();
		return false
	});
	$('#c_tab2').click(function(){
		$('#comp_tab2').fadeIn(700).show();
		$('#comp_tab1').fadeOut(700).hide();
		$('#comp_tab3').fadeOut(700).hide();
		return false
	});
	$('#c_tab3').click(function(){
		$('#comp_tab3').fadeIn(700).show();
		$('#comp_tab1').fadeOut(700).hide();
		$('#comp_tab2').fadeOut(700).hide();
		return false
	});
	
	/*$('.h_btn').click(function(){
		$('.load_img_on p').parents('div').find('ul').children('li').removeClass('on');
		$('.load_img_on .data_1948').parents('div').find('ul').children('li').eq(0).addClass('on');
		$('.load_img_on .data_1990').parents('div').find('ul').children('li').eq(1).addClass('on');
		$('.load_img_on .data_2010').parents('div').find('ul').children('li').eq(2).addClass('on');
	});*/

	$('.load_date li').click(function(){
		$('.load_date li').removeClass('on');
		$(this).addClass('on');
	});


});


$(function(){
	
	$('.load_list').hide();
	$('.load_list:first').show();
	
	$('.load_date li').click(function(){
		$('.load_list').hide();
		var show_tab = $(this).attr('rel');
		$("#" + show_tab).fadeIn();

	});

});