<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "1");
    $parameters->set("menu2", "2");
?>
<? include $path_include_prefix."inc/user_header.inc"?>
<script>
function fw_domReady()
{
}

</script>

			<div class="comp1">
				<div class="cont_box">
					<div class="copm1_box">
						<div class="cont_01">
							<h2><img src="../web/images/sub/title_23.png" alt="연혁"/></h2>
							<p>최초의 도전이 최고가 되기까지, LVMC홀딩스의 발자취를 소개합니다.</p>
						</div>
					</div>
					<div class="history">
						<div class="hist_2010s hist_2010s2">
							<div class="hist_l">
								<dl>
									<dt><img src="../web/images/sub/title_24.png" alt="현재 - 2010"/><dt>
									<dd>한국거래소 KOSPI 상장 2010</dd>
									<dd class="hist_img"><img src="../web/images/sub/comp2_img01.jpg" alt="한국거래소 KOSPI 상장 2010"/></dd>
								</dl>
							</div>
							<div class="hist_r">
								<ul>
									<li>
										<dl>
											<dt>2018</dt>
											<dd>LVMC Holdings로 사명변경</dd>
											<dd>파키스탄 ‘Shehzore’ 브랜드 1톤 트럭 런칭행사 및 판매 개시</dd>
											<dd>GMS Trading 설립</dd>
										</dl>
									</li>
									<li class="data_1">
										<dl>
											<dt>2017</dt>
											<dd>태국 신용회사 TRIS로부터 ‘BBB-(안정)’ 등급 획득</dd>
											<dd>KB금융그룹과 합작법인 KB Kolao Leasing Company 설립 </dd>
											<dd>Shwe Daehan Motors 설립</dd>
											<dd>Jinan Qingqi KR Motorcycle 설립</dd>
										</dl>
									</li>
									<li class="data_2">
										<dl>
											<dt>2016</dt>
											<dd>DGB Lao Leasing Company 설립</dd>
											<dd>파키스탄 파트너사와 합작법인 Daehan-Dewan Motor Company 설립</dd>
											<dd>Chongqing Kolao-Yuan R&D, Chongqing Kolao-Yuan Auto Trading 설립</dd>
										</dl>
									</li>
									<li class="data_6">
										<dl>
											<dt>2015</dt>
											<dd>DAEHAN Motors Company 설립</dd>
										</dl>
									</li>
									<li class="data_3">
										<dl>
											<dt>2014</dt>
											<dd>한국의 오토바이 제조회사 ‘S&T모터스’ 인수 (‘KR모터스’로 사명 변경)</dd>
											<dd>CGIF 보증 SGD 6백만불 규모 채권 발행 (S&P AA 등급)</dd>
											<dd>캄보디아 KR 모터스 쇼룸 오픈 및 판매 개시</dd>
										</dl>
									</li>
									<li class="data_4">
										<dl>
											<dt>2013</dt>
											<dd>싱가폴 시장에 글로벌 예탁증서(GDR) 발행</dd>
											<dd>신차 CKD 브랜드 ‘DAEHAN’ 출시</dd>
											<dd>미얀마 현대자동차 판매개시</dd>
										</dl>
									</li>
									<li class="data_5">
										<dl>
											<dt>2010</dt>
											<dd>한국거래소 KOSPI 상장 (‘코라오홀딩스’ : 한상 기업 최초의 KOSPI 상장)</dd>
										</dl>
									</li>
								</ul>
							</div>
						</div>
						<div class="hist_2010s hist_2009">
							<div class="hist_l">
								<dl>
									<dt><img src="../web/images/sub/title_25.png" alt="2009 - 2000"/><dt>
									<dd>독자 브랜드 ‘KOLAO’로 오토바이 사업 개시 2003</dd>
									<dd class="hist_img"><img src="../web/images/sub/comp2_img02.jpg" alt="독자 브랜드 ‘KOLAO’로 오토바이 사업 개시 2003."/></dd>
								</dl>
							</div>
							<div class="hist_r">
								<ul>
									<li>
										<dl>
											<dt>2009</dt>
											<dd>지주회사 ‘코라오홀딩스’ 설립</dd>
											<dd>‘인도차이나 뱅크’를 오픈하면서 금융산업 시작 <br/>(원스톱 서비스, 자동차 할부금융의 도입)</dd>
										</dl>
									</li>
<!-- 									<li class="data_1">
										<dl>
											<dt>2008</dt>
											
										</dl>
									</li> -->
									<li class="data_2">
										<dl>
											<dt>2003</dt>
											<dd>독자 브랜드 ‘KOLAO’로 오토바이 사업 개시<br/>(현재 전국 310여개의 딜러망, 프랜차이즈 갖춤)</dd>
										</dl>
									</li>
									<li class="data_3">
										<dl>
											<dt>2002</dt>
											<dd>라오스 최초의 애프터 서비스 센터(자동차)를 열어 고객만족 경영을 실천</dd>
										</dl>
									</li>
									<li class="data_4">
										<dl>
											<dt>2001</dt>
											<dd>현대차 신차 판매계약 체결</dd>
										</dl>
									</li>
									<li class="data_5">
										<dl>
											<dt>2000</dt>
											<dd>기아차 신차 판매계약 체결</dd>
										</dl>
									</li>
								</ul>
							</div>
						</div>
						<div class="hist_2010s hist_2000">
							<div class="hist_l">
								<dl>
									<dt><img src="../web/images/sub/title_26.png" alt="2000 - 1990"/><dt>
									<dd>General Motors 설립 1997</dd>
									<dd class="hist_img"><img src="../web/images/sub/comp2_img03.jpg" alt="General Motors 설립 1997."/></dd>
								</dl>
							</div>
							<div class="hist_r">
								<ul>
									<li class="data_1">
										<dl>
											<dt>1999</dt>
											<dd>라오스 공업도시 사바나켓에서 공장을 이수하여 자동차 조립라인 갖춤</dd>
										</dl>
									</li>
									<li class="data_2">
										<dl>
											<dt>1997</dt>
											<dd>General Motors 설립</dd>
										</dl>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>


<? include $path_include_prefix."inc/user_footer.inc"?>
