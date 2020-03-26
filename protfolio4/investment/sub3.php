<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "4");
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
						<div class="cont_01 int_tit3">
							<h2><img src="../web/images/sub/title_58.png" alt="주요 주주 현황"/></h2>
						</div>
						<div class="stock">
							<table summary="주요 주주 현황을 알아보세요">
							<caption>주요 주주 현황</caption>
							<thead>
								<tr>
									<th>구분</th>
									<th>주주명</th>
									<th>소유주식수</th>
									<th>지분율</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="points">최대주주</td>
									<td>오세영</td>
									<td>21,266,682</td>
									<td>44.4%</td>
								</tr>
								<tr>
									<td class="points">특별관계자</td>
									<td>오경화</td>
									<td>182,355</td>
									<td>0.4%</td>
								</tr>
								<!--<tr>
									<td class="points">5%이상 주주*</td>
									<td>Templeton Asset Management, Ltd.</td>
									<td>2,555,293</td>
									<td>5.3%</td>
								</tr>-->
								<tr>
									<td class="points">자기주식</td>
									<td>코라오홀딩스</td>
									<td>596,230</td>
									<td>1.2%</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<th colspan="2">기타</th>
									<td>25,824,241</td>
									<td>53.9%</td>
								</tr>
								<tr>
									<th colspan="2">합계</th>
									<td>47,869,508</td>
									<td>100.0%</td>
								</tr>
							</tfoot>
							</table>
							<!--<p>* 5%이상 주주는 최근 공시로 파악된 지분율임 </p>-->
						</div>
					</div>
				</div>
			</div>
<? include $path_include_prefix."inc/user_footer.inc"?>