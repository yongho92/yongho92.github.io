function quick(){
	$(".quick a").click(function(){
		var slide = $(this).attr("slide");
		var gnb = $("#header").height();
		var yPos = $(slide).offset().top - gnb;

		$('html, body').animate({ scrollTop: yPos }, 800 );

		//$(".quick a").removeClass("on");
		//$(this).addClass("on");

		return false;
	});
}

$(document).ready(function(){


	$('.pro_list ul li').mouseenter(function(){
		$(this).children('.pro_on').css('display','block');
		$(this).children('.pro_txt').css('display','none');
		$(this).children('.pro_more').css('display','none');
	});
	$('.pro_list ul li').mouseleave(function(){
		$(this).children('.pro_on').css('display','none');
		$(this).children('.pro_txt').css('display','block');
		$(this).children('.pro_more').css('display','block');
	});

	$('.sus_list ul li').mouseenter(function(){
		$(this).children('.sus_on').css('display','block');
	});
	$('.sus_list ul li').mouseleave(function(){
		$(this).children('.sus_on').css('display','none');
	});


	$(".menu_box > .menu > li").mouseenter(function(){
		var thisa = this;
		clearTimeout(menu_over);
		$(".s_menu1").hide();
		$(".s_menu0"+($(thisa).index()+1)).show();
	})

	var menu_over="";

	$(".menu_box > .menu").mouseleave(function(){
		menu_over = setTimeout(function(){
			$(".s_menu1").hide();
		},50)
		//$(thisa).children(".top_menu_all2").hide();
	})

	$(".s_menu1").mouseenter(function(){
		clearTimeout(menu_over);
	})
	$(".s_menu1").mouseleave(function(){
			$(".s_menu1").hide();
	})


	var jbOffset = $( '#header' ).offset();
	$( window ).scroll( function() {
	  if ( $( document ).scrollTop() > jbOffset.top ) {
		$( '#header' ).addClass( 'on' );
	  }
	  else {
		$( '#header' ).removeClass( 'on' );
	  }
	});


	$('.sear li.lang_txt').mouseenter(function(){
		$(this).addClass('on1');
		$('.lang').css('display','block');
	});
	$('.sear li.lang_txt').mouseleave(function(){
		$(this).removeClass('on1');
		$('.lang').css('display','none');
	});
	$('.close').click(function(){
		console.log('11');
		$('.search_box').css('display','none');
	});
	$('.ser_icon button').click(function(){
		$('.search_box').css('display','block');
	});

});

//퀵메뉴
$(document).ready(function(){

	//우측 퀵메뉴 동작
	quick();

});


//우측 퀵메뉴 동작
function quick(){
	$("#main .quick a").click(function(){
		var slide = $(this).attr("slide");
		var gnb = $("#gnb").height();
		var yPos = $(slide).offset().top - gnb;

		$('html, body').animate({ scrollTop: yPos }, 800 );

		//$(".quick a").removeClass("on");
		//$(this).addClass("on");

		return false;
	});
}


$(window).scroll(function(){
	//퀵바 선택
	selectQuick();

});

//퀵바 선택
function selectQuick(){
	var win_scrollTop = parseInt($(window).scrollTop())+$("#gnb").height();
	var quickmenu_len = $(".quick a").length;

	for(var scrolling_index = (quickmenu_len-1); scrolling_index >= 0; scrolling_index--)
	{
		var move_posi_id = $(".quick a").eq(scrolling_index).attr('slide');
		var slider_top = $(move_posi_id).offset().top;
		var slider_h = $(move_posi_id).height();
		if(parseInt(win_scrollTop) >= parseInt(slider_top) && parseInt(win_scrollTop) < (parseInt(slider_top)+parseInt(slider_h)) || (($(window).scrollTop() == $(document).height()-$(window).height()) && (scrolling_index == (quickmenu_len-2))) )
		{
			$(".quick a").removeClass("on");
			$(".quick a").eq(scrolling_index).addClass("on");
			break;
		}
	}
}


//테블릿 모바일 메뉴
$(function(){
	$('.mob_menu').click(function(){
		$('.t_sub_menu').animate({right:'0'},500);
	});

	$('.t_close').click(function(){
		$('.t_sub_menu').animate({right:'-100%'},500);
	});
});


//푸터 패밀리사이트
$(function(){
	$('.f_btn').click(function(){
		if($('.family_on').css("display") == "none"){
			$('.family_on').show();
			$('.f_btn span').css({"background":"url(../web/images/common/f_plus_on.png)", 'background-repeat' : 'no-repeat', 'background-position':'right center'});
		}else{
			$('.family_on').hide();
			$('.f_btn span').css({"background":"url(../web/images/common/f_plus_off.png)", 'background-repeat' : 'no-repeat', 'background-position':'right center'});
		}
	});
	$('.family_on button').click(function(){
		$('.family_on').css('display','none');
		$('.f_btn span').css({"background":"url(../web/images/common/f_plus_off.png)", 'background-repeat' : 'no-repeat', 'background-position':'right center'});
	});
});



/*모바일 테블릿 메뉴*/
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

/*

			$('.depth02').click(function(){
	
		if($(this).children('li').children('.depth03').css('display') != 'none')
			{
				$(this).children('li').children('.depth03').slideUp(500);
			}
			else
			{
				$('.depth03').slideUp(500);
				$(this).children('li').children('.depth03').slideDown(500);
				
			}
				});
			
				*/
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



//탑버튼



		window.onload = function(){
			setTimeout(function(){
				scrollTo(0,0);
			},0);
		}


		$(document).ready(function(){
			$(".top_btn button").click(function(){
				$('html, body').animate({ scrollTop: 0 }, 250 );
				return false;
			})

		});




	

		