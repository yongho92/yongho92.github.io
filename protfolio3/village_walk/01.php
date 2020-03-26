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

$(document).ready(function(){
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

	});
</script>

<script>
	$(document).ready(function(e){
		$('ul.web_list li, .i_list li').click(function(){

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

	});

    function cnd_box()
    {
        location.href = document.frm.tmp_searchCnd.value;
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
			<span class="board_all2" id="boa_set2_text">지도 및 오디오 가이드</span>
			<label for="boa_set2" class="sor_hide2">지도 및 오디오 가이드</label>
			<select id="boa_set2" name="tmp_searchCnd" onchange="cnd_box();">
			<option value="01.php" selected>지도 및 오디오 가이드</option>
			<option value="02.php">마을산책 추천 코스</option>
			<option value="tour_list.php">투어신청</option>
			</select>
		</div>
		<div class="sub_cont">
			<div class="walk_tab">
				<ul class="tab">
					<li><a href="01.php" class="on"><span>지도 및 오디오 가이드</span></a></li>
					<li><a href="02.php"><span>마을산책 추천 코스</span></a></li>
					<li><a href="tour_list.php"><span>투어신청</span></a></li>
				</ul>
			</div>
			<div class="download">
					<a href="http://www.balsanvillage.com/file/village_map.zip" class="">지도 다운로드</a>
					<a href="http://www.balsanvillage.com/file/audio_guide.zip" class="d_audio">오디오 다운로드</a>
			</div>
			<div class="map intro_map">
				<div class="map_info">
					<p>청춘발산마을 홈페이지에서 제공하는 ‘오디오 가이드’와 함께 더욱 특별하고 풍성한 마을산책을 즐기세요.<span>※주민들이 살고 있는 마을입니다. 조용히 둘러봐주세요. 마을 길가에 쓰레기를 버리지 말아주세요.</span></p>
				</div>
				<div class="map_img">
					<div class="map_movimg">
						<div class="map_web">
							<img src="../web/images/sub/village_walk/map_marker_2018.jpg" alt="청춘발산마을 지도 이미지" class="web_img"/>
							<img src="../web/images/sub/village_walk/map_2018_t.jpg" alt="청춘발산마을 지도 이미지" class="tab_img"/>
							<img src="../web/images/sub/village_walk/map_2018_m.jpg" alt="청춘발산마을 지도 이미지" class="mob_img"/>
							<a href="http://www.balsanvillage.com/web/images/sub/village_walk/map_marker_2018.jpg" target="_blank" class="map_ex"><img src="../web/images/sub/village_walk/map_ex.jpg" alt="지도확대"/></a>
							<ul class="i_list">
								<li class="marker1" seq="1"><a href="#view" class="map_c"><i>1</i></a></li>
								<li class="marker2" seq="2"><a href="#view" class="map_c"><i>2</i></a></li>
								<li class="marker3" seq="3"><a href="#view" class="map_c"><i>3</i></a></li>
								<li class="marker4 green2" seq="4"><a href="#view" class="map_c"><i>4</i></a></li>
								<li class="marker5" seq="5"><a href="#view" class="map_c"><i>5</i></a></li>
								<li class="marker6" seq="6"><a href="#view" class="map_c"><i>6</i></a></li>
								<li class="marker7 green2" seq="7"><a href="#view" class="map_c"><i>7</i></a></li>
								<li class="marker8 green2" seq="8"><a href="#view" class="map_c"><i>8</i></a></li>
								<li class="marker9 green2" seq="9"><a href="#view" class="map_c"><i>9</i></a></li>
								<li class="marker10 green2" seq="10"><a href="#view" class="map_c"><i>10</i></a></li>
								<li class="marker11" seq="11"><a href="#view" class="map_c"><i>11</i></a></li>
								<li class="marker12" seq="12"><a href="#view" class="map_c"><i>12</i></a></li>
								<li class="marker13 green2" seq="13"><a href="#view" class="map_c"><i>13</i></a></li>
								<li class="marker14" seq="14"><a href="#view" class="map_c"><i>14</i></a></li>
								<li class="marker15 green2" seq="15"><a href="#view" class="map_c"><i>15</i></a></li>
								<li class="marker16" seq="16"><a href="#view" class="map_c"><i>16</i></a></li>
								<li class="marker17" seq="17"><a href="#view" class="map_c"><i>17</i></a></li>
								<li class="marker18" seq="18"><a href="#view" class="map_c"><i>18</i></a></li>
								<li class="marker19 green2" seq="19"><a href="#view" class="map_c"><i>19</i></a></li>
								<li class="marker20 green2" seq="20"><a href="#view" class="map_c"><i>20</i></a></li>
								<li class="marker21 green2" seq="21"><a href="#view" class="map_c"><i>21</i></a></li>
								<li class="marker22" seq="22"><a href="#view" class="map_c"><i>22</i></a></li>
								<li class="marker23" seq="23"><a href="#view" class="map_c"><i>23</i></a></li>
								<li class="marker24 green2" seq="24"><a href="#view" class="map_c"><i>24</i></a></li>
								<li class="marker25" seq="25"><a href="#view" class="map_c"><i>25</i></a></li>
							</ul>
						</div>

					</div>
					<div class="map_list">
						<ul class="map_cou_list web_list">
							<li seq="1" class="marx tabx map_name"><a href="#view"><strong>1</strong><span>마을입구</span></a></li>
							<li seq="2" class="map_name"><a href="#view"><strong>2</strong><span>할매텃밭 &amp; 기억저장소</span></a></li>
							<li seq="3" class="map_name"><a href="#view"><strong>3</strong><span>샘몰경로당</span></a></li>
							<li seq="4" class="tabx map_name green"><a href="#view"><strong>4</strong><span>데블스 하우스</span></a></li>
							<li seq="5" class="map_name"><a href="#view"><strong>5</strong><span>마을이 그린 그림 1</span></a></li>
							<li seq="6" class="marx map_name"><a href="#view"><strong>6</strong><span>청춘메세지</span></a></li>
							<li seq="7" class="tabx map_name green"><a href="#view"><strong>7</strong><span>프랜리 컬쳐</span></a></li>
							<li seq="8" class="map_name green"><a href="#view"><strong>8</strong><span>다경이의 식탁</span></a></li>
							<li seq="9" class="map_name green"><a href="#view"><strong>9</strong><span>청춘빌리지</span></a></li>
							<li seq="10" class="map_name green"><a href="#view"><strong>10</strong><span>아우라 팩토리</span></a></li>
							<li seq="11" class="marx map_name"><a href="#view"><strong>11</strong><span>발산광장</span></a></li>
							<li seq="12" class="map_name"><a href="#view"><strong>12</strong><span>108계단</span></a></li>
							<li seq="13" class="map_name green"><a href="#view"><strong>13</strong><span>표류</span></a></li>
							<li seq="14" class="map_name"><a href="#view"><strong>14</strong><span>앤카롱</span></a></li>
							<li seq="15" class="map_name green"><a href="#view"><strong>15</strong><span>발산상회</span></a></li>
							<li seq="16" class="map_name marx"><a href="#view"><strong>16</strong><span>뽕뽕브릿지</span></a></li>
							<li seq="17" class="map_name"><a href="#view"><strong>17</strong><span>마을골목길</span></a></li>
							<li seq="18" class="map_name"><a href="#view"><strong>18</strong><span>별마루전망대</span></a></li>
							<li seq="19" class="map_name green"><a href="#view"><strong>19</strong><span>오타쿠 연구소</span></a></li>
							<li seq="20" class="green"><a href="#view"><strong>20</strong><span>플롱</span></a></li>
							<li seq="21" class="map_name marx green"><a href="#view"><strong>21</strong><span>오방 협동조합</span></a></li>
							<li seq="22" class="map_name"><a href="#view"><strong>22</strong><span>마을이 그린 그림2</span></a></li>
							<li seq="23" class="map_name"><a href="#view"><strong>23</strong><span>주민민박</span></a></li>
							<li seq="24" class="map_name green"><a href="#view"><strong>24</strong><span>만선</span></a></li>
							<li seq="25" class="map_name"><a href="#view"><strong>25</strong><span>역사문화박물관</span></a></li>
						</ul>
					<!--	<div class="moblie_list">
							 <ul>
								<li><a href="#" class="on"><span>1</span><strong>마을입구</strong></a></li>
								<li><a href="#"><span>2</span><strong>마을입구 쉼터</strong></a></li>
								<li><a href="#"><span>3</span><strong>샘몰경로당</strong></a></li>
								<li><a href="#"><span>4</span><strong>데블스 하우스</strong></a></li>
								<li><a href="#"><span>5</span><strong>마을이 그린 그림 1</strong></a></li>
								<li><a href="#"><span>6</span><strong>만선</strong></a></li>
								<li><a href="#"><span>7</span><strong>할매텃밭</strong></a></li>
								<li><a href="#"><span>8</span><strong>기억저장소</strong></a></li>
								<li><a href="#"><span>9</span><strong>발산광장</strong></a></li>
								<li><a href="#"><span>10</span><strong>아우라 팩토리</strong></a></li>
							</ul>
							<div class="more">
								<a href="#">더보기</a>
							</div>
						</div>-->
					</div>
				</div>
				<div class="map_view">

				</div>

			</div>
		</div>
	</div>
 <?include $path_include_prefix."inc/user_footer.inc";?>