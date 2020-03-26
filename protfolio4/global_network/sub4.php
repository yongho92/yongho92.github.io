<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "3");
    $parameters->set("menu2", "4");
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
						<div class="cont_01 gn_tit2 gn_tit3">
							<h2><img src="../web/images/sub/title_50.png" alt="미얀마"/></h2>
						</div>
						<div class="la_img">
							<img src="../web/images/sub/gn_img07.jpg" alt=""/>
						</div>
						<div class="laos">
							<h3><img src="../web/images/sub/title_46.png" alt="국가개요"/></h3>
							<ul>
								<li>
									<dl>
										<dt class="icon1">Population</dt>
										<dd><strong>52.6</strong>Million<span>(2017)</span></dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="icon2">GDP per Capita(USD)</dt>
										<dd><strong>1,205</strong><span>(2017)</span></dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="icon3">GDP Growth Rate</dt>
										<dd><strong>7.5  </strong>%<span>(2017)</span></dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="icon4">Exchange Rate (MMK/USD)</dt>
										<dd><strong>1,363</strong><span>(2017)</span></dd>
									</dl>
								</li>
							</ul>
							<div class="info">
								<table summary="미얀마 국가개요 정보를 알아보세요">
									<caption>미얀마 국가정보</caption>
									<tbody>
										<tr>
											<th>Language</th>
											<td class="txt">Burmese</td>
											<th>Government Type </th>
											<td>Presidential System</td>
										</tr>
										<tr>
											<th>The Ruling Party </th>
											<td class="txt">National League for Democracy</td>
											<th>Currency</th>
											<td>Burmese Kyat(MMK)</td>
										</tr>
										<tr>
											<th>CPI Growth Rate</th>
											<td class="txt">6.9% (2017)</td>
											<th>FDI (USD Million)</th>
											<td>6,600 (2017)</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="gn_cont2">
				<div class="gn_cont2box gn_bar4">
					<h3><img src="../web/images/sub/title_47.png" alt="진출연혁"/></h3>
					<div class="gn_l num">
						<ul>
							<li class="data_1">
								<dl>
									<dt>2017</dt>
									<dd>· Shwe Daehan Motors Company 설립 <strong>11.</strong></dd>
									<dd>· 미얀마 산업부와 Business Agreement 체결 <strong>04.</strong></dd>
									<dd>· 포스코대우와 미얀마 KD사업 MOU 체결 <strong>04.</strong></dd>
									<dd>· 만달레이 쇼룸 확장 오픈 <strong>03.</strong></dd>
								</dl>
							</li>
							<li class="data_2">
								<dl>
									<dt>2013</dt>
									<dd>· 현대자동차 양곤 쇼룸 오픈 <strong>08.</strong></dd>
									<dd>· 현대자동차 대리점 계약 체결 <strong>01.</strong></dd>
								</dl>
							</li>
						</ul>
					</div>
					<div class="gn_r num">
						<ul>
							<li class="data_3">
								<dl>
									<dt>2018</dt>
									<dd>· <strong>03.</strong> 지방 5개 딜러 쇼룸 오픈</dd>
								</dl>
							</li>
							<li class="data_4">
								<dl>
									<dt>2015</dt>
									<dd>· <strong>06.</strong> SK 루브리컨츠 대리점 계약 체결</dd>
									<dd>· <strong>02.</strong> 현대자동차 만달레이 쇼룸 오픈</dd>
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
							<li><img src="../web/images/sub/gn_my_09.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_my_01.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_my_02.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_my_03.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_my_04.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_my_05.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_my_06.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_my_07.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_my_08.jpg" alt=""/></li>
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
									<ul>
										<li>3S Showroom Opened in August 2013</li>
										<li>Landmark in Yangon for its massive size and creative exterior</li>
										<li>Differentiated competitiveness with variety of services</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td class="adr">
									<dl>
										<dt>Address</dt>
										<dd>No. 2/6, 2 Quarter, Corner of Yangon Insein rd. & Thamine station rd., Mayangone Township, Yangon, Myanmar</dd>
									</dl>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
<? include $path_include_prefix."inc/user_footer.inc"?>