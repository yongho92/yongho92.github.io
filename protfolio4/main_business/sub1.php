<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "2");
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
						<div class="cont_01 mb1_tit">
							<h2><img src="../web/images/sub/title_32.png" alt="사업영역"/></h2>
							<p>LVMC 홀딩스가 영위하는 주요 사업영역입니다.</p>
						</div>
						<div class="mb_tab">
							<ul>
								<li class="on"><a href="sub1.php">자동차 유통</a></li>
								<li><a href="sub2.php">자동차 생산 및 조립</a></li>
								<li><a href="sub3.php">오토바이</a></li>
								<li><a href="sub4.php">부품 및 A/S</a></li>
								<li><a href="sub5.php">기타(중고차 매매 등)</a></li>
							</ul>
						</div>
						<div class="mb_cont">
							<div class="mb_img">
								<p><img src="../web/images/sub/mb_img01.jpg" alt=""/></p>
							</div>
							<div class="mb_l">
								<p class="mb_icon01"><span>자동차 유통</span></p>
							</div>
							<div class="mb_r">
								<ul>
									<li>· 글로벌 브랜드의 유통 </li>
									<li>· 라오스 최초 3S쇼룸(Sales, After-sales Services, Spare Parts Sales)</li>
									<li>· 자동차 판매와 연계한 할부금융 서비스 제공으로 신규 수요 창출</li>
									<li>· 상용트럭 및 건설 중장비 판매</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
<? include $path_include_prefix."inc/user_footer.inc"?>
