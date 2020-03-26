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
								<li class="bgo"><a href="sub06.jsp" class="on">2010's</a></li>
								<li class="bgx"><a href="sub07.jsp"><span>2000’s</span></a></li>
							</ul>
							<ul class="mob_tab_box">
								<li class="mob_tab on"><a href="javascript:void(0);" class="mob_on">2010년대</a></li>
								<li><a href="sub07.jsp">2000년대</a></li>
							</ul>
						</div>
						<div class="rec_box">
							<div class="rec_l">
<!-- 								<img src="../web/images/sub/res_img06.png" alt="10억불 수출의 탑 수상"/>
								<p>10억불 수출의 탑 수상</p> -->
							</div>
							<div class="rec_r">
								<h5><span>2018</span></h5>
								<table>
									<caption>2018년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">동반성장 DAY 종합평가 우수협력사</td>
											<td class="red">삼성 SDI</td>
										</tr>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">R&D 우수 협력사 특허역량 우수상</td>
											<td class="red">현대자동차그룹</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
								<img src="../web/images/sub/res_img06.png" alt="10억불 수출의 탑 수상"/>
								<p>10억불 수출의 탑 수상</p>
							</div>
							<div class="rec_r">
								<h5><span>2017</span></h5>
								<table>
									<caption>2017년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">10억불 수출의 탑 수상</td>
											<td class="red">제54회 무역의 날</td>
										</tr>
										<tr>
											<td class="raj">07.</td>
											<td class="cent">금탑산업훈장 수상</td>
											<td class="red">제3회 중견기업인의 날</td>
										</tr>
										<tr>
											<td class="raj">06.</td>
											<td class="cent">2016년 동반성장지수 평가 최우수 기업 선정</td>
											<td class="red">제 46차 동반성장위원회</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
								<img src="../web/images/sub/res_113001.png" alt="올해의 협력사 대상 수상"/>
								<p>올해의 협력사 대상 수상</p>
							</div>
							<div class="rec_r">
								<h5><span>2016</span></h5>
								<table>
									<caption>2016년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">06.</td>
											<td class="cent">2015년 동반성장지수 우수기업 선정</td>
											<td class="red">동반성장위원회</td>
										</tr>
										<tr>
											<td class="raj">02.</td>
											<td class="cent">품질우수상 </td>
											<td class="red">현대파워텍</td>
										</tr>
										<tr>
											<td class="raj">01.</td>
											<td class="cent">슬로박법인 현대기아 유럽공장 우수 협력사 수상 </td>
											<td class="red">체코현대차</td>
										</tr>
										<tr>
											<td class="raj">01.</td>
											<td class="cent">올해의 협력사 대상 수상</td>
											<td class="red">현대자동차그룹</td>
										</tr>
										<tr>
											<td class="raj">01.</td>
											<td class="cent">북경법인 2015년도 밀운개발국 납세 및 경제발전에 따른 공로상 수상</td>
											<td class="red">-</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
								<img src="../web/images/sub/res_113002.png" alt="슬로박법인 품질5스타 인증 획득"/>
								<p>슬로박법인 품질5스타<span>인증 획득</span></p>
							</div>
							<div class="rec_r">
								<h5><span>2015</span></h5>
								<table class="">
									<caption>2015년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">08.</td>
											<td class="cent"> ISO 26262 인증</td>
											<td class="red">TUV</td>
										</tr>
										<tr>
											<td class="raj">08.</td>
											<td class="cent">2015년 노사문화 우수기업 선정 </td>
											<td class="red">고용노동부</td>
										</tr>
										<tr>
											<td class="raj">07.</td>
											<td class="cent">종합인증우수업체 (AEO) 공인인증 획득</td>
											<td class="red">관세청</td>
										</tr>
										<tr>
											<td class="raj">05.</td>
											<td class="cent">슬로박법인 품질5스타 인증 획득</td>
											<td class="red">현대기아차</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
								<img src="../web/images/sub/res_113003.png" alt="2014 대한민국 경제리더 대상 지속가능경영부문 수상"/>
								<p>2014 대한민국 경제리더 대상<span>지속가능경영부문 수상</span></p>
							</div>
							<div class="rec_r">
								<h5><span>2014</span></h5>
								<table>
									<caption>2014년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">9억불 수출의 탑 수상</td>
											<td class="red">제51회 무역의 날</td>
										</tr>
										<tr>
											<td class="raj">10.</td>
											<td class="cent">2014 대한민국 경제리더 대상 지속가능경영부문 수상 </td>
											<td class="red">중앙일보</td>
										</tr>
										<tr>
											<td class="raj">09.</td>
											<td class="cent">산업혁신3.0 동반성장위원장 표창 수상</td>
											<td class="red">산업통상자원부</td>
										</tr>
										<tr>
											<td class="raj">03.</td>
											<td class="cent">슬로박법인 KMS 10주년 기념 감사패 수상</td>
											<td class="red">슬로박기아차</td>
										</tr>
										<tr>
											<td class="raj">03.</td>
											<td class="cent">러시아법인 품질5스타 인증 획득</td>
											<td class="red">현대기아차</td>
										</tr>
										<tr>
											<td class="raj">03.</td>
											<td class="cent">북경법인 OHSAS 18001:2007 인증 획득 </td>
											<td class="red">-</td>
										</tr>
										<tr>
											<td class="raj">01.</td>
											<td class="cent">보정법인 ISO/TS 16949 인증 획득 </td>
											<td class="red">-</td>
										</tr>
										<tr>
											<td class="raj">01.</td>
											<td class="cent">러시아법인 HMMR 올해의 품질 최우수법인 선정</td>
											<td class="red">러시아현대차</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
								<img src="../web/images/sub/res_113004.png" alt="8억불 수출의 탑 수상"/>
								<p>8억불 수출의 탑 수상</p>
							</div>
							<div class="rec_r">
								<h5><span>2013</span></h5>
								<table>
									<caption>2013년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">보정법인 안전생산표준화 기업 인증 </td>
											<td class="red">중국안전생산관리감독총국</td>
										</tr>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">8억불 수출의 탑 수상</td>
											<td class="red">제50회 무역의 날</td>
										</tr>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">품질 5+스타 인증 획득</td>
											<td class="red">현대기아차</td>
										</tr>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">OHSAS 18001:2007 인증 획득 </td>
											<td class="red">DNV 인증원</td>
										</tr>
										<tr>
											<td class="raj">09.</td>
											<td class="cent">러시아법인 ISO 14001인증, OSHAS 18001 인증 획득 </td>
											<td class="red">-</td>
										</tr>
										<tr>
											<td class="raj">07.</td>
											<td class="cent">벤처1조기업 수상</td>
											<td class="red">중소기업청</td>
										</tr>
										<tr>
											<td class="raj">03.</td>
											<td class="cent">러시아법인 ISO/TS 16949 인증 획득 </td>
											<td class="red">-</td>
										</tr>
										<tr>
											<td class="raj">01.</td>
											<td class="cent">러시아법인 우수 협력업체 선정</td>
											<td class="red">러시아현대차</td>
										</tr>
										<tr>
											<td class="raj">01.</td>
											<td class="cent">북경법인 납품관리 우수기업 선정</td>
											<td class="red">북경현대차</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
								<img src="../web/images/sub/res_113005.png" alt="2012 대한민국 지속가능경영 대상 수상"/>
								<p>2012 대한민국<span>지속가능경영 대상 수상</span></p>
							</div>
							<div class="rec_r">
								<h5><span>2012</span></h5>
								<table class="">
									<caption>2012년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">2012년 우수 협력사 수상</td>
											<td class="red">현대모비스</td>
										</tr>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">KOLAS(국제공인시험기관인증) 인증 획득</td>
											<td class="red">한국인정기구</td>
										</tr>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">2012년 대한민국 지속가능경영 대상 수상</td>
											<td class="red">기획재정부</td>
										</tr>
										<tr>
											<td class="raj">06.</td>
											<td class="cent">2012년 노사문화 우수기업 선정</td>
											<td class="red">고용노동부</td>
										</tr>
										<tr>
											<td class="raj">01.</td>
											<td class="cent">동반성장부문 올해의 협력사 수상</td>
											<td class="red">현대기아차</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
								<img src="../web/images/sub/res_113006.png" alt="2011 최우수 협력사 수상 현대 케피코"/>
								<p>2011 최우수 협력사 수상<span>현대 케피코</span></p>
							</div>
							<div class="rec_r">
								<h5><span>2011</span></h5>
								<table class="">
									<caption>2011년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">CMMI ML3 인증</td>
											<td class="red">ITQC</td>
										</tr>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">2011년 우수 협력사 수상</td>
											<td class="red">현대모비스</td>
										</tr>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">2011년 최우수 협력사 수상</td>
											<td class="red">현대 케피코</td>
										</tr>
										<tr>
											<td class="raj">11.</td>
											<td class="cent">6억불 수출의 탑 수상</td>
											<td class="red">제48회 무역의 날</td>
										</tr>
										<tr>
											<td class="raj">09.</td>
											<td class="cent">현대기아협력사 CAx 경연대회 전기전자부분 최우수상 수상</td>
											<td class="red">현대기아차</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="rec_box">
							<div class="rec_l">
								<img src="../web/images/sub/res_113007.png" alt="2010년도 고용창출 우수기업 선정"/>
								<p>2010년도 고용창출<span>우수기업 선정</span></p>
							</div>
							<div class="rec_r">
								<h5><span>2010</span></h5>
								<table class="">
									<caption>2010년 수상실적</caption>
									<tbody>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">2010 혁신경영부문 올해의 CEO 대상 수상</td>
											<td class="red">한국경제신문사</td>
										</tr>
										<tr>
											<td class="raj">12.</td>
											<td class="cent">2010년도 고용창출 우수기업 선정</td>
											<td class="red">고용노동부</td>
										</tr>
										<tr>
											<td class="raj">05.</td>
											<td class="cent">중국 북경법인 우수협력업체상 수상</td>
											<td class="red">북경현대차</td>
										</tr>
										<tr>
											<td class="raj">04.</td>
											<td class="cent">제43회 과학기술의 날 교육과학기술장관상 수상</td>
											<td class="red">한국산업진흥기술협회</td>
										</tr>
										<tr>
											<td class="raj">01.</td>
											<td class="cent">경영개선 부문 올해의 협력사 수상</td>
											<td class="red">현대기아차</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>