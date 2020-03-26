<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "3");
    $parameters->set("menu2", "2");
?>
<? include $path_include_prefix."inc/user_header.inc"?>
<script>
function fw_domReady()
{
}

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
		maxSlides: 1,
		slideWidth: 1180,
		slideMargin:0,
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
						<div class="cont_01 gn_tit2">
							<h2><img src="../web/images/sub/title_45.png" alt="라오스"/></h2>
						</div>
						<div class="la_img">
							<img src="../web/images/sub/gn_img03.jpg" alt=""/>
						</div>
						<div class="laos">
							<h3><img src="../web/images/sub/title_46.png" alt="국가개요"/></h3>
							<ul>
								<li>
									<dl>
										<dt class="icon1">Population</dt>
										<dd><strong>7.2</strong>Million<span>(2017)</span></dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="icon2">GDP per Capita(USD)</dt>
										<dd><strong>2,567</strong><span>(2017)</span></dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="icon3">GDP Growth Rate</dt>
										<dd><strong>6.9  </strong>%<span>(2017)</span></dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="icon4">Exchange Rate (Kip/USD)</dt>
										<dd><strong>8,299</strong><span>(2017)</span></dd>
									</dl>
								</li>
							</ul>
							<div class="info">
								<table summary="라오스 국가개요 정보를 알아보세요">
									<caption>라오스 국가정보</caption>
									<tbody>
										<tr>
											<th>Language</th>
											<td class="txt">Lao(Official), Thai</td>
											<th>Government Type </th>
											<td>People’s Democracy</td>
										</tr>
										<tr>
											<th>The Ruling Party </th>
											<td class="txt">Lao People’s Revolutionary Party</td>
											<th>Currency</th>
											<td>Lao Kip(LAK), USD, Baht(THB)</td>
										</tr>
										<tr>
											<th>CPI Growth Rate</th>
											<td class="txt">0.8% (2017)</td>
											<th>FDI (USD Million)</th>
											<td>997 (2016)</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="gn_cont2">
				<div class="gn_cont2box">
					<h3><img src="../web/images/sub/title_47.png" alt="진출연혁"/></h3>
					<div class="gn_l num">
						<ul>
							<li class="data_1">
								<dl>
									<dt>2016</dt>
									<dd>· 협력사 DGB Lao Leasing Company 할부금융 개시</dd>
									<dd>· KR Motors 라오스 내 판매개시</dd>
								</dl>
							</li>
							<li class="data_2">
								<dl>
									<dt>2013</dt>
									<dd>· 신차 CKD 브랜드 ‘DAEHAN’ 출시</dd>
								</dl>
							</li>
							<li class="data_3">
								<dl>
									<dt>2003</dt>
									<dd>· 독자 브랜드 ‘KOLAO’로 오토바이 사업 개시<br/>(현재 전국 310여개의 딜러망, 프랜차이즈 갖춤)</dd>
								</dl>
							</li>
							<li class="data_4">
								<dl>
									<dt>1999</dt>
									<dd>· 라오스 공업도시 사바나켓에서 공장을 이수하여 자동차 조립라인 갖춤</dd>
								</dl>
							</li>
						</ul>
					</div>
					<div class="gn_r num">
						<ul>
							<li class="data_5">
								<dl>
									<dt>2017</dt>
									<dd>· 픽업트럭 Maestro, Prime, Megatron 출시</dd>
									<dd>· KB금융그룹과 합작법인 KB Kolao Leasing Company 출범 및 영업개시</dd>
								</dl>
							</li>
							<li class="data_6">
								<dl>
									<dt>2014</dt>
									<dd>· 픽업트럭 Extreme 출시</dd>
								</dl>
							</li>
							<li class="data_7">
								<dl>
									<dt>2009</dt>
									<dd>· ‘인도차이나 뱅크’를 오픈하면서 금융산업 시작 <span>(원스톱 서비스, 자동차 할부금융의 도입)</span></dd>
								</dl>
							</li>
							<li class="data_8">
								<dl>
									<dt>2002</dt>
									<dd>· 라오스 최초의 애프터 서비스 센터(자동차)를 열어 고객만족 경영을 실천</dd>
								</dl>
							</li>
							<li class="data_9">
								<dl>
									<dt>1997</dt>
									<dd>· General Motors 설립</dd>
								</dl>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="gn_cont3">
				<h3><img src="../web/images/sub/title_48.png" alt="사업장 소개 및 전경"/></h3>
				<div class="gn_cont3_img">
					<div class="gn_rollimg" id="slider">
						<ul class="slider_ul">
							<li><img src="../web/images/sub/gn_img04.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_lao_01.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_lao_02.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_lao_03.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_lao_04.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_lao_05.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_lao_06.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_lao_07.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_lao_08.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_lao_09.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_lao_10.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_lao_11.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_lao_12.jpg" alt=""/></li>
						</ul>
					</div>
					<div class="gn_btn">
						<a href="javascript:;" class="gn_lbtn" id="slier_pre"><img src="../web/images/sub/gn_lbtn.png" alt=""/></a>
						<a href="javascript:;" class="gn_rbtn" id="slier_next"><img src="../web/images/sub/gn_rbtn.png" alt=""/></a>
					</div>
				</div>
				<div class="gn_area">
					<table summary="사업장 소개 및 전경 정보를 확인하세요.">
						<tbody>
							<tr>
								<td>
									<dl>
										<dt>Total Area</dt>
										<dd>423,000㎡</dd>
									</dl>
								</td>
								<td>
									<dl>
										<dt>Capacity</dt>
										<dd>40,000 units/year</dd>
									</dl>
								</td>
								<td>
									<dl>
										<dt>Employee</dt>
										<dd>1,500</dd>
									</dl>
								</td>
								<td>
									<dl>
										<dt>First Operation Date</dt>
										<dd>SEP 2013</dd>
									</dl>
								</td>
							</tr>
							<tr>
								<td colspan="4" class="adr">
									<dl>
										<dt>Address</dt>
										<dd>Km9rd, Oudomvilay Village, Kaisone Phomvihan District, Savannakhet, Lao P.D.R</dd>
									</dl>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
	<? include $path_include_prefix."inc/user_footer.inc"?>