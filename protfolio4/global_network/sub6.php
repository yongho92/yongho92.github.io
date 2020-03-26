<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "3");
    $parameters->set("menu2", "6");
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
						<div class="cont_01 gn_tit2 gn_tit6">
							<h2><img src="../web/images/sub/title_52.png" alt="파키스탄"/></h2>
						</div>
						<div class="la_img">
							<img src="../web/images/sub/gn_img11.jpg" alt=""/>
						</div>
						<div class="laos">
							<h3><img src="../web/images/sub/title_46.png" alt="국가개요"/></h3>
							<ul>
								<li>
									<dl>
										<dt class="icon1">Population</dt>
										<dd><strong>208</strong>Million<span>(2017)</span></dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="icon2">GDP per Capita(USD)</dt>
										<dd><strong>1,526</strong><span>(2017)</span></dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="icon3">GDP Growth Rate</dt>
										<dd><strong>5.5  </strong>%<span>(2017)</span></dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt class="icon4">Exchange Rate (PKR/USD)</dt>
										<dd><strong>111</strong><span>(2017)</span></dd>
									</dl>
								</li>
							</ul>
							<div class="info">
								<table summary="파키스탄 국가개요 정보를 알아보세요">
									<caption>파키스탄 국가정보</caption>
									<tbody>
										<tr>
											<th>Language</th>
											<td class="txt">Urdu, English</td>
											<th>Government Type </th>
											<td>Federal parliamentary constitutional republic</td>
										</tr>
										<tr>
											<th>The Ruling Party </th>
											<td class="txt">Pakistan Muslim League(N)</td>
											<th>Currency</th>
											<td>Pakistani Rupee</td>
										</tr>
										<tr>
											<th>CPI Growth Rate</th>
											<td class="txt">4.6% (2017)</td>
											<th>FDI (USD Million)</th>
											<td>2,410 (2017)</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="gn_cont2">
				<div class="gn_cont2box gn_bar6">
					<h3><img src="../web/images/sub/title_47.png" alt="진출연혁"/></h3>
					<div class="gn_l num">
						<ul>
							<li class="data_1">
								<dl>
									<dt>2017</dt>
									<dd>· 2차 물량 선적 <strong>04.</strong></dd>
									<dd>· 샘플차량 로드 테스트 완료 <strong>03.</strong></dd>
								</dl>
							</li>
							<li class="data_2">
								<dl>
									<dt>2015</dt>
									<dd>· 1차 런칭 모델 선정(대한 D-T1) <strong>04.</strong></dd>
									<dd>· MOU체결 <strong>01.</strong></dd>
								</dl>
							</li>
						</ul>
					</div>
					<div class="gn_r num">
						<ul>
							<li class="data_3">
								<dl>
									<dt>2018</dt>
									<dd>· <strong>02.</strong> 생산개시, 런칭</dd>
									<dd>· <strong>01.</strong> 브라운필드 승인</dd>
								</dl>
							</li>
							<li class="data_4">
								<dl>
									<dt>2016</dt>
									<dd>· <strong>10.</strong> 1차 물량 선적</dd>
									<dd>· <strong>09.</strong> 샘플용 차량 기후, 로드, 현지적응 테스트 3만km 개시</dd>
									<dd>· <strong>08.</strong> 샘플용 차량 5대 조립, 브라운필드 승인 신청(수입관세 감면 효과)</dd>
									<dd>· <strong>07.</strong> JV설립 </dd>
									<dd>· <strong>06.</strong> 파키스탄 현지 테스트 드라이브용 5대 선적</dd>
									<dd>· <strong>05.</strong> 파키스탄향 차량 개발 완료(D-T1 우측 핸들 차량 개발 완료)</dd>
									<dd>· <strong>04.</strong> JV Agreement 체결</dd>
								</dl>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="gn_cont3 gn_cont4">
				<h3><img src="../web/images/sub/title_48.png" alt="사업장 소개 및 전경"/></h3>
				<div class="gn_cont3_img">
					<div class="gn_rollimg" id="slider">
						<ul class="slider_ul">
							<li><img src="../web/images/sub/gn_img12.jpg" alt=""/></li>
							<li><img src="../web/images/sub/pakistan_02.jpg" alt=""/></li>
							<li><img src="../web/images/sub/pakistan_03.jpg" alt=""/></li>
							<li><img src="../web/images/sub/pakistan_04.jpg" alt=""/></li>
							<li><img src="../web/images/sub/pakistan_05.jpg" alt=""/></li>
							<li><img src="../web/images/sub/pakistan_06.jpg" alt=""/></li>
							<li><img src="../web/images/sub/pakistan_07.jpg" alt=""/></li>
							<li><img src="../web/images/sub/pakistan_08.jpg" alt=""/></li>
							<li><img src="../web/images/sub/pakistan_09.jpg" alt=""/></li>
							<li><img src="../web/images/sub/pakistan_10.jpg" alt=""/></li>
<!-- 							<li><img src="../web/images/sub/gn_ps_01.jpg" alt=""/></li>
							<li><img src="../web/images/sub/gn_ps_02.jpg" alt=""/></li> -->
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
										<dt>Total Area </dt>
										<dd>410,000㎡</dd>
									</dl>
								</td>
								<td>
									<dl>
										<dt>Construction Area</dt>
										<dd>45,600㎡</dd>
									</dl>
								</td>
								<td>
									<dl>
										<dt>Capacity </dt>
										<dd>10,000 units/year</dd>
									</dl>
								</td>
								<td class="gn_1129">
									<dl>
										<dt>First Operation for Daehan Shehzore</dt>
										<dd>FEB 2018</dd>
									</dl>
								</td>
							</tr>
							<tr>
								<td colspan="4" class="adr">
									<dl>
										<dt>Address</dt>
										<dd>7th Floor, Block A, Finance & Trade Centre Shahrah-e-Faisal, Karachi-75350 Pakistan</dd>
									</dl>
								</td>
							</tr>
						</tbody>
					</table>
					<p style="font-size:15px; padding-left:15px; color:#333;">주)생산공장은 파트너사 소속회사인 DFML(Dewan Farooq Motors Limited) 소유이며, DDMC와 Toll Manufacturing 계약에 따라, <br/>DDMC로부터 자동차 생산 오더를 받아, 생산합니다.</p>
				</div>
			</div>
<? include $path_include_prefix."inc/user_footer.inc"?>