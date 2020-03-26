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


    parameters.set("menu1", "3");
    parameters.set("menu2", "4");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title et_title">
				<div class="top_txt">
					<dl>
						<dt>윤리경영</dt>
						<dd>Ethical management</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="et_cont">
					<h3 class="sub_title emp_title"><span>윤리경영 최고의 가치는 <strong>'투명과 원칙'</strong>입니다.</span></h3>
					<div class="et_box et_box1">
						<p>유라코퍼레이션은 ‘투명과 원칙’을 경영철학으로 삼고 윤리규범을 준수하고 있으며 <span>임직원과 이해관계자들이 공정하고 투명하게 업무를 수행할 수 있도록 최선을 다하고 있습니다.</span></p>
						<img src="../web/images/sub/et_img01.jpg" alt="윤리경영 최고의 가치는 '투명과 원칙'입니다."/>
					</div>
				</div>
			</div>
			<div class="et_box2">
				<div class="sub_cont">
					<div class="et_cont et_box3">
						<h4><span>윤리규범 제정</span></h4>
						<p>유라코퍼레이션은 건전한 기업윤리와 깨끗한 조직문화를 바탕으로 신기술 개발과 최고 품질의 실현을 위해 한 방향으로 노력할 때 국제사회에서 <span>존경과 신뢰를 받는 세계 초일류 기업이 될 수 있다는 믿음으로 윤리헌장, 윤리규정, 윤리강령을 제정 및 실천하고 있습니다.</span></p>
						<ul>
							<li class="barx">
								<dl>
									<dt>윤리헌장</dt>
									<dd><span>①</span> 기술혁신과 국가, 사회에 기여</dd>
									<dd><span>②</span> 고객 만족 및 협력사와의 상호성장</dd>
									<dd><span>③</span> 인간존중 및 인재육성</dd>
									<dd><span>④</span> 투명경영의 정착</dd>
								</dl>
								<button type="button" onclick="window.open('../file/윤리헌장.pdf')" onfocus="this.blur();"><span>윤리헌장 자세히 보기</span></button>
							</li>
							<li>
								<dl>
									<dt>윤리규정</dt>
									<dd><span>①</span> 총칙</dd>
									<dd><span>②</span> 윤리규정</dd>
									<dd><span>③</span> 규정위반에 대한 처리</dd>
								</dl>
								<button type="button" onfocus="this.blur();"onclick="window.open('../file/윤리규정.pdf')"><span>윤리규정 자세히 보기</span></button>
							</li>
							<li class="last">
								<dl>
									<dt>윤리강령</dt>
									<dd><span>①</span> 최고의 제품과 서비스 창출</dd>
									<dd><span>②</span> 고객중시</dd>
									<dd><span>③</span> 삶의 질 향상 선도</dd>
								</dl>
								<button type="button" onfocus="this.blur();"onclick="window.open('../file/윤리강령.pdf')"><span>윤리강령 자세히 보기</span></button>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="sub_cont">
				<div class="et_cont">
					<div class="et_box et_box4">
						<h4><span>사이버 감사실</span></h4>
						<p>당사 임직원의 비윤리적인 행위, 불공정 또는 불합리한 업무처리 등 개선이 필요한 사항에 대한 제보를 접수합니다. <span>투명, 윤리경영과 성숙한 상생 협력 관계 정착을 위하여 여러분의 적극적인 참여와 협조를 당부드립니다.</span> 제보하신 내용은 비공개로 처리되며, 실명 접수를 원칙으로 합니다. </p>
						<div class="et_num">
							<div class="et_tit">
								<p>제보처</p>
							</div>
							<div class="et_list">
								<ul>
									<li class="list1"><strong>이메일</strong><a href="mailto:jsy@yura.co.kr">jsy@yura.co.kr</a></li>
									<li class="list2"><strong>전<span>화</span></strong>070-7878-1010</li>
									<li class="list3"><strong>팩<span>스</span></strong>031-680-0837</li>
									<li class="list4"><strong>우<span>편</span></strong><em>(463-400) 경기도 성남시 분당구 판교로 308 유라R&D센터 감사실 상임감사</em></li>
								</ul>
							</div>
						</div>
						<div class="et_btn">
							<button type="button" onclick="location.href='sub05.jsp'">사이버 제보하기</button>
						</div>
					</div>
					<div class="et_box et_box5">
						<h4><span>제보대상</span></h4>
						<ul>
							<li class="opp_list1"><span>학연 지연에 의한 불공정한 거래 행위</span></li>
							<li class="opp_list2"><span>직원 오남용 및 청탁행위</span></li>
							<li class="opp_list3"><span>비리, 부당행위, 금품 및 향응 접대 수수 등 <strong>사회적 통념상 용인될 수 없는 행위</strong></span></li>
							<li class="opp_list4"><span>직장 내 성희롱 및 직원 상호 간의 품위손상 행위</span></li>
							<li class="opp_list5"><span>공정거래 관련 제도 개선 또는 법 위반 사항</span></li>
							<li class="opp_list6"><span>기타 윤리 실천강령에 위배되는 행위</span></li>
						</ul>
					</div>
					<div class="et_box et_box6">
						<h4><span>처리절차</span></h4>
						<ul>
							<li class="step1"><span>제보접수</span></li>
							<li class="step2"><span>내용확인 등록</span></li>
							<li class="step3"><span>조사개시</span></li>
							<li class="step4"><span>조사완료</span></li>
							<li class="step5"><span>종결</span></li>
							<li class="step6"><span>처리결과 확인</span></li>
						</ul>
					</div>
					<div class="et_box et_box7">
						<h4><span>제보자 보호 및 보복금지지침</span></h4>
						<p>유라코퍼레이션은 철저한 보안으로 제보자 보호에 책임을 다하겠습니다. <span>제보자에 대해서는 본인의 동의 없이 신분을 노출하거나 이를 암시하는 어떠한 정보도 공개하지 않으며, 불이익을 당하지 않도록 하겠습니다.</span><span> 또한 협력사가 보복금지지침에 해당하는 행위를 하였다는 이유로  수주기회를 제한하거나 거래의 정지, 기타 불이익을 주지 않습니다.</span></p>
						<div class="et_prot">
							<div class="et_l et_lr">
								<img src="../web/images/sub/et_img02.jpg" alt="보호대상"/>
								<dl>
									<dt>보호대상</dt>
									<dd>제보자 신분 </dd>
									<dd>제보자가 제시한 증거 또는 제보 관련 수집 정보 </dd>
									<dd>혐의 대상자를 암시할 수 있는 사항 </dd>
									<dd>제보 이후 결과 사후조치 등</dd>
								</dl>
							</div>
							<div class="et_l et_lr et_lcn">
								<img src="../web/images/sub/et_img03.jpg" alt="보호정책"/>
								<dl>
									<dt>보호정책</dt>
									<dd>제보자 및 제보 내용은 대외비로 처리되며,<span> 제보 시스템은 안전한 보안체계로 보호됩니다.</span></dd>
									<dd>제보 처리는 제보 내용에 대한 엄격한 비밀준수를<span> 서약한 제한된 인원에 의해 수행됩니다.</span></dd>
									<dd>제보자에 대한 불이익 처분 또는 처벌이 발생하지 <span>않도록 하겠습니다.</span></dd>
									<dd>본인 관련된 부정/비리를 제보할 경우,<span> 충분한 정상참작을 통하여 처리됩니다.</span></dd>
								</dl>
							</div>
							<div class="et_l et_lr">
								<img src="../web/images/sub/et_img04.jpg" alt="보복금지지침"/>
								<dl>
									<dt>보복금지지침</dt>
									<dd>당사가 공정거래 관련법규를 위반하였음을 관계기관<span> 등에 신고한 경우</span></dd>
									<dd>당사와의 거래관계 분쟁조정 협의 및 조정을 신청한<span> 경우</span></dd>
									<dd>당사가 운영하는 '제보하기 운영' 에 대한 문제제기한<span> 경우</span></dd>
								</dl>
							</div>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>