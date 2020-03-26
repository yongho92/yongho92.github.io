<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "4");
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
						<div class="cont_01 int_tit2">
							<h2><img src="../web/images/sub/title_55.png" alt="이사회 감사에 관란 사항"/></h2>
						</div>
						<div class="directors">
							<h3><img src="../web/images/sub/title_56.png" alt="이사회 현황"/></h3>
							<div class="dir_01">
								<dl class="list01">
									<dt>대표이사</dt>
									<dd>오세영</dd>
								</dl>
								<dl class="list02">
									<dt>선 &nbsp;임&nbsp; 일</dt>
									<dd>2009-06-16</dd>
								</dl>
								<dl class="list02">
									<dt>임&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기</dt>
									<dd>2021-03-29</dd>
								</dl>
								<dl class="list03">
									<dt>주요경력</dt>
									<dd>코오롱상사 근무</dd>
									<dd>코라오홀딩스 CEO</dd>
									<dd>코라오홀딩스 회장</dd>
								</dl>
							</div>
							<div class="dir_01 dir_02">
								<dl class="list01">
									<dt>대표이사</dt>
									<dd>이형승</dd>
								</dl>
								<dl class="list02">
									<dt>선 &nbsp;임&nbsp; 일</dt>
									<dd>2018-03-30</dd>
								</dl>
								<dl class="list02">
									<dt>임&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기</dt>
									<dd>2021-03-29</dd>
								</dl>
								<dl class="list03">
									<dt>주요경력</dt>
									<dd>서울대 행정학과 석사</dd>
									<dd>미시간주립대 경제학 박사</dd>
									<dd>재경부 서기관</dd>
									<dd>IBK 투자증권 대표이사</dd>
								</dl>
							</div>
							<div class="dir_01 dir_02">
								<dl class="list01">
									<dt>사내이사</dt>
									<dd>이춘승</dd>
								</dl>
								<dl class="list02">
									<dt>선 &nbsp;임&nbsp; 일</dt>
									<dd>2018-03-30</dd>
								</dl>
								<dl class="list02">
									<dt>임&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기</dt>
									<dd>2021-03-29</dd>
								</dl>
								<dl class="list03">
									<dt>주요경력</dt>
									<dd>코오롱상사 근무</dd>
									<dd>코라오홀딩스기획조정실장</dd>
									<dd>코라오홀딩스사장</dd>
								</dl>
							</div>
							<div class="dir_01 dir_02">
								<dl class="list01">
									<dt>사외이사</dt>
									<dd>김종배</dd>
								</dl>
								<dl class="list02">
									<dt>선 &nbsp;임&nbsp; 일</dt>
									<dd>2018-03-30</dd>
								</dl>
								<dl class="list02">
									<dt>임&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기</dt>
									<dd>2021-03-29</dd>
								</dl>
								<dl class="list03">
									<dt>주요경력</dt>
									<dd>연세대 경영학과</dd>
									<dd>연세대 경영학 박사</dd>
									<dd>단국대 경영학과 교수</dd>
									<dd>성신여대 사회과학대학 교수</dd>
								</dl>
							</div>
						</div>
						<div class="directors directors2">
							<h3><img src="../web/images/sub/title_57.png" alt="감사 현황"/></h3>
							<div class="dir_01">
								<dl class="list01">
									<dt>감사</dt>
									<dd>Phouvanh<br/>Phoutphong</dd>
								</dl>
								<dl class="list02">
									<dt>선 &nbsp;임&nbsp; 일</dt>
									<dd>2016-03-25</dd>
								</dl>
								<dl class="list02">
									<dt>임&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기</dt>
									<dd>2019-03-25</dd>
								</dl>
								<dl class="list03">
									<dt>주요경력</dt>
									<dd>Vientiane International Co., Ltd.</dd>
									<dd>공인회계사</dd>
								</dl>
							</div>
						</div>
					</div>
				</div>
			</div>
<? include $path_include_prefix."inc/user_footer.inc"?>
