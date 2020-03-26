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
	$('.eng a img').attr('src','web/images/main/eng_btn_on.png');
  });

  $('.eng').mouseleave(function(){
	$('.eng a img').attr('src','web/images/main/eng_btn.png');
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

	$('.ser_on_0227').mouseenter(function(){
		$(this).attr('src','web/images/main/ser_btn_on2.png');
	});
	$('.ser_on_0227').mouseleave(function(){
		$(this).attr('src','web/images/main/ser_btn.png');
	});

	$('.more_on_0227').mouseenter(function(){
		$(this).attr('src','web/images/main/more_btn_on.png');
	});
	$('.more_on_0227').mouseleave(function(){
		$(this).attr('src','web/images/main/more_btn.png');
	});

	$('.bus_btn a.l_btn img').mouseenter(function(){
		$(this).attr('src','web/images/main/bus_lbtn_on.png');
	});
	$('.bus_btn a.l_btn img').mouseleave(function(){
		$(this).attr('src','web/images/main/bus_lbtn.png');
	});

	$('.bus_btn a.r_btn img').mouseenter(function(){
		$(this).attr('src','web/images/main/bus_rbtn_on.png');
	});
	$('.bus_btn a.r_btn img').mouseleave(function(){
		$(this).attr('src','web/images/main/bus_rbtn.png');
	});

	$('.news_btn  a.l_btn img').mouseenter(function(){
		$(this).attr('src','web/images/main/news_lbtn_on.png');
	});
	$('.news_btn  a.l_btn img').mouseleave(function(){
		$(this).attr('src','web/images/main/news_lbtn.png');
	});

	$('.news_btn  a.r_btn img').mouseenter(function(){
		$(this).attr('src','web/images/main/news_rbtn_on.png');
	});
	$('.news_btn  a.r_btn img').mouseleave(function(){
		$(this).attr('src','web/images/main/news_rbtn.png');
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


});