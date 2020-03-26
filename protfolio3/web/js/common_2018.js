// JavaScript Document
var main_banner_index = 1;
var main_banner_cnt = 0;
var main_visual_play_stop = "play";
$(function(){

	var main_banner_rolling_timer = null;
    main_banner_cnt = $(".rolling_img li").length;
	main_visual_play_stop_btn();
	main_visual_btn_event();
	$(window).load(function(){
        main_visual_timer();
	});

	$(".rol_main_prev").click(function(){
		main_visual_rolling("prev");
	});

	$(".rol_main_next").click(function(){
		main_visual_rolling("next");
	});
})

function main_visual_timer(){
    main_banner_rolling_timer  = setInterval("main_visual_rolling('next')" , 6000) 
};


function main_visual_rolling(type)
{	
	if(type == "") type = "next";

	if(type == "prev") { main_banner_index = parseInt(main_banner_index) - 1; }
    if(type == "next") { main_banner_index = parseInt(main_banner_index) + 1; }
    if (parseInt(main_banner_index) > main_banner_cnt)
    {
        main_banner_index = 1
    }
	else if (parseInt(main_banner_index) <= 0)
	{
		main_banner_index = main_banner_cnt;
	}
	
	$(".rol_img li").removeClass("select");
	$(".rol_img li#rol_btn_"+main_banner_index).addClass("select");

    $(".rolling_img li").stop().not(".rolling_img li#rol_main_"+main_banner_index).animate({opacity:0}, 2000); 
    $(".rolling_img li#rol_main_"+main_banner_index).stop().animate({opacity:1}, 2000, function(){   
        $(".rolling_img li").not(".rolling_img li#rol_main_"+main_banner_index).css("z-index","50");
        $(".rolling_img li#rol_main_"+main_banner_index).css("z-index","80");
    });
}

function main_visual_btn(click_index)
{	
	main_banner_index = click_index;
    if (parseInt(main_banner_index) > main_banner_cnt)
    {
        main_banner_index = 1
    }
	else if (parseInt(main_banner_index) <= 0)
	{
		main_banner_index = main_banner_cnt;
	}
	
	$(".rol_img li").removeClass("select");
	$(".rol_img li#rol_btn_"+main_banner_index).addClass("select");

    $(".rolling_img li").stop().not(".rolling_img li#rol_main_"+main_banner_index).animate({opacity:0}, 2000); 
    $(".rolling_img li#rol_main_"+main_banner_index).stop().animate({opacity:1}, 2000, function(){   
        $(".rolling_img li").not(".rolling_img li#rol_main_"+main_banner_index).css("z-index","50");
        $(".rolling_img li#rol_main_"+main_banner_index).css("z-index","80");
    });
}

function main_visual_btn_event()
{
    $(".rol_img ul li, .ps_btn a").mouseenter(function(e){
        clearInterval(main_banner_rolling_timer);
    });

    $(".rol_img ul li, .fade_play_btn").mouseleave(function(e){
        if(main_visual_play_stop == "play")
        {
            main_visual_timer();
        }
    });
}


function main_visual_play_stop_btn()
{
    $(".ps_btn a").click(function(e){
        if(main_visual_play_stop == "play")
        {
            $(this).attr("class", "m_play").html("재생");
            main_visual_play_stop = "stop"
        }
        else if (main_visual_play_stop == "stop")
        {
            $(this).attr("class", "m_stop").html("정지");
            main_visual_play_stop = "play"
        }
    });
}

