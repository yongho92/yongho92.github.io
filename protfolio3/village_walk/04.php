<?
	$path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $keySet = array(
        "seq",
        "cond",
        "str",
        "type",
        "category",
        "display_yn"
    );

    $primaryKeys = array("seq");
    $now = getToday2();
    $act = $parameters->print2("act");


    $parameters->set("menu1", "2");
    $parameters->set("menu2", "1");


?>
<?include $path_include_prefix."inc/user_header.inc";?>
<link href="../web/css/jplayer.blue.monday.min_2018.css" type="text/css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/notosanskr.css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:700" rel="stylesheet">
  <link href="/web/css/jquery.bxslider.css" rel="stylesheet">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="../web/js/jquery.jplayer.min_2018.js"></script>
  <script src="/web/js/jquery.bxslider.min.js"></script>

<script>

function fw_domReady(){
    var frm = document.frm;

     $(".i_list li").mouseover(function(){
			var idx = $(this).index();
			var obj = $(this);
			over(idx, obj, $(".map_cou_list li"));
		});

		$(".map_cou_list li").mouseover(function(){
			var idx = $(this).index();
			var obj = $(this);
			over(idx, obj, $(".i_list li"));
		});

		$(".map_cou_list li, .i_list li").mouseout(function(){
			$(".map_cou_list li, .i_list li").removeClass("on");
		});

		function over(num, obj, obj2){
			obj.not().siblings().removeClass("on");
			obj2.removeClass("on");
			obj2.eq(num).addClass("on");
			obj.addClass("on");
		};

}
</script>

<script>
	/*$(document).ready(function(e){
		$('ul.web_list2 li, .i_list li').click(function(){

            $.ajax({
                type:"GET",
                url:"/ajax/01_pop.php",
                dataType : "html",
                data: {"pk_seq":$(this).attr("seq")},
                success:function(args){
                    $(".map_view").html(args);

                },
                error:function(e){
                    //alert(e.responseText);
                }
            });



			$('.map_view').animate({right:"0px"},300);
			$('.back').css('display','block');
			$('body').css('overflow-y','hidden');
			event.preventDefault();
		});

		$('.map_view .close, .back').click(function(e){
            $('.map_view').html("");
			$('.map_view').animate({right:"-100%"},300);
			$('.back').css('display','none');
			$('body').css('overflow-y','auto');
			event.preventDefault();
		});

	});*/


    function cnd_box()
    {
        location.href = document.frm.tmp_searchCnd.value;
    }

    function cnd_box2()
    {
        location.href = document.frm.tmp_searchCnd2.value;
    }

</script>

	<div class="contents">
		<div class="sub_title">
			<dl>
				<dt>마을산책</dt>
				<dd>마을의 일상이 풍경이 되는 골목길</dd>
			</dl>
		</div>
		<div class="board_ser02">
			<span class="board_all2" id="boa_set2_text">마을산책 추천 코스</span>
			<label for="boa_set2" class="sor_hide2">마을산책 추천 코스</label>
			<select id="boa_set2" name="tmp_searchCnd" onchange="cnd_box();">
			<option value="01.php">지도 및 오디오 가이드</option>
			<option value="02.php" selected>마을산책 추천 코스</option>
			<option value="tour_list.php">투어신청</option>
			</select>
		</div>
		<div class="cous_board">
			<div class="board_ser03">
				<span class="board_all3" id="boa_set3_text">소소한 청춘길</span>
				<label for="boa_set3" class="sor_hide3">소소한 청춘길</label>
				<select id="boa_set3" name="tmp_searchCnd2" onchange="cnd_box2();">
				<option value="02.php">다정한 청춘길</option>
				<option value="03.php">달콤한 청춘길</option>
				<option value="04.php" selected>소소한 청춘길</option>
				</select>
			</div>
		</div>
		<div class="sub_cont">
			<div class="walk_tab">
				<ul class="tab">
					<li><a href="01.php"><span>지도 및 오디오 가이드</span></a></li>
					<li><a href="02.php" class="on"><span>마을산책 추천 코스</span></a></li>
					<li><a href="tour_list.php"><span>투어신청</span></a></li>
				</ul>
			</div>
			<div class="rec_cou">
				<div class="cou_list">
					<ul>
						<li><a href="02.php">다정한 청춘길</a></li>
						<li><a href="03.php">달콤한 청춘길</a></li>
						<li><a href="04.php" class="on">소소한 청춘길</a></li>
					</ul>
				</div>
				<div class="download">
					<a href="http://www.balsanvillage.com/file/village_map.zip" class="d_audio">지도 다운로드</a>
					<a href="http://www.balsanvillage.com/file/audio_guide.zip" class="d_audio">오디오 다운로드</a>
				</div>
			</div>
			<div class="map">
				<div class="map_info">
					<p>청춘발산마을 홈페이지에서 제공하는 ‘오디오 가이드’와 함께 더욱 특별하고 풍성한 마을산책을 즐기세요.<span>※주민들이 살고 있는 마을입니다. 조용히 둘러봐주세요. 마을 길가에 쓰레기를 버리지 말아주세요.</span></p>
				</div>
				<div class="map_img cou4_map_img">
					<div class="map_movimg">
						<img src="../web/images/sub/village_walk/cous03_img.jpg" alt="소소한 청춘길 코스 이미지" class="web_img"/>
						<img src="../web/images/sub/village_walk/cous03_img_m.jpg" alt="소소한 청춘길 코스 이미지" class="mob_img"/>
						<a href="http://www.balsanvillage.com/web/images/sub/village_walk/cous03_img.jpg" target="_blank"  class="map_ex"><img src="../web/images/sub/village_walk/map_ex.jpg" alt="지도확대"/></a>
					</div>
					<div class="map_list">
						<h3>소소한 청춘길<span>마을 산책길의 숨은 매력을 찾아내는 소소한 재미</span></h3>
						<ul class="web_list2">
							<li seq="1" class="marx"><a href="#"><em>1</em><span>마을입구 쉼터<strong>(할매텃밭정원)</strong></span></a></li>
							<li seq="2"><a href="#"><em>2</em><span>샘몰경로당<strong>(할매텃밭정원)</strong></span></a></li>
							<li seq="3"><a href="#"><em>3</em><span>마을이 그린 그림1<strong>(계단 그림자 그림)</strong></span></a></li>
							<li seq="4" class="padx"><a href="#"><em>4</em><span>청춘빌리지 마당<strong>(낙서칠판)</strong></span></a></li>
							<li seq="5" class=""><a href="#"><em>5</em><span>108계단<strong>(소리파이프)</strong></span></a></li>
							<li seq="6" class="marx"><a href="#"><em>6</em><span>108계단<strong>(그늘 쉴자리)</strong></span></a></li>
							<li seq="7" class=""><a href="#"><em>7</em><span>108계단<strong>(꿈풍선 포토존)</strong></span></a></li>
							<li seq="8" class="padx after"><a href="#"><em>8</em><span>발산상회<strong>(계단 옆 작은 상회)</strong></span></a></li>
							<li seq="9" class="after after2"><a href="#"><em>9</em><span>별마루문화공원 입구<strong>(청춘메시지)</strong></span></a></li>
							<li seq="10" class=""><a href="#"><em>10</em><span>마을이 그린 그림2<strong>(전선 그림자 그림)</strong></span></a></li>
							<li seq="11" class="marx"><a href="#"><em>11</em><span>청춘빌리지<strong>(마을이 품은 패턴)</strong></span></a></li>
							<li seq="12" class="padx"><a href="#"><em>12</em><span>청춘빌리지<strong>(청춘메시지)</strong></span></a></li>
						</ul>

					</div>
				</div>
				<div class="map_view">

				</div>

			</div>
		</div>
	</div>
 <?include $path_include_prefix."inc/user_footer.inc";?>