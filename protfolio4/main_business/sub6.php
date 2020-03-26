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
								<li class="on"><a href="sub6.php">DAEHAN</a></li>
								<li><a href="sub7.php">TERACO</a></li>
								<li><a href="sub8.php">KR MOTORS</a></li>
							</ul>
						</div>
						<div class="brd_cont">
							<div class="logo_01">
								<img src="../web/images/sub/brand_img01.png" alt="DAEHAN"/>
							</div>
							<div class="dae_txtlist">
								<div class="dae_list">
									<div class="dae_listbox" id="slider">
										<ul class="slider_ul">
											<li>
												<dl>
													<dt>MINI TRUCK</dt>
													<dd><img src="../web/images/sub/Product_D_01.png" alt="mini truck"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>SUPER 1</dt>
													<dd><img src="../web/images/sub/Product_D_02.png" alt="super 1"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>D-T1</dt>
													<dd><img src="../web/images/sub/Product_D_03.png" alt="D-T1 Pers"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>D-150</dt>
													<dd><img src="../web/images/sub/Product_D_04.png" alt="D-150 Pers"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>TERA150</dt>
													<dd><img src="../web/images/sub/Product_D_05.png" alt="tera150"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>D-220</dt>
													<dd><img src="../web/images/sub/Product_D_06.png" alt="D-220"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>EXTREME</dt>
													<dd><img src="../web/images/sub/Product_D_07.png" alt="extreme"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>BRAVO</dt>
													<dd><img src="../web/images/sub/Product_D_08.png" alt="Bravo"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>PRIME</dt>
													<dd><img src="../web/images/sub/Product_D_09.png" alt="prime"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>MAESTRO</dt>
													<dd><img src="../web/images/sub/Product_D_10.png" alt="maestro"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>MEGATRON</dt>
													<dd><img src="../web/images/sub/Product_D_11.png" alt="megatron"/></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>OPTIMUS</dt>
													<dd><img src="../web/images/sub/Product_D_12.png" alt="optimus"/></dd>
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
										<dt><img src="../web/images/sub/title_40.png" alt="최상의 품질과 서비스를 바탕으로 고객을 만족시키는 브랜드, 글로벌 브랜드로 거듭나는 DAEHAN이 되겠습니다."></dt>
										<dd>KOLAO Group은 10년 이상 축적된 자동차 CKD(반조립) 생산기술 및 Global Sourcing 역량을 기반으로 2011년부터 자동차 개발 및 제조 사업을 추진하여 <br/>2013년에 ‘DAEHAN(대한)’ 브랜드로 1t 트럭을 출시하였습니다. 대한자동차는 핵심 부품인 엔진, 변속기 등을 글로벌 기업의 제품을 기반으로 하여 품질을 확보하고, <br/>중국 및 동남아시아를 중심으로 다양한 Sourcing을 전개함으로써 품질 및 가격경쟁력을 보유하고 있으며, <br/>이를 바탕으로 고객의 요구에 맞게 차별화된 비즈니스 모델을 구축하였습니다. </dd>
										<dd>아시아의 작은 나라 라오스에서, 자동차 생산 사업은 모두가 불가능하다고 할 때 대한자동차는 그 불가능을 가능으로 바꾸어 놓았으며, <br/>이제는 아무나 가질 수 없는 사업경쟁력을 기반으로 1t 트럭을 포함하여, 1.5t, 2t 트럭 및 Pick-up(픽업) 트럭 등의 다양한 제품 라인업을 구성하였습니다. <br/>라오스뿐만 아니라 인도차이나반도의 주변국 및 파키스탄까지 판매 네트워크를 확장하고 있으며, 향후 세계 곳곳에 네트워크가 확장된 Global Frontier로써 거듭날 것입니다.</dd>
									</dl>
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
						<p>DAEHAN의 발자취를 소개합니다.</p>
					</div>
					<div class="bar_hiscont">
						<div class="barhis_l num" id="slider">
							<ul>
								<li class="data_17">
									<dl>
										<dt>2017</dt>
										<dd>베트남 시장 진출</dd>
										<dd>라오스 New Super 1 , Megatron 런칭</dd>
									</dl>
								</li>
								<li class="data_15">
									<dl>
										<dt>2015</dt>
										<dd>라오스 사바나켓 제 2공장 완공</dd>
									</dl>
								</li>
								<li class="data_13">
									<dl>
										<dt>2013</dt>
										<dd>라오스 사바나켓 제 1공장 완공 및 super1 양산생산</dd>
										<dd><img src="../web/images/sub/brand_img08.jpg" alt=""/></dd>
										<dd>대한 브랜드 런칭</dd>
									</dl>
								</li>
							</ul>
						</div>
						<div class="barhis_r num">
							<ul>
								<li class="data_18">
									<dl>
										<dt>2018</dt>
										<dd>캄보디아 및 파키스탄 시장 진출</dd>
										<dd><img src="../web/images/sub/brand_img09.jpg" alt=""/></dd>
									</dl>
								</li>
								<li class="data_16">
									<dl>
										<dt>2016</dt>
										<dd>라오스 Maestro, Prime 양산생산</dd>
									</dl>
								</li>
								<li class="data_14">
									<dl>
										<dt>2014</dt>
										<dd>라오스 D-220, Extreme, D-150, D-T1 양산생산</dd>
									</dl>
								</li>
							</ul>
						</div>
					</div>
				</div>
	<? include $path_include_prefix."inc/user_footer.inc"?>