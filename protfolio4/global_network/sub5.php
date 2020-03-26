<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "3");
    $parameters->set("menu2", "5");
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
						<div class="cont_01 gn_tit2 gn_tit5">
							<h2><img src="../web/images/sub/title_51.png" alt="캄보디아"/></h2>
						</div>
						<div class="la_img">
							<img src="../web/images/sub/gn_img09.jpg" alt=""/>
						</div>
						<div class="laos">
							<h3><img src="../web/images/sub/title_46.png" alt="국가개요"/></h3>
							<ul>
								<li>
									<dl>
										<dt class="icon1">Population</dt>
										<dd><strong>16.0</strong>Million<span>(2017)</span></dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="icon2">GDP per Capita(USD)</dt>
										<dd><strong>1,230</strong><span>(2017)</span></dd>
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
										<dt class="icon4">Exchange Rate (KHR/USD)</dt>
										<dd><strong>4,025</strong><span>(2017)</span></dd>
									</dl>
								</li>
							</ul>
							<div class="info">
								<table summary="캄보디아 국가개요 정보를 알아보세요">
									<caption>캄보디아 국가정보</caption>
									<tbody>
										<tr>
											<th>Language</th>
											<td class="txt">Khmer</td>
											<th>Government Type </th>
											<td>Constitutional Monarchy</td>
										</tr>
										<tr>
											<th>The Ruling Party </th>
											<td class="txt">Kampuchean People’s Revolutionary Party </td>
											<th>Currency</th>
											<td>Riel(KHR), USD</td>
										</tr>
										<tr>
											<th>CPI Growth Rate</th>
											<td class="txt">2.9% (2017)</td>
											<th>FDI (USD Million)</th>
											<td>2,287 (2016)</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="gn_cont2">
				<div class="gn_cont2box gn_bar5">
					<h3><img src="../web/images/sub/title_47.png" alt="진출연혁"/></h3>
					<div class="gn_l num">
						<ul>
							<li class="data_1">
								<dl>
									<dt>2014</dt>
									<dd>· KR Motors 프놈펜 쇼룸 오픈 <strong>07.</strong></dd>
								</dl>
							</li>
						</ul>
					</div>
					<div class="gn_r num">
						<ul>
							<li class="data_3">
								<dl>
									<dt>2018</dt>
									<dd>· <strong>02.</strong> Ssangyong 프놈펜 쇼룸 오픈</dd>
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
							<li><img src="../web/images/sub/cambodia_01.jpg" alt=""/></li>
							<li><img src="../web/images/sub/cambodia_02.jpg" alt=""/></li>
							<li><img src="../web/images/sub/cambodia_03.jpg" alt=""/></li>
							<li><img src="../web/images/sub/cambodia_04.jpg" alt=""/></li>
							<!--<li><img src="../web/images/sub/gn_cam_01.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_02.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_03.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_04.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_05.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_06.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_07.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_08.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_09.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_10.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_11.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_12.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_13.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_14.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_15.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_16.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_17.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_cam_18.jpg" alt=""/></li>-->
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
								<!--<td>
									<dl>
										<dt>Total Area</dt>
										<dd>1,140,000㎡</dd>
									</dl>
								</td>
								<td>
									<dl>
										<dt>Factory Area</dt>
										<dd>250,000㎡</dd>
									</dl>
								</td>
								<td>
									<dl>
										<dt>Capacity</dt>
										<dd>30,000 units/year</dd>
									</dl>
								</td>
								<td>
									<dl>
										<dt>SOP </dt>
										<dd>JAN 2018</dd>
									</dl>
								</td>-->
								<td>
									
									<dl>
										<dt></dt>
										<dd>Completes Cham Chao and Koh Pich showroom construction in Phnom Penh in FEB 2018</dd>
									</dl>
								</td>
							</tr>
							<tr>
								<td colspan="4" class="adr">
									<dl>
										<dt>Address</dt>
										<dd>No. 15A-16A-17A, Koh Pich Street, Sangkat Tonlebassac, Khan Chamkamon, Phnom Penh, Cambodia</dd>
									</dl>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
<? include $path_include_prefix."inc/user_footer.inc"?>