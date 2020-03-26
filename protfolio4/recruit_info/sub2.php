<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "5");
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
						<div class="cont_01 re_tit2">
							<h2><img src="../web/images/sub/title_66.png" alt="인사제도"/></h2>
						</div>
						<div class="re_cont">
							<div class="re_box1">
								<h3><img src="../web/images/sub/title_67.png" alt="평가제도"/></h3>
								<p>LVMC홀딩스는 공정하고 합리적인 평가제도를 운영하여 임직원의 동기부여 및 성장 기회를 제공합니다.</p>
								<ul class="app_box">
									<li class="re_list01">
										<dl>
											<dt class="re_txt01">성과평가</dt>
											<dd>목표관리 MBO를 통한<br/>구체적, 실천가능한<br/>목표를 설정하고 개인 성과<br/>달성도를 평가</dd>
										</dl>
									</li>
									<li class="re_list02">
										<dl>
											<dt class="re_txt02">평가제도</dt>
											<dd><img src="../web/images/sub/re_icon06.png" alt=""/></dd>
										</dl>
									</li>
									<li class="re_list03">
										<dl>
											<dt class="re_txt03">역량평가</dt>
											<dd>기본, 계층별 리더,<br/>직무 역량으로 구분하여<br/>직급별 역량 발휘 수준을<br/>다각적 측면에서 평가</dd>
										</dl>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="re_cont2">
				<div class="re_box">
					<h3><img src="../web/images/sub/title_68.png" alt="복리후생"/></h3>
					<p>LVMC홀딩스는 구성원의 질 높은 삶을 목표로 다양한 프로그램을 운영하고 있습니다.</p>
					<ul>
						<li class="fb_box01">
							<span><img src="../web/images/sub/re_icon03.png" alt=""/></span>
							<div class="fb_list">
								<dl>
									<dt class="re_txt04">생활 안정 지원 </dt>
									<dd>직원들의 주거 안정을 위한<br/>기숙사 운영 및 주택 자금을<br/>지원하고 있습니다.</dd>
								</dl>
							</div>
						</li>
						<li class="fb_box02">
							<span><img src="../web/images/sub/re_icon04.png" alt=""/></span>
							<div class="fb_list">
								<dl>
									<dt class="re_txt05">정기 건강진단 실시</dt>
									<dd>직원들의 건강 유지를 위해<br/>매년 정기 건강 진단을<br/>실시하고 있습니다.</dd>
								</dl>
							</div>
						</li>
						<li class="fb_box03">
							<span><img src="../web/images/sub/re_icon05.png" alt=""/></span>
							<div class="fb_list">
								<dl>
									<dt class="re_txt06">기타 복리후생 제도</dt>
									<dd>유류비, 통신비, 식대 지원 및<br/>휴가비, 경조사비를<br/>지급하고 있습니다.</dd>
								</dl>
							</div>
						</li>
					</ul>
				</div>
				<? include $path_include_prefix."inc/user_footer.inc"?>