<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "5");
    $parameters->set("menu2", "3");
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
							<h2><img src="../web/images/sub/title_69.png" alt="채용공고"/></h2>
						</div>
						<div class="re_cont">
							<div class="not_view">
								<table>
									<caption>채용공고</caption>
									<tbody>
										<tr>
											<td class="box1"><p class="title"><span class="view_txt01">신입</span> 2017년 상반기 대졸신입사원 공개채용</p></td>
											<td class="box2">모집기간 : 2017.10.08~2017.10.15</td>
											<td class="box3"><span class="view_icon">채용중</span></td>
										</tr>
										<tr>
											<td class="box4" colspan="3"><a href="#" class="file">첨부파일 : LVMC_job.docx</a></td>
										</tr>
										<tr>
											<td colspan="3" class="box5">
												<p>안녕하십니까? LVMC홀딩스입니다. <br/>LVMC홀딩스와 함께 라오스와 인도차이나 반도를 누빌 유능하고 성실한 인재를 공개 채용합니다. </p>
												<img src="../web/images/sub/re_img01.jpg" alt=""/>
											</td>
										</tr>
										<tr class="lineb">
											<td colspan="2" class="box6">
												<a href="#" class="prev"><span>이전글</span></a>
												<a href="#" class="next"><span>다음글</span></a>
											</td>
											<td class="box7"><a href="#" class="view_list">목록</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
<? include $path_include_prefix."inc/user_footer.inc"?>