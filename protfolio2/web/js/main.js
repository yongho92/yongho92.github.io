var Root = "/";

jQuery.easing['jswing'] = jQuery.easing['swing'];

jQuery.extend( jQuery.easing,
{
def: 'easeOutQuad',
easeOutCubic: function (x, t, b, c, d) {
        return c*((t=t/d-1)*t*t + 1) + b;
    }
});

	$(document).ready(function(){
	
	$('.wor_02').mouseenter(function(){
		
		$(this).find('.sliphoveritemTitle').animate({bottom:'0%'},250);
	});
	$('.wor_02').mouseleave(function(){
		$('.sliphoveritemTitle').stop();
		$('.sliphoveritemTitle').animate({bottom:'-100%'},250);
	});

	$('.menu_btn, .project, .prj_btn2').click(function() {	
		anioption = { time:0.8, easing:'easeOutCubic' };		
		$('.menu_box').animate({"right": "0%"}, anioption); 
		$('.blocker').animate({"opacity": "0.5"}, anioption).show(); 
		$('body').addClass("noScroll");
	});

	$('.m_close, .blocker').click(function(){
		anioption = { time:0.6, easing:'linear' }; 
		$('.menu_box').animate({"right": "-110%"}, anioption); 
		$('.blocker').animate({"opacity": "0"}, anioption).hide();
		$('.project_area').animate({"right": "-100%"}, anioption); 
		$('body').removeClass("noScroll"); 
		$('.project_area').hide();
		$(".menu_box .bot_menu ul li a.request").removeClass("on");
	});

	 $('.request, .project, .prj_btn2').click(function() {	
		$('.project_area').removeClass("fix").show();
	    anioption = { time:0.8, easing:'easeOutCubic' };			
        $('.overlay').animate({"right": "0%"}, anioption); 
		$('.blocker').animate({"opacity": "0.5"}, anioption).show(); 
		$('body').addClass("noScroll"); 
		$('.project_area').animate({"right": "56px"}, anioption); 
		if($(this).hasClass("usi"))
		{
			$("#request_06").prop("checked",true);
			/* 
				�뱀궗�댄듃 �댁쁺 媛�寃⑤떎由� 二쇱꽍泥섎━
			$("#project_price_div").hide();
			$("#project_price_div2").show();
			$("#project_price_sp").attr("id","");
			$("#project_price_div2").children(".sele_mon").attr("id","project_price_sp");
			*/

		}
		else
		{
			$("#request_06").prop("checked",false);
			/*
				�뱀궗�댄듃 �댁쁺 媛�寃⑤떎由� 二쇱꽍泥섎━
			$("#project_price_div2").hide();
			$("#project_price_div").show();
			$("#project_price_sp").attr("id","");
			$("#project_price_div").children(".sele_mon").attr("id","project_price_sp");
			*/
		}
		//$(".menu_box .bot_menu ul li a.request").addClass("on");
	 });

	$('.close').click(function(){	 
	  anioption = { time:0.6, easing:'linear' }; 
      $('.project_area').animate({"right": "-110%"}, anioption);
	   $('.project_area').addClass("fix").hide(0.8); 
 
    });

	var nav = $('.head');
	 
	$(window).scroll(function () {
		if ($(this).scrollTop() > 0) {
			nav.addClass("f-nav");
		} else {
			nav.removeClass("f-nav");
		}
	});

	$('.menu_btn').mouseenter(function(){
		$('.m_1').animate({"width":"19px"},200);
		$('.m_2').animate({"width":"28px"},200);
	});
	$('.menu_btn').mouseleave(function(){
		$('.m_1').animate({"width":"28px"},200);
		$('.m_2').animate({"width":"19px"},200);
	});

	$(window).resize(function(){
		$(".sliphoveritem").width($(".wor_01").width()-40);
		$(".sliphoveritem").height($(".wor_01").height()-40);
	});

	$(".sliphoveritem").width($(".wor_01").width()-40);
	$(".sliphoveritem").height($(".wor_01").height()-40);


	$('.sele_hide').hide();

	$('.sele_mon').click(function(){
		var target = $(this).siblings('.sele_hide');
		if(target.css("display")=="none")
		{
			target.show();
			$(this).css('background','url('+Root+'web/images/common/arow_on.png) no-repeat right center #0a0f2b');
			$(this).parents(".select_1227").css('backgroundColor','#0a0f2b');
		}
		else
		{
			target.hide();
			$(this).css('background','');
			$(this).parents(".select_1227").css('background','');
		}
	});

	$('.sele_hide > li').click(function(){
		var target = $(this).parents('.sele_hide');
		target.hide();
		$('.sele_mon').css('background','');
		$(this).parents(".select_1227").css('background','');
		target.siblings(".sele_mon").html($(this).children("span").html());
	});

	MainSlider();

  $(function() {
        $(".view_topbtn").click(function() {
            $('html, body').animate({
                scrollTop : 0
            }, 400);
            return false;
        });
    });

});

var Main_Slider;
var Main_Slider_status = "start";
function MainSlider(){
	
	window.Main_Slider =$("#visual .slider").bxSlider({ 
		touchEnabled : true,
		//mode : "fade",
		oneToOneTouch : false,
		infiniteLoop : true,
		controls : false,
		pager : true,
		pause : 5000,		//�щ씪�대뜑 癒몃Т�� �쒓컙
		speed : 500,		//�щ씪�대뜑 �대룞�띾룄
		autoStart : true,
		auto : true,
		autoControls : false,
		/*
		onSlideBefore : function($slideElement, oldIndex, newIndex){			
			//硫덉땄�곹깭�먯꽌 �먮룞�쇰줈 �щ씪�대뵫�섎뒗 寃쎌슦媛� �덉뼱 泥섎━
			if( window.Main_Slider_status == "stop"){		
				window.Main_Slider.stopAuto();
				return false;
			}
			//�섏씠吏�踰덊샇媛� �대┃�� 寃쎌슦 �щ씪�대뵫 �쒖옉/硫덉땄 踰꾪듉 �곹깭泥섎━
			if( window.Main_Slider_status == "pageclick"){
				if( $("#visual .bx-stop").css('display') == "none" ){
					window.Main_Slider_status = "stop";
				}
				else{
					window.Main_Slider_status = "start";	
				}
			}
		},*/

	});
	
	
	//媛� �섏씠吏�踰덊샇 �대┃��
	$(".bx-pager-link").click(function(){
		window.Main_Slider.stopAuto();

		var idx = parseInt( $(this).attr("data-slide-index") );
		idx++;

		$(".bx-pager-link").each(function(index, item){
			var no = index+1;
			$(this).removeClass( "page" + no );
		})

		$(this).addClass( "page" + idx );

		//window.Main_Slider.startAuto();
        window.Main_Slider.stopAuto();
	});

	function setAcitvePage(){
		$("#visual .bx-pager-link").each(function(index, item){
			var no = index+1;
			$(this).removeClass( "page" + no );

			if( $(this).hasClass("active")){
				var active = $(this).attr("data-slide-index");
				active = parseInt(active) + 1;
				$(this).addClass( "page" + active );
			}
		});
	}

	$(window).resize(function(){
		//�섏씠吏�踰덊샇 遺숈씠湲�
		setAcitvePage();
	});

	/*酉고럹�댁� �섎떒 list*/
	$('.view_btn2').mouseenter(function(){
		$('.view_btn2 > span > img').attr('src',''+Root+'web/images/sub/view_btn_on.png');
	});

	$('.view_btn2').mouseleave(function(){
		$('.view_btn2 > span > img').attr('src',''+Root+'web/images/sub/view_btn.png');
	});

	$(document).ready(function(){
	
		/*�ㅽ겕濡�*/
		$('.view_box').append('<div class="backbg"></div>');

		$('.worm_more').click(function(){
			$('.wor_click').css('display','block');

			return false
		});

		$('.pre_btn').click(function(){

			$('.pre_data').css('display','block');
		$('.pre_close').click(function(){
			$('.pre_data').css('display','none');
		});
	});
	});

		$(window).scroll(function() {

			var $tmp = $(window).scrollTop();
			var target = $('.backbg');			

			if ($('.backbg').length > 0){
				var offset = target.offset().top + $("#head").height();
				var height = target.outerHeight();

				var range = '';
				offset = offset + height / 2;
				var winWidth = $(window).width();
				if (winWidth > 0){ range = 360; } else { range = 170; }
				
				if ($tmp < offset){
					var calc = ($tmp - offset + range) / range;
					target.css({ 'opacity': calc });
				  
					if ( calc > '0.5' ) {
					  target.css({ 'opacity': 0.5 });
					} else if ( calc < '0' ) {
					  target.css({ 'opacity': 0 });
					}
				}

				if($tmp ==0)
				{
					  target.css({ 'opacity': 0 });
				}
			}
		});

		/*硫붿씤 more
		$(document).ready(function(){
			$('.main_more').click(function(){
				$('.mt_dn').css('display','block');
			});
		});*/

}



function btnNext_hide(totCnt , pageSize )
{
	var countList = totCnt;
	var size = pageSize;
	var maxPage = parseInt(countList / size); // 紐リ뎄�섍린
	if((countList % size) > 0 ) maxPage++;	// �섎㉧吏�媛� �덉쑝硫� +1
	if(maxPage == 0) maxPage++;

	if(maxPage == page) $("#btnNext").hide();
	//console.log(maxPage+"|"+page);
	return;
}

function cng_usi()
{
	return;// �뱀궗�댄듃 �댁쁺 媛�寃⑸떎由� return;
	if($("#request_06").prop("checked"))
	{
			$("#project_price_div").hide();
			$("#project_price_div2").show();
			$("#project_price_sp").attr("id","");
			$("#project_price_div2").children(".sele_mon").attr("id","project_price_sp");
	}
	else
	{
			$("#project_price_div2").hide();
			$("#project_price_div").show();
			$("#project_price_sp").attr("id","");
			$("#project_price_div").children(".sele_mon").attr("id","project_price_sp");

	}
}


/*$(document).ready(function(){

var ua = String( navigator.userAgent ).toLowerCase();

//�덈뱶濡쒖씠�쒖쓽 寃쎌슦
if(/android/.test(ua)){

//�꾩씠�곗쓽 寃쎌슦
} else if(/iphone|ipad/.test(ua)){

     //alert("�꾩씠��");
     $(".bb_bgimg").css(
          'background-position','-200px 0'
     );


};
});



    function scrolling(pos) {
        $('html, body').animate({'scrollTop' : '$(pos).offset().top+px'}, "slow");
    }*/

$(document).ready(function() {
$('.cont_arow a').on('click', function(e) {
e.preventDefault();

var target = $(this).attr("href");
if(!target) return false;

$("html, body").stop().animate({
scrollTop: $(target).offset().top
},800);
});
    });
