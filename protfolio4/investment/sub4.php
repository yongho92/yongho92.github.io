<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "4");
    $parameters->set("menu2", "4");
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
						<div class="cont_01 int_tit4">
							<h2><img src="../web/images/sub/title_59.png" alt="주주 환원에 대한 사항"/></h2>
						</div>
						<div class="stock stock2">
							<table summary="주주 환원에 대한 사항을 알아보세요">
							<caption>주주 환원에 대한 사항</caption>
							<thead>
								<tr>
									<th class="sto1">구분</th>
									<th class="sto2">주식의 종류</th>
									<th class="sto3">2017</th>
									<th class="sto3">2016</th>
									<th class="sto3">2015</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>주당액면가액(원)</th>
									<td></td>
									<td>268</td>
									<td>302</td>
									<td>293</td>
								</tr>
								<tr>
									<th>(연결)당기순이익(백만원)</th>
									<td></td>
									<td>13,581</td>
									<td>41,617</td>
									<td>46,871</td>
								</tr>
								<tr>
									<th>(별도)당기순이익(백만원)</th>
									<td></td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<th>(연결)주당순이익(원)</th>
									<td></td>
									<td>300</td>
									<td>909</td>
									<td>1,004</td>
								</tr>
								<tr>
									<th>현금배당금총액(백만원)</th>
									<td></td>
									<td>5,673</td>
									<td>5,673</td>
									<td>4,731</td>
								</tr>
								<tr>
									<th>주식배당금총액(백만원)</th>
									<td></td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<th>(연결)현금배당성향(%)</th>
									<td></td>
									<td>41.8</td>
									<td>13.2</td>
									<td>10.1</td>
								</tr>
								<tr>
									<th rowspan="2">현금배당수익률(%)</th>
									<td class="cet">보통주</td>
									<td>2.53</td>
									<td>1.51</td>
									<td>1.01</td>
								</tr>
								<tr>
									<td class="cet">우선주</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<th rowspan="2">주식배당수익률(%)</th>
									<td class="cet">보통주</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td class="cet">우선주</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<th rowspan="2">주당 현금배당금(원)</th>
									<td class="cet">보통주</td>
									<td>120</td>
									<td>120</td>
									<td>100</td>
								</tr>
								<tr>
									<td class="cet">우선주</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<th rowspan="2">주당 주식배당㈜</th>
									<td class="cet">보통주</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td class="cet">우선주</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
							</tbody>
							</table>
							<p>* 상기 년도는 실제 배당금이 지급되기 전의 사업년도를 의미합니다. </p>
						</div>
					</div>
				</div>
			</div>
<? include $path_include_prefix."inc/user_footer.inc"?>