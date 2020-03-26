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


    parameters.set("menu1", "5");
    parameters.set("menu2", "3");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title job_title">
				<div class="top_txt">
					<dl>
						<dt>직무소개</dt>
						<dd>Job introduction</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="job_cont">
					<h3 class="sub_title emp_title"><span><span>다양한 분야에서 <strong>내일의 꿈</strong>을 키우는</span> 유라인의 직무를 소개합니다.</span></h3>
					<div class="job_tab cust_tab">
						<ul>
							<li class="on"><a href="../recruit/sub03.jsp">R&D</a></li>
							<li><a href="../recruit/sub04.jsp">생산</a></li>
							<li><a href="../recruit/sub05.jsp">품질</a></li>
							<li><a href="../recruit/sub06.jsp">영업</a></li>
							<li><a href="../recruit/sub07.jsp">구매</a></li>
							<li><a href="../recruit/sub08.jsp">경영기획</a></li>
							<li class="barx"><a href="../recruit/sub09.jsp">경영지원</a></li>
						</ul>
						<ul class="mob_tab_box">
							<li class="mob_tab on"><a href="javascript:void(0);" class="mob_on">R&D</a></li>
							<li><a href="../recruit/sub04.jsp">생산</a></li>
							<li><a href="../recruit/sub05.jsp">품질</a></li>
							<li><a href="../recruit/sub06.jsp">영업</a></li>
							<li><a href="../recruit/sub07.jsp">구매</a></li>
							<li><a href="../recruit/sub08.jsp">경영기획</a></li>
							<li><a href="../recruit/sub09.jsp">경영지원</a></li>
						</ul>
					</div>
					<div class="job_list">
						<div class="job_img">
							<img src="../web/images/sub/job_img01.jpg" alt="직무소개 R&D"/>
						</div>
						<div class="job_info">
							<h4><span>세부직무 소개</span></h4>
							<div class="job_box job_bg1">
								<h5>연구기획</h5>
								<p>R&D부문의 사업계획을 수립하며 자동차 부품업계의 기술 <span>동향을 분석하여 신규 아이템의 개발전략을 수립하고</span> 특허를 관리하는 등의 업무를 수행합니다.</p>
							</div>
							<div class="job_box job_bg2 job_box2">
								<h5>선행개발</h5>
								<p>고객사의 요구에 따라 새로운 기술을 개발하는 직무로 시장의 <span>니즈 및 기술동향을 분석하여 설계 및 검증을 수행하는 등의 </span>업무를 수행합니다.</p>
							</div>
							<div class="job_box job_bg3">
								<h5>설계 (하네스)</h5>
								<p>당사의 주력제품인 와이어링하네스를 설계하는 업무입니다.</p>
							</div>
							<div class="job_box job_bg5 job_box2">
								<h5>전장품 설계</h5>
								<p><span class="job_0103">시스팀 설계, 하드웨어(PCB, 회로 등) 설계 및 임베디드 소프트웨어 설계 업무를 수행합니다.</span> <span>CATIA를 활용한 도면설계(2D) 및 기구설계(3D) 업무를 </span>수행합니다.</p>
							</div>
							<div class="job_box job_bg6">
								<h5>전장품 검증</h5>
								<p>소프트웨어 단위, 통합 및 기능 검증 업무를 수행합니다. </p>
							</div>
							<div class="job_box job_bg7 job_box2">
								<h5>시험평가</h5>
								<p>제품의 신뢰성 확보를 위하여 온도, 내구성, 전자파 등의 <span>각종 시험을 수행하고 설계기준에 적합한지 여부를 판단하는 </span>업무입니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>