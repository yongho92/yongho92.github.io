<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "3");
    $parameters->set("menu2", "3");
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
						<div class="cont_01 gn_tit2 gn_tit4">
							<h2><img src="../web/images/sub/title_49.png" alt="베트남"/></h2>
						</div>
						<div class="la_img">
							<img src="../web/images/sub/gn_img05.jpg" alt=""/>
						</div>
						<div class="laos">
							<h3><img src="../web/images/sub/title_46.png" alt="국가개요"/></h3>
							<ul>
								<li>
									<dl>
										<dt class="icon1">Population</dt>
										<dd><strong>93.6</strong>Million<span>(2017)</span></dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="icon2">GDP per Capita(USD)</dt>
										<dd><strong>2,306</strong><span>(2017)</span></dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="icon3">GDP Growth Rate</dt>
										<dd><strong>6.3  </strong>%<span>(2017)</span></dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="icon4">Exchange Rate (Dong/USD)</dt>
										<dd><strong>22,750</strong><span>(2017)</span></dd>
									</dl>
								</li>
							</ul>
							<div class="info">
								<table summary="베트남 국가개요 정보를 알아보세요">
									<caption>베트남 국가정보</caption>
									<tbody>
										<tr>
											<th>Language</th>
											<td class="txt">Vietnamese</td>
											<th>Government Type </th>
											<td>Communist State</td>
										</tr>
										<tr>
											<th>The Ruling Party </th>
											<td class="txt">Vietnamese Communist Party</td>
											<th>Currency</th>
											<td>Vietnamese Dong(VND)</td>
										</tr>
										<tr>
											<th>CPI Growth Rate</th>
											<td class="txt">3.6% (2017)</td>
											<th>FDI (USD Million)</th>
											<td>33,086 (2017)</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="gn_cont2">
				<div class="gn_cont2box gn_bar3">
					<h3><img src="../web/images/sub/title_47.png" alt="진출연혁"/></h3>
					<div class="gn_l num">
						<ul>
							<li class="data_1">
								<dl>
									<dt>2016</dt>
									<dd>· COP 취득 <strong>11.</strong></dd>
									<dd>· 트럭 조립 라이선스 취득 <strong>11.</strong></dd>
									<dd>· 제 2라인 발주 <strong>08.</strong></dd>
									<dd>· TERA 180 샘플 생산 완료 <strong>08.</strong></dd>
									<dd>· TERA 220 샘플 생산 완료 <strong>06.</strong></dd>
									<dd>· 공장 완공 <strong>06.</strong></dd>
									<dd>· 제 1라인 및 설비 설치 완료 <strong>06.</strong></dd>
								</dl>
							</li>
						</ul>
					</div>
					<div class="gn_r gn_r2 num">
						<ul>
							<li class="data_5">
								<dl>
									<dt>2017</dt>
									<dd>· <strong>04.</strong> TERACO 론칭 및 14개 딜러망 확보</dd>
								</dl>
							</li>
							<li class="data_6">
								<dl>
									<dt>2015</dt>
									<dd>· <strong>11.</strong> 공장 시공 착수</dd>
									<dd>· <strong>08.</strong> 공장 부지 계약 - 호치민 화푸 자동차 공단</dd>
									<dd>· <strong>06.</strong> DAEHAN Motors Company설립</dd>
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
							<li><img src="../web/images/sub/gn_img06.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_01.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_02.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_03.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_04.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_05.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_06.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_07.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_08.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_09.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_10.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_11.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_12.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_13.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_14.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_vt_15.jpg" alt=""/></li>
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
										<dd>132,442㎡</dd>
									</dl>
								</td>
								<td>
									<dl>
										<dt>Capacity</dt>
										<dd>20,000 units/year</dd>
									</dl>
								</td>
								<td>
									<dl>
										<dt>Employee</dt>
										<dd>600</dd>
									</dl>
								</td>
								<td>
									<dl>
										<dt>First Operation Date</dt>
										<dd>JUN 2016</dd>
									</dl>
								</td>
							</tr>
							<tr>
								<td colspan="4" class="adr">
									<dl>
										<dt>Address</dt>
										<dd>Automotive Mechanical Industrial Zone, Hoa Phu Commune, Cu Chi District, HCMC</dd>
									</dl>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
<? include $path_include_prefix."inc/user_footer.inc"?>
