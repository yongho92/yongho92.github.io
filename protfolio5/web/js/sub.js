/*$(function(){
	var sub_menu1 ;
	$('.menu_t').click(function(){
		$('.s_menu2').toggleClass('on');
		$('.sub_menu2 .sub_menu_box ul li > a').toggleClass('on');
	});
	$('.menu_t, .s_menu2').mouseleave(function(){
		sub_menu1 = setTimeout(function(){
		$(".s_menu2").removeClass('on');
		$('.sub_menu2 .sub_menu_box ul li > a').removeClass('on');
		},50);

	});
	$('.s_menu2').mouseenter(function(){
		clearTimeout(sub_menu1);
	});

	var sub_menu2 ;
	$('.menu_t2').click(function(){
		clearTimeout(sub_menu2);
		$('.s_menu3').addClass('on');
		$('.sub_menu2 .sub_menu_box ul li > a.menu_t2').addClass('on');
	});
	$('.menu_t2, .s_menu3').mouseleave(function(){
		sub_menu2 = setTimeout(function(){
		$(".s_menu3").removeClass('on');
		$('.sub_menu2 .sub_menu_box ul li > a.menu_t2').removeClass('on');
		},50);
	});
	$('.s_menu3').mouseenter(function(){
		clearTimeout(sub_menu2);
	});

})*/




var jbOffset = $( '#header' ).offset();
	$( window ).scroll( function() {
		/*
		  if ( $( document ).scrollTop() > jbOffset.top ) {
			$( '#header' ).addClass( 'on' );
		  }
		  else {
			$( '#header' ).removeClass( 'on' );
		  }
	  */

		if($(document).scrollTop() >= $(".sub_menu2").offset().top)
		{
			$(".sub_menu2").addClass("on");
			$(".sub_menu2_fix").show();
			$(".home a img").attr('src','../web/images/sub/home_on.png');
		}
		if($(document).scrollTop() < $(".sub_menu2_fix").offset().top)
		{
			$(".sub_menu2").removeClass("on");
			$(".sub_menu2_fix").hide();
			$(".home a img").attr('src','../web/images/sub/home.png');
		}
	});


//홍보자료 탭
$(document).ready(function(){
	$('.mob_tab_box li, .ment_tab .mob_tab_box li').click(function(){
		$(this).siblings("li").slideToggle(function(){
            
		});

        var text = $(this).index();
        
        if(text == "0") text = "";
        else if(text == "1") text = "신입";
        else if(text == "2") text = "경력";
        else if(text == "3") text = "현재직";

        $("#tmp_category_text").val(text);

		$('.ment_tab .mob_tab_box li .mob_on, .mob_tab_box li .mob_on').toggleClass('on');
	});



	//share
	$('.share_box').hide();
	var check_send = false;
	 $('.share').click(function(){
		 check_send = !check_send;
		if (check_send == true){
			$('.share_box').show();
		}else{
			$('.share_box').hide();
		}
		
	 });
	 $('.share_box, .share').mouseleave(function(){
		$('.share_box').hide();
	 });

 	$('.share_box a').on('mouseenter mouseleave', function(){
		var $this = $(this);
		$this.find(">img").attr("src", function(index, attr){
			if(attr.match('_on')){
				return attr.replace("_on.png", "_off.png");
			}else{
				return attr.replace("_off.png", "_on.png");
			}
		});			
	});	


	// LNB 클릭 시
	$(".o_dep > a").click(function(){
		if(!$(this).hasClass("on")){
			$(".o_dep > a").removeClass("on");
			$(".o_dep .t_dep").css("z-index", "0").slideUp(300);
			$(this).addClass("on");
			$(this).next().css("z-index", "15").slideDown(300);
			$(this).slideDown(300);
		}else{
			$(this).removeClass("on");
			$(this).next().css("z-index", "0").slideUp(300);
		}
	});

	$(".sub_menu_box").find(".t_dep").mouseleave(function(){
		$(".sub_menu_box > ul > li > ul").slideUp(300);
		$('.sub_menu2 .sub_menu_box ul li > a').removeClass('on');
	});




//검색영역
	$(".n_sear > a").click(function(){
		if(!$(this).hasClass("on")){
			$(".srchSel > a").removeClass("on");
			$(".srchSel > div").slideUp(300);
			$(this).addClass("on");
			$(this).next().stop().slideDown(300);
		}else{
			$(this).removeClass("on");
			$(this).next().slideUp(300);
		}
	});
	$(".n_sear > div a").click(function(){
		var selTxt = $(this).text();
		$(this).siblings(".active").removeClass("active");
		$(this).addClass("active");
		$(this).parent().siblings("a").text(selTxt).removeClass("on");
		$(this).parent().slideUp(300);
	});
	$(".n_sear").focusout(function(){
		$(this).children("a").removeClass("on");
		$(this).children("div").slideUp(300);
	});


	//faq
	
    $(".faq_q").click(function(){
		if($(this).hasClass("on"))
		{
			$(".faq_q").removeClass("on");
			$(".faq_a").slideUp(300);
			return;
		}
		$(".faq_q").removeClass("on");
		$(".faq_a").slideUp(300);
		$(this).toggleClass("on");
		$(this).siblings(".faq_a").slideToggle(300);
	});

    $(".pro_top").click(function(){
		if($(this).hasClass("on"))
		{
			$(".pro_top").removeClass("on");
			$(".pro_none").slideUp(300);
			return;
		}
		$(".pro_top").removeClass("on");
		$(".pro_none").slideUp(300);
		$(this).toggleClass("on");
		$(this).siblings(".pro_none").slideToggle(300);
	});



	//회사개요
	$('.prod_box .prod_txt a').mouseenter(function(){
		$(this).parents('div').children('.prod_img').addClass('on');
	});
	$('.prod_box .prod_txt a').mouseleave(function(){
		$(this).parents('div').children('.prod_img').removeClass('on');
	});


    $(".glb_txt button").click(function(){
		if($(this).hasClass("on"))
		{
			$(".glb_txt button").removeClass("on");
			$(".glb_add").slideUp(300);
			return;
		}
		$(".glb_txt button").removeClass("on");
		$(".glb_add").slideUp(300);
		$(this).toggleClass("on");
		$(this).parents('div.glb_ov').siblings('div.glb_add').slideToggle();
	});


	//셀렉트박스
$(".dropdown img.flag").addClass("flagvisibility");

$(".dropdown dt a").click(function() {
  $(".dropdown dd ul").toggle();
});

$(".dropdown dd ul li a").click(function() {
  var text = $(this).html();
  $(".dropdown dt a span").html(text);
  $(".dropdown dd ul").hide();
  
  if(text == "제목") $("#tmp_cond").val("2");
  else if(text == "내용") $("#tmp_cond").val("3");
  else if(text == "전체") $("#tmp_cond").val("1");

});

function getSelectedValue(id) {
  return $("#" + id).find("dt a span.value").html();
}

$(document).bind('click', function(e) {
  var $clicked = $(e.target);
  if (!$clicked.parents().hasClass("dropdown"))
    $(".dropdown dd ul").hide();
});

$(".dropdown img.flag").toggleClass("flagvisibility");



 });


	
	
//와이어하네스
$(document).ready(function(){

		/*var whImg =  $('.wh_icon li').index(this);

		$(".wh_icon_box li").click(function(){
			var idx = $(this).index();
			var obj = $(this);
			over(idx, obj, $(".wh_tab li"));
		});

		$(".wh_tab li").click(function(){
			var idx = $(this).index();
			var obj = $(this);
			over(idx, obj, $(".wh_icon_box li"));
		});


		$(".wh_tab li, .wh_icon_box li").removeClass("on");

		function over(num, obj, obj2){
			obj.not().siblings().removeClass("on");
			obj2.removeClass("on");
			obj2.eq(num).addClass("on");
			obj.addClass("on");
		};*/

		var idx;
		$(".wh_tab li, .wh_icon_box li").click(function(){
			idx = $(this).index();
			idx_on(idx, $(".wh_icon"));
			idx_on(idx, $(".wh_icon_box"));
			idx_on(idx, $(".wh_tab"));
		});
		
		function idx_on(num,obj){
			obj.find("li").removeClass("on");
			obj.find("li:eq("+(num)+")").addClass("on");
		}

	});

/*$(function(){


	//오시는길 지도
var map = new naver.maps.Map('naverMap', {
    center: new naver.maps.LatLng(37.3985507,127.1068146),
    zoom: 10
});

var marker = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.3985507,127.1068146),
    map: map
});
});*/



$(function(){
	newsTabmenuMobile();
	$(window).resize(function(){
	});

    $("#btnIdSearch_mobile").click(function(e){
        openIdSearch2016();
        return false;
    });

    $("#btnPwSearch_mobile").click(function(e){
        openPwSearch2016();
        return false;
    });

	//메뉴레이어 열기
	$(".lnbMenu").click(function () {
		$(".subLayerMnu").removeClass("on");
		$(".subLayer").hide();
		$(".loginForm.logined").hide();

	});

    $(".save_id_chk").click(function(e){
        if($(this).is(":checked"))
		{
			$(".save_id_chk").prop("checked", true);
		}
		else
		{
			$(".save_id_chk").prop("checked", false);
		}
    });


})

function newsTabmenuMobile()
{
	$("span.tab_txt").click(function(){
		$(".rec_ment .ment_tab .ment_web, .cust_tablist, .sear_1122").slideToggle();
		$(this).toggleClass('on');
	});

}


