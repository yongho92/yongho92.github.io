<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "1");
    $parameters->set("menu2", "1");
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
							<h2><img src="../web/images/sub/title_15.png" alt="개요"/></h2>
							<p>LVMC홀딩스는 인도차이나 반도에서 최고의 자동차 기업을 목표로 성장하고 있습니다.</p>
							<div class="cont_01_img">
								<img src="../web/images/sub/comp1_img01.jpg" alt=""/>
							</div>
							<dl>
								<dt><img src="../web/images/sub/title_16.png" alt="라오스, 베트남, 미얀마, 캄보디아를 비롯하여 전세계로 확장해 나가는 LVMC Holdings."/></dt>
								<dd>자동차, 오토바이 생산 및 선진화된 사후관리 A/S 시스템 기반을 갖춘 Auto Company로서, 최고 품질의 자동차와 오토바이 생산 및 유통업체가 되기 위해 계속 전진합니다. <br/>자동차 및 오토바이 제조와 유통 및 금융 사업 간의 시너지를 통해 차별화된 경쟁력을 지속적으로 강화함으로써 동남아를 넘어 세계로 나아가는 <br/>Global Automotive Company가 될 것입니다.</dd>
							</dl>
						</div>
					</div>
					<div class="cont_02">
						<h3><img src="../web/images/sub/title_17.png" alt="사업영역"/></h3>
						<ul>
							<li>
								<div class="bus_list">
									<dl>
										<dt class="car"><img src="../web/images/sub/title_18.png" alt="자동차 유통"/></dt>
										<dd>- 글로벌 브랜드의 유통</dd>
										<dd>- 라오스 최초 3S쇼룸(Sales,  After-<br/>sales Services, Spare Parts Sales)</dd>
										<dd>- 자동차 판매와 연계한 할부금융 <br/>서비스 제공으로 신규 수요 창출</dd>
										<dd>- 상용트럭 및 건설 중장비 판매</dd>
									</dl>
								</div>
							</li>
							<li>
								<div class="bus_list">
									<dl>
										<dt class="asse"><img src="../web/images/sub/title_19.png" alt="자동차 생산 및 조립"/></dt>
										<dd>- 자체브랜드 DAEHAN의 독자적<br/>R&D, 생산, 판매 및 해외수출</dd>
										<dd>- 경쟁력 있는 품질의 제품을<br/>합리적 가격 제공</dd>
									</dl>
								</div>
							</li>
							<li>
								<div class="bus_list">
									<dl>
										<dt class="bike"><img src="../web/images/sub/title_20.png" alt="오토바이"/></dt>
										<dd>- 자체브랜드 KOLAO Motorcycle의<br/>독자적 R&D, 생산, 판매 및 A/S제공</dd>
										<dd>- 관계사 KR Motors의 생산, <br/>판매, A/S제공 및 해외수출</dd>
									</dl>
								</div>
							</li>
							<li>
								<div class="bus_list">
									<dl>
										<dt class="as"><img src="../web/images/sub/title_21.png" alt="부품 및 A/S"/></dt>
										<dd>- 자동차 및 오토바이의 부품 및<br/>악세서리 판매</dd>
										<dd>- 자동차 및 오토바이 A/S서비스 및<br/>정비 용역 제공</dd>
									</dl>
								</div>
							</li>
							<li>
								<div class="bus_list">
									<dl>
										<dt class="etc"><img src="../web/images/sub/title_22.png" alt="기타(중고차 매매 등)"/></dt>
										<dd>- 라오스 최초의 전문 중고차 <br/>거래 서비스 제공</dd>
										<dd>- 렌탈 서비스</dd>
									</dl>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>




<? include $path_include_prefix."inc/user_footer.inc"?>

