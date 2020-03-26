<%@ page
    contentType="text/html; charset=utf-8"
    import="java.util.*,
            biznetpia.common.manager.*,
            biznetpia.fw.log.Log,
            biznetpia.fw.entity.*,
            biznetpia.fw.dao.*,biznetpia.fw.util.*,
            java.io.File"
%>
<%@ include file="/inc/init.jsp"%>
<%
    dbConnect();
    String now = StringUtils.getToday2();
    String ip = request.getRemoteAddr();

    StringBuilder sql = new StringBuilder();


    parameters.set("menu1", "4");
    parameters.set("menu2", "4");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title awd_title">
				<div class="top_txt">
					<dl>
						<dt>수상실적</dt>
						<dd>Awards</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="rec_cont">
					<h3 class="sub_title"><span>유라코퍼레이션의 <span class="mob_db">다양한 <strong>수상실적</strong>을 소개합니다.</span></span></h3>
					<div class="rec_list">
						<div class="rec_tab">
							<ul>
								<li class="bgo"><a href="sub06.jsp">2010's</a></li>
								<li class="bgx"><a href="sub07.jsp" class="on"><span>2000’s</span></a></li>
							</ul>
							<ul class="mob_tab_box">
								<li class="mob_tab on"><a href="javascript:void(0);" class="mob_on">2000년대</a></li>
								<li><a href="sub06.jsp">2010년대</a></li>
							</ul>
						</div>
						<div class="rec_box rec_box2">
							<div class="rec_l">
								<img src="../web/images/sub/res_img08.png" alt="제35회 국가품질경영대회 한국품질대상 수상"/>
								<p>제35회 국가품질경영대회<span>한국품질대상 수상</span></p>
							</div>
							<div class="rec_r">
								<h5><span>2009</span></h5>
								<table>
									<caption>2009년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">제35회 국가품질경영대회 한국품질대상 수상</td>
											<td class="red">지식경제부</td>
										</tr>
										<tr>
											<td class="raj">07.</td>
											<td class="cent">2009년 노사문화 우수기업 선정</td>
											<td class="red">노동부</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box rec_box2">
							<div class="rec_l">
								<img src="../web/images/sub/res_img09.png" alt="최우수 협력사 수상"/>
								<p>최우수 협력사 수상</p>
							</div>
							<div class="rec_r">
								<h5><span>2008</span></h5>
								<table>
									<caption>2008년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">최우수 협력사 수상</td>
											<td class="red">현대모비스</td>
										</tr>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">제34회 국가품질경영대회 품질 분임조 금상, 은상 수상</td>
											<td class="red">지식경제부</td>
										</tr>
										<tr>
											<td class="raj">08.</td>
											<td class="cent">중국 위해공장 경제발전 특별공로상 수상</td>
											<td class="red">-</td>
										</tr>
										<tr>
											<td class="raj">01.</td>
											<td class="cent">품질부문 올해의 협력사 수상</td>
											<td class="red">현대기아차</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
								<!-- <img src="../web/images/sub/res_img02.png" alt="노사문화 우수기업 선정 고용노동부"/>
								<p>노사문화 우수기업 선정<span>고용노동부</span></p> -->
							</div>
							<div class="rec_r">
								<h5><span>2007</span></h5>
								<table class="">
									<caption>2007년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">2007년 우수 협력사 수상</td>
											<td class="red">현대모비스</td>
										</tr>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">3억불 수출의 탑 수상</td>
											<td class="red">제44회 무역의 날</td>
										</tr>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">제33회 국가품질경영대회 품질 분임조 금상, 동상 수상</td>
											<td class="red">산업자원부</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box ">
							<div class="rec_l">
								<img src="../web/images/sub/res_img10.png" alt="품질5스타인증패"/>
								<p>품질5스타인증패</p>
							</div>
							<div class="rec_r">
								<h5><span>2006</span></h5>
								<table>
									<caption>2006년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">최우수 협력사 수상</td>
											<td class="red">현대모비스</td>
										</tr>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">제32회 국가품질경영대회 품질경영상 수상</td>
											<td class="red">산업자원부</td>
										</tr>
										<tr>
											<td class="raj">05.</td>
											<td class="cent">국제표준시스템경영상 품질경영 부분 대상 수상</td>
											<td class="red">한국표준협회</td>
										</tr>
										<tr>
											<td class="raj">01.</td>
											<td class="cent">한마음운동 최우수상 수상</td>
											<td class="red">현대기아차</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
								<img src="../web/images/sub/res_img11.png" alt="올해의 협력사 대상 수상"/>
								<p>올해의 협력사 대상 수상</p>
							</div>
							<div class="rec_r">
								<h5><span>2005</span></h5>
								<table>
									<caption>2005년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">노사문화 대상 우수기업 수상</td>
											<td class="red">노동부</td>
										</tr>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">우수 협력사 수상</td>
											<td class="red">현대모비스</td>
										</tr>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">제31회 국가품질경영대회 품질유공자부분 금탑산업훈장 수훈 </td>
											<td class="red">행정자치부</td>
										</tr>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">제31회 국가품질경영대회 품질분임조 금상, 동상 수상</td>
											<td class="red">산업자원부</td>
										</tr>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">직업능력개발 우수기업 대통령 표창장 수상 </td>
											<td class="red">행정자치부</td>
										</tr>
										<tr>
											<td class="raj">05.</td>
											<td class="cent">국제표준시스템경영상 품질경영시스템부문 대상 수상</td>
											<td class="red">한국표준협회</td>
										</tr>
										<tr>
											<td class="raj">05.</td>
											<td class="cent">제11회 싱글PPM 품질혁신 전진대회 싱글PPM 품질혁신상 수상</td>
											<td class="red">중소기업청</td>
										</tr>
										<tr>
											<td class="raj">04.</td>
											<td class="cent">2005 산업안전경영대상 수상</td>
											<td class="red">한국경제신문사</td>
										</tr>
										<tr>
											<td class="raj">02.</td>
											<td class="cent">한마음운동 최우수상 수상</td>
											<td class="red">현대기아차</td>
										</tr>
										<tr>
											<td class="raj">02.</td>
											<td class="cent">올해의 협력사 대상 수상</td>
											<td class="red">현대기아차</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
								<img src="../web/images/sub/res_img12.png" alt="신기술으뜸상 대상 수상"/>
								<p>신기술으뜸상 대상 수상</p>
							</div>
							<div class="rec_r">
								<h5><span>2004</span></h5>
								<table class="">
									<caption>2004년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">우수 협력사 수상</td>
											<td class="red">현대모비스</td>
										</tr>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">2억불 수출의 탑 수상</td>
											<td class="red">제41회 무역의 날</td>
										</tr>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">제30회 국가품질경영대회 현장분임조 금상, 식스시그마 분임조 동상 수상</td>
											<td class="red">산업자원부</td>
										</tr>
										<tr>
											<td class="raj">06.</td>
											<td class="cent">2004년 충청북도 품질경영대회 우수상 수상</td>
											<td class="red">충청북도</td>
										</tr>
										<tr>
											<td class="raj">05.</td>
											<td class="cent">제10회 싱글PPM 품질혁신 전진대회 싱글PPM 대통령상 수상</td>
											<td class="red">중소기업청</td>
										</tr>
										<tr>
											<td class="raj">05.</td>
											<td class="cent">신기술으뜸상 대상 수상</td>
											<td class="red">한국표준협회</td>
										</tr>
										<tr>
											<td class="raj">02.</td>
											<td class="cent">올해의 협력사 경영개선부분 우수상 수상</td>
											<td class="red">현대기아차</td>
										</tr>
										<tr>
											<td class="raj">02.</td>
											<td class="cent">2003년 한마음운동 우수 협력사 수상</td>
											<td class="red">현대기아차</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box rec_box2">
							<div class="rec_l">
								<img src="../web/images/sub/res_img13.png" alt="제29회 국가품질경영대회 식스시그마 혁신상 대통령상 수상"/>
								<p>제29회 국가품질경영대회<span>식스시그마 혁신상 대통령상 수상</span></p>
							</div>
							<div class="rec_r">
								<h5><span>2003</span></h5>
								<table class="">
									<caption>2003년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">제1회 자동차부품산업대상 현대기아차 회장상 수상</td>
											<td class="red">KAP</td>
										</tr>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">2003년 우수 협력사 수상</td>
											<td class="red">현대모비스</td>
										</tr>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">1억불 수출의 탑 수상</td>
											<td class="red">제40회 무역의 날</td>
										</tr>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">제29회 국가품질경영대회 식스시그마 혁신상 대통령상 수상</td>
											<td class="red">산업자원부</td>
										</tr>
										<tr>
											<td class="raj">06.</td>
											<td class="cent">국제표준시스템 경영상 수상</td>
											<td class="red">한국표준협회</td>
										</tr>
										<tr>
											<td class="raj">06.</td>
											<td class="cent">중국 북경공장 우수업체 수상</td>
											<td class="red">북경현대차</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
<!-- 								<img src="../web/images/sub/res_img07.png" alt="경영개선 부문 올해의 협력사 수상"/>
								<p>경영개선 부문<span>올해의 협력사 수상</span></p> -->
							</div>
							<div class="rec_r">
								<h5><span>2002</span></h5>
								<table class="">
									<caption>2002년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">5,000만불 수출의 탑 수상</td>
											<td class="red">제39회 무역의 날</td>
										</tr>
										<tr>
											<td class="raj">09.</td>
											<td class="cent">신노사문화 우수기업 선정</td>
											<td class="red">노동부</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
<!-- 								<img src="../web/images/sub/res_img07.png" alt="경영개선 부문 올해의 협력사 수상"/>
								<p>경영개선 부문<span>올해의 협력사 수상</span></p> -->
							</div>
							<div class="rec_r">
								<h5><span>2001</span></h5>
								<table class="barb">
									<caption>2001년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">3,000만불 수출의 탑 수상</td>
											<td class="red">제38회 무역의 날</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
<!-- 								<img src="../web/images/sub/res_img07.png" alt="경영개선 부문 올해의 협력사 수상"/>
								<p>경영개선 부문<span>올해의 협력사 수상</span></p> -->
							</div>
							<div class="rec_r">
								<h5><span>2000</span></h5>
								<table class="">
									<caption>2000년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">06.</td>
											<td class="cent">우수중소기업인 표창 수상</td>
											<td class="red">제39회 무역의 날</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
<!-- 								<img src="../web/images/sub/res_img07.png" alt="경영개선 부문 올해의 협력사 수상"/>
								<p>경영개선 부문<span>올해의 협력사 수상</span></p> -->
							</div>
							<div class="rec_r">
								<h5><span>1999</span></h5>
								<table class="barb">
									<caption>1999년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">01.</td>
											<td class="cent">기술경쟁력 우수기업 선정</td>
											<td class="red">중소기업청</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>