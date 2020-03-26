$(document).ready(function(){
  $('.search').click(function(){
    $('.ser_btn').toggleClass('on');
	
	$('.ser_input').toggleClass('on');
  });

  $('.menu ul li').mouseenter(function(){
	$('.top_menu').css('display','block');
  });

  $('.top_menu').mouseleave(function(){
	$(this).css('display','none');
  });

  $('.eng').mouseenter(function(){
	$('.eng a img').attr('src','../web/images/main/eng_btn_on.png');
  });

  $('.eng').mouseleave(function(){
	$('.eng a img').attr('src','../web/images/main/eng_btn.png');
  });

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

		if($(document).scrollTop() >= $(".two_menu").offset().top)
		{
			$(".two_menu").addClass("on");
			$(".two_menu_fix").show();
			$(".home a img").attr('src','../web/images/common/home_icon_on.png');
		}
		if($(document).scrollTop() < $(".two_menu_fix").offset().top)
		{
			$(".two_menu").removeClass("on");
			$(".two_menu_fix").hide();
			$(".home a img").attr('src','../web/images/common/home_icon.png');
		}
	});
		/*서브메뉴*/
	var sub_menu1 ;
	$('.sub_menu').mouseenter(function(){
		clearTimeout(sub_menu1);
		$('.sub_menubox').addClass('on');
	});
	$('.sub_menubox, .sub_menu').mouseleave(function(){
		sub_menu1 = setTimeout(function(){
		$(".sub_menubox").removeClass('on');
		},50);
	});
	$('.sub_menubox').mouseenter(function(){
		clearTimeout(sub_menu1);
	});

	var sub_menu2 ;
	$('.sub_menu2').mouseenter(function(){
		clearTimeout(sub_menu2);
		$('.sub_menubox2').addClass('on');
	});
	$('.sub_menubox2, .sub_menu2').mouseleave(function(){
		sub_menu2 = setTimeout(function(){
		$(".sub_menubox2").removeClass('on');
		},50);
	});
	$('.sub_menubox2').mouseenter(function(){
		clearTimeout(sub_menu2);
	});

	$('.ser_on_0227').mouseenter(function(){
		$(this).attr('src','../web/images/main/ser_btn_on2.png');
	});
	$('.ser_on_0227').mouseleave(function(){
		$(this).attr('src','../web/images/main/ser_btn.png');
	});

	$('.more_on_0227').mouseenter(function(){
		$(this).attr('src','../web/images/main/more_btn_on.png');
	});
	$('.more_on_0227').mouseleave(function(){
		$(this).attr('src','../web/images/main/more_btn.png');
	});

	$('.gn_btn a.gn_lbtn img').mouseenter(function(){
		$(this).attr('src','../web/images/sub/gn_lbtn_on.png');
	});
	$('.gn_btn a.gn_lbtn img').mouseleave(function(){
		$(this).attr('src','../web/images/sub/gn_lbtn.png');
	});

	$('.gn_btn a.gn_rbtn img').mouseenter(function(){
		$(this).attr('src','../web/images/sub/gn_rbtn_on.png');
	});
	$('.gn_btn a.gn_rbtn img').mouseleave(function(){
		$(this).attr('src','../web/images/sub/gn_rbtn.png');
	});

	  $('.more').click(function(){
		$(this).toggleClass('on');
		$('.all_menu, .back').toggleClass('on');
		
	  });

	  $(function() {
			$(".top_btn a").click(function() {
				$('html, body').animate({
					scrollTop : 0
				}, 500);
				return false;
			});
		});


	$('.list_btn a.blbtn img').mouseenter(function(){
		$(this).attr('src','../web/images/sub/brand_lbtn_on.png');
	});
	$('.list_btn a.blbtn img').mouseleave(function(){
		$(this).attr('src','../web/images/sub/brand_lbtn.png');
	});

	$('.list_btn a.brbtn img').mouseenter(function(){
		$(this).attr('src','../web/images/sub/brand_rbtn_on.png');
	});
	$('.list_btn a.brbtn img').mouseleave(function(){
		$(this).attr('src','../web/images/sub/brand_rbtn.png');
	});
});