

$(function(){
	$('.main2 .we_cont .we_box a.bg').bind('mouseover focusin', function(){
		$(this).siblings('.we_on').css('display','block');
	});
	$('.main2 .we_cont .we_on').bind('mouseleave focusout', function(){
		$(this).css('display','none');
	});


	$('.sns li a').bind('mouseenter mouseleave focusin focusout', function(){
		var $this = $(this);

		$this.find(">img").attr("src", function(index, attr){
			if(attr.match('_on')){
				return attr.replace("_on.png", "_off.png");
			}else{
				return attr.replace("_off.png", "_on.png");
			}
		});
	});


//�⑤�由ъ궗�댄듃

	$('.family .f_btn').click(function(){
		$('.family_list').css('display','block');
	});

	$('.family_list .f_close').click(function(){
		$(this).parent('div').css('display','none');
	});

	$('.f_clos').bind('focusout', function(){
		$('.family_list').css('display','none');
	});


	// gnb
	$('.menu_2018 .oneD').bind("mouseover focusin", function(){
		$('#header').addClass('on2');
		$(".head, #header ").stop().animate({"height":"350px" , "color":"#000000"}, 300);
	});
	$('.menu_2018').bind("mouseout focusout",function(){
		$(".head, #header").stop().animate({"height":76}, 300, function(){
		$("#header").removeClass("on2");
		});
	});

	$('.head .all_menu ul li.lang').bind("mouseover focusin", function(){
		$(this).stop().animate({"height":"150px"}, 300);
	});
	$('.head .all_menu ul li.lang').bind("mouseout focusout",function(){
		$(this).stop().animate({"height":16}, 300, function(){
		});
	});

	//�ㅽ겕濡ㅻ쾭��


	$('.m_scroll').bind('click', function(e) {
	e.preventDefault();

	var target = $(this).attr("href");
	if(!target) return false;

	$("html, body").stop().animate({
	scrollTop: $(target).offset().top
	},800);
	});




/*	$('.head .all_menu ul li.lang').click(function(){
		$('.lang_box').toggleClass('on');
		
	});*/



	$('.menu_btn').click(function(){
		$('.all_box').css('display','block');
		
	});
	$('.all_close').click(function(){
		$('.all_box').css('display','none');
		
	});

	$('.j_none').bind('focusout', function(){
		$('.all_box').css('display','none');
	});


	window.onload = function(){
		setTimeout(function(){
		scrollTo(0,0);
		},100);
	}


		var jbOffset = $( '#header' ).offset();
	$( window ).scroll( function() {
	  if ( $( document ).scrollTop() > jbOffset.top ) {
		$( '#header' ).addClass( 'on' );
	  }
	  else {
		$( '#header' ).removeClass( 'on' );
	  }
	});


	
	function setCookie( name, value, expiredays ) { 
		var todayDate = new Date(); 
		todayDate.setDate( todayDate.getDate() + expiredays ); 
		document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";" 
	}


		$("#main_popup .pop_close").click(function(){
			//�ㅻ뒛留� 蹂닿린 泥댄겕諛뺤뒪�� 泥댄겕 �щ�瑜� �뺤씤 �댁꽌 泥댄겕�섏뼱 �덉쑝硫� 荑좏궎瑜� �앹꽦�쒕떎.
			if($("#popup_btn").is(':checked')){
				setCookie( "topPop", "done" , 1 ); 
				//alert("荑좏궎瑜� �앹꽦�섏��듬땲��.");
			}
			//�앹뾽李쎌쓣 �꾨줈 �좊땲硫붿씠�� �쒗궓��. �뱀� slideUp()
			//$('#promotionBanner').animate({height: 0}, 500);
			$('#main_popup').slideUp(500); 
		});

	
	

	//���λ맂 �대떦 荑좏궎媛� �덉쑝硫� 李쎌쓣 �� �꾩슫�� �놁쑝硫� �곗슫��.
	cookiedata = document.cookie;    

	if(document.all['main_popup'] != null)
	{

		if ( cookiedata.indexOf("topPop=done") < 0 ){      
			document.all['main_popup'].style.display = "block";
			} 
		else {
			document.all['main_popup'].style.display = "none"; 
		}
	}



  $('.sliderMain').slick({
  dots: true,
      customPaging : function(slider, i) {
        return '<a href="javascript:void(0);">1</a>';
    },
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    autoplay: false,
    autoplaySpeed: 3000,
	pauseOnHover: false
  });

  $('.sliderMain').bind('afterChange', function(event, slick, currentSlide) {
    if (currentSlide == 0) {
      $('.sliderMain').slick('slickPause');
	  theVideo.play();
      
    }
  });

  document.getElementById('theVideo').addEventListener('ended', myHandler, false);

  function myHandler(e) {
    $('.sliderMain').slick('slickPlay');
  }


	$('.visual .slick-dots li').addClass(function(index){
		return "item_"+index;
	});

	$('.slick-dots .item_0 a').attr({"title":"1踰� �대�吏� 蹂닿린", "data-slide-index":"0"});
	$('.slick-dots .item_1 a').attr({"title":"2踰� �대�吏� 蹂닿린", "data-slide-index":"1"});
	$('.slick-dots .item_2 a').attr({"title":"3踰� �대�吏� 蹂닿린", "data-slide-index":"2"});
	$('.slick-dots .item_3 a').attr({"title":"4踰� �대�吏� 蹂닿린", "data-slide-index":"3"});
	$('.slick-dots .item_4 a').attr({"title":"5踰� �대�吏� 蹂닿린", "data-slide-index":"4"});
	$('.slick-dots .item_5 a').attr({"title":"6踰� �대�吏� 蹂닿린", "data-slide-index":"5"});


	$('.main_play').hide();
	$('.main_stop').bind('click', function() {
		$('.sliderMain')
			.slick('slickPause');
			$(this).hide();
			$('.main_play').show();
	});

	$('.main_play').bind('click', function() {
		$('.sliderMain')
			.slick('slickPlay')
			$(this).hide();
			$('.main_stop').show();
	});


//�앹뾽
	document.body.focus(); 



		  $('.sliderMain2').slick({
			dots: true,
			  customPaging : function(slider, i) {
				return '<a href="javascript:void(0);">1</a>';
			},
			slidesToShow: 1,
			slidesToScroll: 1,
			arrows: false,
			autoplay: true,
			autoplaySpeed: 3000,
			pauseOnHover: false
		  });



		$('.popup .slick-dots').append('<li class="pop_stop p_btn"><a href="javascript:void(0);" title="�щ씪�대뱶 �뺤�"><img src="web/images/2018/main/stop.png" alt="�щ씪�대뱶 �뺤�"/></a></li><li class="pop_play p_btn"><a href="javascript:void(0);" title="�щ씪�대뱶 �ㅽ뻾"><img src="web/images/2018/main/play.png" alt="�щ씪�대뱶 �ㅽ뻾"/></li></a></div>')

		$('.pop_play').hide();
		$('.pop_stop').bind('click', function() {
			$('.sliderMain2')
				.slick('slickPause');
				$(this).hide();
				$('.pop_play').show();
		});

		$('.pop_play').bind('click', function() {
			$('.sliderMain2')
				.slick('slickPlay')
				$(this).hide();
				$('.pop_stop').show();
		});


		
		//濡쒕뵫
		var roll = 1;
		var rollstop = setInterval(function(){
			roll++;
			if(roll>19){roll=1;}
			$('#loading').attr("src","http://www.halla.com/web/images/2018/main/loading_"+roll+".png");

		},50);


		$('video').on('play', function(){
			$('#load').hide();
			clearInterval(rollstop);

		});



});



