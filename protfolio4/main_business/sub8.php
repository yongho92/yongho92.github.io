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

<style> .cont_box .brd_cont .dae_txtlist .dae_list .dae_listbox ul li { margin-left:0px;}</style>
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
								<li><a href="sub7.php">TERACO</a></li>
								<li class="on"><a href="sub8.php">KR MOTORS</a></li>
							</ul>
						</div>
						<div class="brd_cont">
							<div class="logo_01">
								<img src="../web/images/sub/brand_img15.png" alt="KR MOTORS"/>
							</div>
							<div class="dae_txtlist">
								<div class="dae_list dae_list3">
									<div class="dae_listbox" id="slider">
										<ul class="slider_ul">
											<li>
												<dl>
													<dt>AIGLE125</dt>
													<dd><img src="../web/images/sub/Product_kr_01.png" alt="AIGLE125"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>Deliroad 100 </dt>
													<dd><img src="../web/images/sub/Product_kr_02.png" alt="Deliroad 100 "/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>Raon 100</dt>
													<dd><img src="../web/images/sub/Product_kr_03.png" alt="Raon 100"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>Megajet 125</dt>
													<dd><img src="../web/images/sub/Product_kr_04.png" alt="Megajet 125"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>G6</dt>
													<dd><img src="../web/images/sub/Product_kr_06.png" alt="G6"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>DJANGO 125</dt>
													<dd><img src="../web/images/sub/Product_kr_07.png" alt="DJANGO 125"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>DownTown 125</dt>
													<dd><img src="../web/images/sub/Product_kr_08.png" alt="DownTown 125"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>Metropolis 400</dt>
													<dd><img src="../web/images/sub/Product_kr_09.png" alt="Metropolis 400"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>Speedfight 125</dt>
													<dd><img src="../web/images/sub/Product_kr_10.png" alt="Speedfight 125"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>DD110 </dt>
													<dd><img src="../web/images/sub/Product_kr_11.png" alt="DD110 "/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>GV250DR</dt>
													<dd><img src="../web/images/sub/Product_kr_12.png" alt="GV250DR"/></dd>
												</dl>
											</li>
										</ul>
									</div>
									<div class="list_btn">
										<a href="javascript:;" class="blbtn" id="slier_pre"><img src="../web/images/sub/brand_lbtn.png" alt=""/></a>
										<a href="javascript:;" class="brbtn" id="slier_next"><img src="../web/images/sub/brand_rbtn.png" alt=""/></a>
									</div>
								</div>
								<div class="dae_txt">
									<dl>
										<dt><img src="../web/images/sub/title_42.png" alt="KR모터스는 고도의 기술력과 강력한 브랜드를 지닌 대한민국의 오토바이 전문 제조사입니다."></dt>
										<dd>지난 40여년간 오토바이 관련 기술개발 및 제조, 판매에만 집중해 온 KR모터스는 축적된 기술력을 바탕으로 50cc 스쿠터 엔진부터 700cc급 v-twin에 이르는<br/>엔진 라인업과 크루저∙스포츠∙네이키드∙스쿠터∙비즈니스(언더본)∙전기스쿠터 등 오토바이의 모든 카테고리에 걸쳐 제품 라인업을 보유한 <br/>명실상부 대한민국 오토바이 산업의 자존심입니다. <br/>KR모터스는 꾸준히 성장하고 있는 글로벌 오토바이 시장에서 경쟁력 있는 제품을 지속적으로 선보이기 위해 모든 R&D 역량을 집중하고 있으며, <br/>혁신적인 품질 업그레이드와 고객만족도 향상을 통해 세계적인 메이저 브랜드들과 어깨를 나란히 하기 위해 최선을 다하고 있습니다.</dd>
									</dl>
									<p><a href="http://www.krmotors.com/" target="_blank"><span>홈페이지 바로가기</span></a></p>
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
						<p>KR MOTORS의 발자취를 소개합니다</p>
					</div>
					<div class="bar_hiscont bar_hiscont3">
						<div class="barhis_l num">
							<ul>
								<li class="data_1">
									<dl>
										<dt>2016</dt>
										<dd>중국합자회사(JV) 계약 체결</dd>
									</dl>
								</li>
								<li class="data_2">
									<dl>
										<dt>2014</dt>
										<dd>사명 변경 : KR모터스</dd>
										<dd><img src="../web/images/sub/brand_img13.jpg" alt=""/></dd>
									</dl>
								</li>
								<li class="data_3">
									<dl>
										<dt>2012</dt>
										<dd>세종특별자치시, 국립수목원 등 전기이륜차 공급</dd>
										<dd><img src="../web/images/sub/brand_img14.jpg" alt=""/></dd>
									</dl>
								</li>
								<li class="data_4">
									<dl>
										<dt>2010</dt>
										<dd>친환경 전기이륜차 개발</dd>
									</dl>
								</li>
								<li class="data_5">
									<dl>
										<dt>2005</dt>
										<dd>미국 현지 판매법인 설립, 해외 Distributor Network 정비(유럽, 아시아)</dd>
										<dd><img src="../web/images/sub/brand_img16.jpg" alt=""/></dd>
									</dl>
								</li>
								<li class="data_6">
									<dl>
										<dt>2001</dt>
										<dd>생산 200만대 돌파</dd>
									</dl>
								</li>
								<li class="data_7">
									<dl>
										<dt>1996</dt>
										<dd>ISO 9001 품질 인증 획득(독일 TUV사), 누적 생산 100만대 돌파</dd>
										<dd><img src="../web/images/sub/brand_img17.jpg" alt=""/></dd>
									</dl>
								</li>
								<li class="data_8">
									<dl>
										<dt>1994</dt>
										<dd>유럽 수출 개시 – 이태리 CAB50 수출</dd>
										<dd><img src="../web/images/sub/brand_img18.jpg" alt=""/></dd>
									</dl>
								</li>
								<li class="data_9">
									<dl>
										<dt>1990</dt>
										<dd>대전 대성 제2공장 준공, 기계판매㈜, 이륜차판매㈜ 분리 법인 설립</dd>
									</dl>
								</li>
								<li class="data_10">
									<dl>
										<dt>1987</dt>
										<dd>순수 독자 개발품 양산</dd>
										<dd><img src="../web/images/sub/brand_img20.jpg" alt=""/></dd>
									</dl>
								</li>
								<li class="data_11">
									<dl>
										<dt>1985</dt>
										<dd>88 올림픽 모터사이클 공식 공급자 선정</dd>
										<dd>86 아시안게임 모터사이클 공식 공급자 선정</dd>
									</dl>
								</li>
								<li class="data_12">
									<dl>
										<dt>1978</dt>
										<dd>효성기계공업㈜ 설립</dd>
									</dl>
								</li>
							</ul>
						</div>
						<div class="barhis_r barhis_r2 num">
							<ul>
								<li class="data_13">
									<dl>
										<dt>2017</dt>
										<dd>프랑스 푸조스쿠터 국내 독점판매 개시</dd>
										<dd><img src="../web/images/sub/brand_img12.jpg" alt=""/></dd>
									</dl>
								</li>
								<li class="data_14">
									<dl>
										<dt>2015</dt>
										<dd>KR모터스 캄보디아 직영점 개설</dd>
									</dl>
								</li>
								<li class="data_15">
									<dl>
										<dt>2013</dt>
										<dd>DOHC 205cc 단기통 수냉엔진 개발 양산</dd>
									</dl>
								</li>
								<li class="data_16">
									<dl>
										<dt>2011</dt>
										<dd>창원시 전기이륜차 공급</dd>
									</dl>
								</li>
								<li class="data_17">
									<dl>
										<dt>2009</dt>
										<dd>국내최초 700cc급 엔진개발</dd>
										<dd><img src="../web/images/sub/brand_img15.jpg" alt=""/></dd>
									</dl>
								</li>
								<li class="data_18">
									<dl>
										<dt>2003</dt>
										<dd>M&A에 의한 효성 그룹으로부터 분리</dd>
									</dl>
								</li>
								<li class="data_19">
									<dl>
										<dt>1997</dt>
										<dd>필리핀, 베트남, 인도 등과의 기술 이전 계약</dd>
									</dl>
								</li>
								<li class="data_20">
									<dl>
										<dt>1995</dt>
										<dd>125cc DOHC엔진 개발 양산</dd>
									</dl>
								</li>
								<li class="data_21">
									<dl>
										<dt>1991</dt>
										<dd>서비스㈜ 분리 법인 설립</dd>
									</dl>
								</li>
								<li class="data_22">
									<dl>
										<dt>1988</dt>
										<dd>일본 수출 개시(FAMILA100, FR50)</dd>
										<dd><img src="../web/images/sub/brand_img19.jpg" alt=""/></dd>
									</dl>
								</li>
								<li class="data_23">
									<dl>
										<dt>1986</dt>
										<dd>기술연구소 설립</dd>
										<dd><img src="../web/images/sub/brand_img21.jpg" alt=""/></dd>
									</dl>
								</li>
								<li class="data_24">
									<dl>
										<dt>1979</dt>
										<dd>일본 스즈끼 자동차㈜와 기술 제휴</dd>
									</dl>
								</li>
							</ul>
						</div>
					</div>
				</div>
<? include $path_include_prefix."inc/user_footer.inc"?>