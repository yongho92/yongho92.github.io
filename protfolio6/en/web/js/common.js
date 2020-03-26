	$(function(){
		$(".menu_list > li").mouseenter(function(){
			var thisa = this;
			clearTimeout(menu_over);
			$(".s_menubox").hide();
			$(".s_menubox0"+($(thisa).index()+1)).show();
			$(".s_menu").show();
		})

		var menu_over="";

		$(".menu_list").mouseleave(function(){
			menu_over = setTimeout(function(){
				$(".s_menubox").hide();
			},50)
			//$(thisa).children(".top_menu_all2").hide();
		})

		$(".s_menubox").mouseenter(function(){
			clearTimeout(menu_over);
		})
		$(".s_menubox").mouseleave(function(){
				$(".s_menubox").hide();
				$(".s_menu").hide();
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

		var jbOffset = $( '#header' ).offset();
		$( window ).scroll( function() {
		  if ( $( document ).scrollTop() > jbOffset.top ) {
			$( '#header' ).addClass( 'on' );
		  }
		  else {
			$( '#header' ).removeClass( 'on' );
		  }
		});


		//검색페이지 탭
		$('.sear_tab ul li.on').click(function(){
			$(this).siblings('li').slideToggle("300",function(){
				$(this).css('display');
			});
			$(this).children('a').toggleClass('on2');
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

//테블릿 모바일 메뉴
$(function(){
	$('.mob_menu').click(function(){
		$('.t_sub_menu').animate({right:'0'},500);
	});

	$('.t_close').click(function(){
		$('.t_sub_menu').animate({right:'-100%'},500);
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



/*$(function(){
	var windowWidth = $( window ).width();

	$(".news_txt p a").each(function(){
		if(windowWidth < 1200){
		var length = 25;
		$(this).each(function(){
			var text = $(this).text();
			if ( text.length >= length ){
				$(this).text( text.substr(0,length)+"...");
			};
		});			
		}else if(windowWidth < 800){
		var length = 75;
		$(this).each(function(){
			var text = $(this).text();
			if ( text.length >= length ){
				$(this).text( text.substr(0,length)+"...");
			};
		});			
		}
	});

});
$(window).resize(function (){
  // width값을 가져오기
  var width_size = window.outerWidth;
  
  // 800 이하인지 if문으로 확인
  if (width_size <= 1200) {
    $(".news_txt p a").each(function(){
		var length = 25;
		$(this).each(function(){
			var text = $(this).text();
			if ( text.length >= length ){
				$(this).text( text.substr(0,length)+"...");
			};
		});	
	});
  }else{
    $(".news_txt p a").each(function(){
		var length = 75;
		$(this).each(function(){
			var text = $(this).text();
			if ( text.length >= length ){
				$(this).text( text.substr(0,length)+"...");
			};
		});	
	});	
  }
})*/



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



