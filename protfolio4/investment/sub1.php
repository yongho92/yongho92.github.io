<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "4");
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
						<div class="cont_01 int_tit">
							<h2><img src="../web/images/sub/title_53.png" alt="회사개요"/></h2>
							<div class="cont_01_img">
								<img src="../web/images/sub/int_img01.jpg" alt=""/>
							</div>
						</div>
						<div class="comp_info">
							<h3><img src="../web/images/sub/title_54.png" alt="기업정보"/></h3>
							<table summary="기업정보를 확인하세요">
								<caption>기업정보</caption>
								<tbody>
									<tr>
										<td colspan="4" class="info_top">
											<dl class="info_icon1">
												<dt>설립일</dt>
												<dd><strong>2009</strong>년 6월 16일</dd>
											</dl>
											<dl class="info_icon2">
												<dt>상장일</dt>
												<dd><strong>2010</strong>년 11월 30일</dd>
											</dl>
											<dl class="info_icon3">
												<dt>총 발행 주식 수</dt>
												<dd><strong>47,869,508</strong> 주</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th>회사명</th>
										<td>엘브이엠씨홀딩스(LVMC Holdings)</td>
										<th>대표이사</th>
										<td>오세영, 이형승</td>
									</tr>
									<tr>
										<th>업종구분</th>
										<td>비금융 지주회사</td>
										<th>상장현황</th>
										<td>한국거래소 유가증권시장 상장</td>
									</tr>
									<tr>
										<th>종목코스</th>
										<td>900140</td>
										<th>회계기간</th>
										<td>매년 1월 1일 부터 12월 31일</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
<? include $path_include_prefix."inc/user_footer.inc"?>
