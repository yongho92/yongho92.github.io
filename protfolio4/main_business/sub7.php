<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "2");
    $parameters->set("menu2", "2");
?>
<? include $path_include_prefix."inc/user_header.inc"?>
<script>
function fw_domReady()
{
}

</script>

<style> </style>
<script>
var Visual_Slider;
var Visual_Slider_status = "start";
$(document).ready(function(){

	//메인 비쥬얼 슬라이더
	subSlider();

});
function subSlider(){

	window.Visual_Slider =$("#slider > ul.slider_ul").bxSlider({
		touchEnabled : false,
		mode : "horizontal",
		moveSlides: 1,
		maxSlides: 5,
		slideWidth: 159,
		slideMargin:37,
		oneToOneTouch : false,
		controls : false,
		pager : false,
		infiniteLoop : false,
		speed : 300,		//슬라이더 이동속도
		autoStart : true,
		auto : false,
		autoControls : false
	});
	$("#slier_next").click(function(){
		window.Visual_Slider.goToNextSlide();
	});
	$("#slier_pre").click(function(){
		window.Visual_Slider.goToPrevSlide();
	});
}

</script>
			<div class="comp1">
				<div class="cont_box">
					<div class="copm1_box">
						<div class="cont_01 mb2_tit">
							<h2><img src="../web/images/sub/title_38.png" alt="브랜드"></h2>
							<p>LVMC 홀딩스의 브랜드를 소개합니다.</p>
						</div>
						<div class="brand_tab">
							<ul>
								<li><a href="sub6.php">DAEHAN</a></li>
								<li class="on"><a href="sub7.php">TERACO</a></li>
								<li><a href="sub8.php">KR MOTORS</a></li>
							</ul>
						</div>
						<div class="brd_cont">
							<div class="logo_01">
								<img src="../web/images/sub/brand_img08.png" alt="TERACO"/>
							</div>
							<div class="dae_txtlist">
								<div class="dae_list dae_list2">
									<div class="dae_listbox">
										<ul>
											<li>
												<dl>
													<dt>TERA190</dt>
													<dd><img src="../web/images/sub/brand_img10.png" alt="TERA190"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>TERA230</dt>
													<dd><img src="../web/images/sub/brand_img11.png" alt="TERA230"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>TERA240</dt>
													<dd><img src="../web/images/sub/brand_img12.png" alt="TERA240"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>TERA250</dt>
													<dd><img src="../web/images/sub/brand_img13.png" alt="TERA250"/></dd>
												</dl>
											</li>
										</ul>
									</div>
								</div>
								<div class="dae_txt dae_txt2">
									<dl>
										<dt><img src="../web/images/sub/title_41.png" alt="STRENGTHEN YOUR POWER"></dt>
										<dd>TERACO는 DAEHAN의 베트남 사업을 위한 브랜드 입니다. Tera-는 디지털 상에서 1012, 즉 1조라는 거대한 양의 데이터를 처리하는 단위입니다. <br/>그 의미를 담아 TERACO는 고객의 가치를 우선으로 최상의 제품을 생산하는 제조업체로 거듭나고자 하는 의미를 담았습니다. 또한 앞으로도 굳건하게 TERACO만의 새로운 가치를 <br/>형성하여 고객 중심의 글로벌 브랜드로 도약할 것입니다.</dd>
									</dl>
									<p><a href="http://daehan.vn/" target="_blank"><span>홈페이지 바로가기</span></a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="brd_his">
				<div class="brd_hisbox">
					<div class="cont_01 mb2_tit">
						<h2><img src="../web/images/sub/title_39.png" alt="연혁"></h2>
						<p>TERACO의 발자취를 소개합니다.</p>
					</div>
					<div class="bar_hiscont bar_hiscont2">
						<div class="barhis_l num num3">
							<ul>
								<li class="data_17">
									<dl>
										<dt>2016</dt>
										<dd>베트남 공장 완공</dd>
										<dd><img src="../web/images/sub/brand_img11.jpg" alt=""/></dd>
									</dl>
								</li>
							</ul>
						</div>
						<div class="barhis_r barhis_r2 num">
							<ul>
								<li class="data_18">
									<dl>
										<dt>2017</dt>
										<dd>TERACO 브랜드 및 제품 출시</dd>
										<dd><img src="../web/images/sub/brand_img10.jpg" alt=""/></dd>
									</dl>
								</li>
							</ul>
						</div>
					</div>
				</div>
<? include $path_include_prefix."inc/user_footer.inc"?>