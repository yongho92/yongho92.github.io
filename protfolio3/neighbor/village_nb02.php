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

    $parameters->set("menu1", "3");
    $parameters->set("menu2", "1");

?>
<?include $path_include_prefix."inc/user_header.inc";?>

<script>

function fw_domReady(){
    var frm = document.frm;

     $(document).ready(function(e) {
			$('img[usemap]').rwdImageMaps();

		});

}
</script>


	<div class="contents">
		<div class="sub_title sub_title_nb">
			<dl>
				<dt>마을이웃</dt>
				<dd>마을의 일상이 문화가 되는 마을</dd>
			</dl>
		</div>
		<div class="sub_cont">
			<div class="nb_view">
				<div class="view_info">
					<h2><span>마을 체험거리</span></h2>
					<dl>
						<dt>표류</dt>
						<dd>아트 스튜디오 겸 아트샵</dd>
					</dl>
					<p>운영하시는 작가님의 순수 예술 작품을 공유하고 직접 만든 상품을 판매하는 아트샵, 표류입니다. <span>이용료에 음료가 함께 제공되고, 각 공간마다 새로운 분위기를 자아내는 앤티크한 분위기의 사진 찍기 좋고 전망이 좋은 감성 스튜디오예요.<span> 매월 새로운 구성의 문화예술 프로그램이 준비되어 색다른 재미를 느끼실 수 있어요.</p>
					<div class="info">
						<ul class="">
							<li><span>공간번호</span>  11</li>
							<li><span>이용시간</span>  am11:00 - pm08:00 (월요 휴무)</li>
						</ul>
						<ul class="info_2">
							<li><span>위치</span> 광주광역시 천변좌로 118번길 9</li>
							<li><span>문의</span>  인스타그램 @pyo.ryu DM 문의</li>
						</ul>
					</div>
					<div class="view_img">
						<ul class="bxslider view_box">
							<li><img src="../web/images/sub/neigbor/view_img01.jpg" alt="표류이미지" class="web_view"/></li>
							<li><img src="../web/images/sub/neigbor/view_img01.jpg" alt="표류이미지" class="web_view"/></li>
							<li><img src="../web/images/sub/neigbor/view_img01.jpg" alt="표류이미지" class="web_view"/></li>
						</ul>
<!-- 						<div class="view_btn">
							<a href="javascript:void(0);" class="prev rol_main_prev"><img src="../web/images/sub/village_walk/view_left.png" alt="왼쪽"></a>
							<a href="javascript:void(0);" class="next rol_main_next"><img src="../web/images/sub/village_walk/view_right.png" alt="오른쪽"></a>
						</div>
						<div class="view_list">
							<ul class="rol_img">
								<li class="select" id="rol_btn_1"><a href="javascript:main_visual_btn('1')">1번째 버튼</a></li>
								<li class="" id="rol_btn_2"><a href="javascript:main_visual_btn('2')">2번째 버튼</a></li>
								<li class="" id="rol_btn_3"><a href="javascript:main_visual_btn('3')">3번째 버튼</a></li>
							</ul>
						</div> -->
					</div>
				</div>

				<script>
					$(function(){
					  $('.bxslider').bxSlider({
						mode: 'fade'
					  });
					});
				</script>

				<div class="view_map">
					<h2>위치정보</h2>
					<div class="map_img_1022">
						<img src="../web/images/sub/neigbor/view_map.jpg" alt="마을지도" class="web_map"/>
						<a href="#" class="map_ex2"><img src="../web/images/sub/neigbor/map_ex.jpg" alt="지도확대하기"/></a>
					</div>
					<div class="list_btn">
						<a href="#">목록</a>
					</div>

				</div>
			</div>
		</div>
	</div>
  <?include $path_include_prefix."inc/user_footer.inc";?>