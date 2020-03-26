<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "5");
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
						<div class="cont_01 re_tit">
							<h2><img src="../web/images/sub/title_62.png" alt="인재상"/></h2>
							<p>급변하는 경쟁환경에 능동적으로 대처할 수 있는 인재를 키워내고 있습니다.</p>
						</div>
						<div class="re_cont">
							<div class="re_list">
								<dl class="global">
									<dt><img src="../web/images/sub/title_64.png" alt="Global Citizen"/> </dt>
									<dd>글로벌 마인드와 역량을 개발하고 <br/>세계를 상대로 경쟁하는 인재</dd>
								</dl>
								<dl class="chall">
									<dt><img src="../web/images/sub/title_63.png" alt="Challenge"/></dt>
									<dd>회사의 성장과 변화를 위해 열정과<br/>집념을 갖고 끊임없이 도전하는 인재</dd>
								</dl>
								<dl class="innov">
									<dt><img src="../web/images/sub/title_65.png" alt="Innovation"/></dt>
									<dd>기존의 자신에 머물지 않고 다양한 사고와 <br/>시각으로 새로운 성과를 창조하는 인재</dd>
								</dl>
							</div>
							<div class="re_txt">
								<p>LVMC홀딩스는 창사이래 최고품질을 통한 고객만족의 경영철학을 견지하며, 원칙과 신뢰, 성실을 바탕으로 한 정도경영을 추구하고 있습니다. <br/>또한 도전과 혁신, 글로벌마인드 함양을 위한 각종 교육제도를 통해 급변하는 경쟁환경에 능동적으로 대처할 수 있는 인재를 키워내고 있습니다.</p>
								<p class="re_btn"><a href="sub3.php"><span>채용공고 바로가기</span></a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
	<? include $path_include_prefix."inc/user_footer.inc"?>