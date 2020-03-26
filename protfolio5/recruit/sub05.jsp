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
							<li><a href="../recruit/sub03.jsp">R&D</a></li>
							<li><a href="../recruit/sub04.jsp">생산</a></li>
							<li class="on"><a href="../recruit/sub05.jsp">품질</a></li>
							<li><a href="../recruit/sub06.jsp">영업</a></li>
							<li><a href="../recruit/sub07.jsp">구매</a></li>
							<li><a href="../recruit/sub08.jsp">경영기획</a></li>
							<li class="barx"><a href="../recruit/sub09.jsp">경영지원</a></li>
						</ul>
						<ul class="mob_tab_box">
							<li class="mob_tab on"><a href="javascript:void(0);" class="mob_on">품질</a></li>
							<li><a href="../recruit/sub03.jsp">R&D</a></li>
							<li><a href="../recruit/sub04.jsp">생산</a></li>
							<li><a href="../recruit/sub06.jsp">영업</a></li>
							<li><a href="../recruit/sub07.jsp">구매</a></li>
							<li><a href="../recruit/sub08.jsp">경영기획</a></li>
							<li><a href="../recruit/sub09.jsp">경영지원</a></li>
						</ul>
					</div>
					<div class="job_list">
						<div class="job_img">
							<img src="../web/images/sub/job_img03.jpg" alt="직무소개 품질"/>
						</div>
						<div class="job_info">
							<h4><span>세부직무 소개</span></h4>
							<div class="job_box job_bg12">
								<h5>품질경영</h5>
								<p>전사 품질활동을 총괄하며 품질관련 국제규격을 기반으로 <span>품질개선 프로세스를 개발하고 표준화하는 업무를 </span>수행합니다.</p>
							</div>
							<div class="job_box job_bg13 job_box2">
								<h5>선행품질</h5>
								<p>신규 개발 아이템의 초기 품질 안정을 목적으로 하는 예방품질 업무로서 개발단계별 설계 사양 및 요구조건의 부합성을 검증하고 발생된 문제점을 개선하여 양산조기 품질을 안정화 시키는 업무를 수행합니다.
</p>
							</div>
							<div class="job_box job_bg14">
								<h5>품질관리</h5>
								<p>고객사에 공급된 당사 제품과 관련하여 발생한 품질문제를 <span>분석하고 개선하며 제조공정에서 발생할 수 있는 품질문제에 </span>대해 사전 예방하는 활동 등을 수행합니다.</p>
							</div>
							<div class="job_box job_bg15 job_box2">
								<h5>품질보증</h5>
								<p>고객이 요구하는 품질수준을 보증하고 지속적으로 검증하며 <span>필드 클레임 데이터를 분석하고 클레임 저감을 위한 활동을 </span>수행합니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>