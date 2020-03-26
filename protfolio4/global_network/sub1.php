<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "3");
    $parameters->set("menu2", "1");
?>
<? include $path_include_prefix."inc/user_header.inc"?>
<script>
function fw_domReady()
{
}


</script>
			<div class="world_w">
			</div>
			<div class="comp1">
				<div class="cont_box">
					<div class="copm1_box">
						<div class="cont_01 gn_tit">
							<h2><img src="../web/images/sub/title_43.png" alt="사업장소개"/></h2>
							<p><img src="../web/images/sub/title_44.png" alt="60 Distributors and 12 Subsidiaries"/></p>
							<div class="cont_01_img">
								<img src="../web/images/sub/gn_img02.png" alt=""/>
							</div>
						</div>
					</div>
					<div class="gn_tab">
						<ul>
							<li class="on"><a href="sub1.php">전체</a></li>
							<li><a href="sub2.php">라오스</a></li>
							<li><a href="sub3.php">베트남</a></li>
							<li><a href="sub4.php">미얀마</a></li>
							<li><a href="sub5.php">캄보디아</a></li>
							<li><a href="sub6.php">파키스탄</a></li>
						</ul>
					</div>
				</div>
			</div>
			
	<? include $path_include_prefix."inc/user_footer.inc"?>