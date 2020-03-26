$(document).ready(function(){

//헤더바 고정
	var jbOffset = $( '#header' ).offset();
	$( window ).scroll( function() {
	  if ( $( document ).scrollTop() > jbOffset.top ) {
		$( '#header' ).addClass( 'on' );
	  }
	  else {
		$( '#header' ).removeClass( 'on' );
	  }
	});
	
	//메뉴 이미지 
	$('.head_bot .menu .menu_box ul li ul li a, .site_r ul li ul li a').on('mouseenter mouseleave', function(){
		var $this = $(this);
		$this.find(">img").attr("src", function(index, attr){
			if(attr.match('_on')){
				return attr.replace("_on.png", ".png");
			}else{
				return attr.replace(".png", "_on.png");
			}
		});			
	});

	$('.a_menu .a_list ul > li.on').on('mouseenter mouseleave', function(){
		var $this = $(this);
		$this.find("a>img, a>span>img").attr("src", function(index, attr){
			if(attr.match('_on')){
				return attr.replace("_on.png", ".png");
			}else{
				return attr.replace(".png", "_on.png");
			}
		});	
	
	});

	//전체메뉴
	$('.all_menu a').click(function(){
		$('.a_menu').show();
	});
	$('.a_close').click(function(){
		$('.a_menu').hide();
	});

	//메인메뉴
	$('.menu_box').mouseenter(function(){
		$('.menu_2').show();
	});
	$('.menu_box').mouseleave(function(){
		$('.menu_2').hide();
	});
});


$(function(){
	//검색
	$('.search a').click(function(){
		$('.sear_box').show();
	});

	$('.close').click(function(){
		$('.sear_box').hide();
	});

	
	//탑버튼
	$(".top_btn a").click(function(){
		$('html, body').animate({ scrollTop: 0 }, 250 );
		return false;
	})

	$('.mob_close').hide();
	$('.mob_more').click(function(){
		$(this).hide();
		$('.mob_close').show();
		$('.mob_menubox').show();
	});

	$('.mob_close').click(function(){
		$(this).hide();
		$('.mob_more').show();
		$('.mob_menubox').hide();		
	});

	$('.ser_clo').hide();
	$('.ser_btn').click(function(){
		$(this).hide();
		$('.ser_clo').show();
		$('.m_sear_box').show();
	});

	$('.ser_clo').click(function(){
		$(this).hide();
		$('.ser_btn').show();
		$('.m_sear_box').hide();		
	});


	$('#google_translate_element .goog-te-gadget-simple .goog-te-menu-value span').css('border','none');



	//로그인 차단 해제
	$('.b2_id label, .b2_id input, .id_k .id_top label, .id_k .id_top input').click(function(){
		$('.b2_id, .id_k').removeClass('on');
		$(this).parents('.id_k, .b2_id').addClass('on');
		$('.id_info').hide();
		$(this).parent('.id_top').siblings('.id_info').show();
	});


	//감사합니데이 레이어팝업
	$('.tnk_pop .mem_btn, .mans_list li, .m_file, .m_ipt_btn').click(function(){
		$('.pop_bg, .pop_box').show();
	});

	$('.pop_box .m_clise').click(function(){
		$('.pop_box, .pop_bg, .m_view, .m_file').hide();
	});

	$('.pop_bg').click(function(){
		$('.pop_bg, .pop_box, .m_view, .m_file').hide();
	});

});


//모바일 메뉴
$(function (){

	side_menu_aco();

})
var body_height = ""
var left_value = "-76.5625%"
function side_menu_aco(){

	$('.depth01').click(function(){
			if($(this).siblings('.depth02').css('display') != 'none')
			{
				var click_depth = this;
				$(this).siblings('.depth02').slideUp(500, 
					function (){
						$(click_depth).removeClass("on");
					});
				//$(this).siblings('.depth02').children('li').children('a').siblings('.depth03').slideUp(500);

			}
			else
			{
				
				$('.depth01').removeClass("on");
				$('.depth02').slideUp(500);
				$(this).siblings('.depth02').slideDown(500);
				$(this).addClass("on");
				//$(this).siblings('.depth02').children('li').children('a').siblings('.depth03').slideDown(500);
			}
			$('.depth03').siblings('ul').slideUp(500);
			$('.depth03').removeClass("on");
		});
		
		$('.depth03').click(function(){
			if($(this).siblings('ul').css('display') != 'none')
			{
					$(this).siblings('ul').slideUp(500);
					$(this).removeClass('on');
			}
			else
			{
					$('.depth03').removeClass('on');
					$('.depth03').siblings('ul').slideUp(500);
					$(this).siblings('ul').slideDown(500);
					$(this).addClass('on');
					
			}
		});


}

/*$(function(){
	$(".ellipsis a").each(function(){
		var length = 75;
		$(this).each(function(){
			var text = $(this).text();
			if ( text.length >= length ){
				$(this).text( text.substr(0,length)+"...");
			};
		});	
	});
});

$(function(){
	$(".tnk_txt dd").each(function(){
		var length = 41;
		$(this).each(function(){
			var text = $(this).text();
			if ( text.length >= length ){
				$(this).text( text.substr(0,length)+"...");
			};
		});	
	});
});*/

$(function(){
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


$(".dropdown img.flag").toggleClass("flagvisibility");

$(document).bind('click', function(e) {
  var $clicked = $(e.target);
  if (!$clicked.parents().hasClass("dropdown"))
    $(".dropdown dd ul").hide();
});

 });

$(document).ready(function(){
 	if($('.subSidebar').length > 0 && !$('.subSidebar').is(':hidden')) {
		$(".subSidebar").hcSticky({
			top: 147
	   });
	}


	$(' .sub_tab_3 > ul > li').click(function(){
		$(this).siblings("li").slideToggle(function(){
		});
		$('.sub_tab_3 > ul > li.on').toggleClass('on2');
		
	});

	$(' .sub_tab2 > ul > li').click(function(){
		$(this).siblings("li").slideToggle(function(){
		});
		$('.sub_tab2 > ul > li.on').toggleClass('on2');
		
	});

	//만스타그램 뷰
	$('.m_view').hide();
	$('.mans_cont .mans_list').click(function(){
		$('.m_view').show();
	});

	$('.m_view .m_clise').click(function(){
		$('.m_view').hide();
		$('body').css({'position':'static','overflow-y':'visible','width':'auto'});
	});
	
	$('.m_file').hide();
	$('.m_ipt_btn').click(function(){
		$('.m_file').show();
	});

	$('.m_file .m_clise').click(function(){
		$('.m_file').hide();
	});

	$('.tnk_revbtn').click(function(){
		$(this).parents().siblings('.review_box').toggleClass('on');
	});



	//게시판 타입
	$('.list_type2').hide();
	$('.type2').click(function(){
		$('.list_type2').show();
		$('.list_type1').hide();
		$(this).attr('src','../web/images/sub/type2_on.png');
		$('.type1').attr('src','../web/images/sub/type1.png');
	});

	$('.type1').click(function(){
		$('.list_type1').show();
		$('.list_type2').hide();
		$(this).attr('src','../web/images/sub/type1_on.png');
		$('.type2').attr('src','../web/images/sub/type2.png');
	});


	//회원가입 약관동의
	$('.j_cont .j_box2 h4').click(function(){
		$(this).toggleClass('on');
	});



	//패밀리사이트
	$('.family > button').click(function(){
		$('.family_box').toggleClass('on');
		$('.family button span').toggleClass('on');
	});
	$('.family_box p > .f_close').click(function(){
		$('.family_box').removeClass('on');
		$('.family button span').removeClass('on');
	});

	
	var skip = $('.skiptranslate');

		if($(skip).css("display") == "block"){
			$('#header').css('top','39px');
		}else{
			$('#header').css('top','0');
		}
	

});
/*function adjustStyle(width) {
$('.m_view').hide();
  width = parseInt(width);
	$('.mans_cont .mans_list').click(function(){
		$('.m_view').show();
    if (width > 1200) {
        $('body').css({'position':'fixed','overflow-y':'scroll','width':'100%'});
    } else if (width < 1200) {
       $('body').css({'position':'static','overflow-y':'visible','width':'auto','position':'relative'});
    }
	});



}

$(function() {
    adjustStyle($(this).width());
    $(window).resize(function() {
        adjustStyle($(this).width());
    });
});*/

function info(seq){
	var offset = $('#info' + seq).offset();
	$('html, body').animate({scrollTop : offset.top-200}, 0);
}




// 비디오 버튼
$(function(){
	$("video#main_visual_video_web").bind("play", function() {
		$(".cont_mov a").attr("class", "pause");
		$(".cont_mov a").show();
		$("#next_slide").css("z-index","-1");
		$("#pre_slide").css("z-index","-1");
	});
		
	$("video#main_visual_video_web").bind("pause", function() {
		$(".cont_mov a").attr("class", "play");
		$(".cont_mov a").show();
	});

	$("video#main_visual_video_web2").bind("play", function() {
		$(".md_pict03 a").attr("class", "pause");
		$(".md_pict03 a").show();
		$(".md_pict03").css("z-index","1");
	});
		
	$("video#main_visual_video_web2").bind("pause", function() {
		$(".md_pict03 a").attr("class", "play");
		$(".md_pict03 a").show();
		if($(".md_pict03").css("z-index") == 1 )
		{
			$(".md_pict03").css("z-index","0")
		}
		
	});

	$(".cont_mov").mouseleave(function(){

		if($(".cont_mov a").hasClass("pause"))
		{
			$(".cont_mov a").hide();
		}

	});

	$(".cont_mov").mouseover(function(){
		if($(".cont_mov a").hasClass("pause"))
		{
			$(".cont_mov a").show();
		}
	});

	$(".cont_mov").mouseenter(function(){
		if($(".cont_mov a").hasClass("pause"))
		{
			$(".cont_mov a").show();
		}
	});


	$(".md_pict03_video").mouseleave(function(){

		if($(".md_pict03_video a").hasClass("pause"))
		{
			$(".md_pict03_video a").hide();
		}

	});

	$(".md_pict03_video").mouseover(function(){
		if($(".md_pict03_video a").hasClass("pause"))
		{
			$(".md_pict03_video a").show();
		}
	});

	$(".md_pict03_video").mouseenter(function(){
		if($(".md_pict03_video a").hasClass("pause"))
		{
			$(".md_pict03_video a").show();
		}
	});


});

// 비디오 시작 정지
function playPauseVideo(obj, video){
	var this_btn_class = $(obj).attr("class");
	var vid = document.getElementById(video);
	if(this_btn_class == "play")
	{
		$(obj).attr("class", "pause");
		vid.play();
		$(vid).attr("controls","true");
	}
	else if(this_btn_class == "pause")
	{
		$(obj).attr("class", "play");
		vid.pause();
		vid.removeAttribute("controls");
	}
}


