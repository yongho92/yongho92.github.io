
$(document).ready(function(){
	$(window).scroll(function(){
		// 상단 메뉴 script
		if(!$(".wrap #header").hasClass("minimized"))
		{
			$(".wrap #header").addClass("minimized");
			$(".wrap .top_header").addClass("minimized");
		}
		if($(window).scrollTop() < $("#content").offset().top)
		{

			if($(".wrap #header").hasClass("minimized"))
			{
				$(".wrap #header").removeClass("minimized");
				$(".wrap .top_header").removeClass("minimized");

			}
		}

		BackToTopButton.scroll();
	});
	BackToTopButton.init();
	$(".left_mnbox .left_menu03").mouseenter(function(){
	
		$(".event_topmenu").stop(false, true).slideDown("fast");
		$(".event_topmenu").fadeIn("fast");


	});
	$(".left_mnbox .left_menu03").mouseout(function(){
	
		timer = setTimeout(function(){
			$(".event_topmenu").stop(false, true).slideUp("fast");
			$(".event_topmenu").fadeOut("fast");
			},100)

	});

	$(".event_topmenu").mouseenter(function(){
		clearTimeout(timer);
		timer= null;

	});
	$(".event_topmenu").mouseleave(function(){
		$(".event_topmenu").stop(false, true).slideUp("fast");
		$(".event_topmenu").fadeOut("fast");
	});
});

// 상단이동 script
var BackToTopButton = {
    body:       'body',
    backTopBtn: '#scroll-top',
    init: function() {
        this.$backTopBtn = jQuery(this.backTopBtn);
        this.$body = jQuery(this.body);
        // Scroll to top
        this.$backTopBtn.on('click', function() {
            jQuery('html,body').animate({scrollTop: 0}, 'slow');
			return false;
        });
    },
    scroll: function() {
        if(this.$body.scrollTop() > 400)
            this.$backTopBtn.fadeIn();
        else
            this.$backTopBtn.fadeOut();
    }
}

function btnNext_hide(totCnt , pageSize )
{
	var countList = totCnt;
	var size = pageSize;
	var maxPage = parseInt(countList / size); // 몫구하기
	if((countList % size) > 0 ) maxPage++;	// 나머지가 있으면 +1
	if(maxPage == 0) maxPage++;

	if(maxPage == page) $("#btnNext").hide();
	//console.log(maxPage+"|"+page);
	return;
}


function btnNext_hide2(totCnt , pageSize )
{
	var countList = totCnt;
	var size = pageSize;
	var maxPage = parseInt(countList / size); // 몫구하기
	if((countList % size) > 0 ) maxPage++;	// 나머지가 있으면 +1
	if(maxPage == 0) maxPage++;

	if(maxPage == page2) $("#btnNext2").hide();

	return;
}

function onsearch()
{
	$("#search_box").slideToggle();
	//$("#header").toggleClass("search_on");
}

function search_close()
{
	$("#search_box").slideUp();

}

function goSearch()
{
	if($("#search_str").val() == "")
	{
		alert("검색어를 입력하세요!");
		$("#search_str").focus();
		return;
	}
	frm.setParameter("sc_str", $("#search_str").val());
	frm.setParameter("sc_cond", "title");
	frm.submitForm3(window, "/sub/search_result.php");
	return false;
}


function fw_onenterdown1(obj){
    if(obj.name == "search_str") goSearch();
}