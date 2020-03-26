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
							<li><a href="../recruit/sub05.jsp">품질</a></li>
							<li><a href="../recruit/sub06.jsp">영업</a></li>
							<li><a href="../recruit/sub07.jsp">구매</a></li>
							<li><a href="../recruit/sub08.jsp">경영기획</a></li>
							<li class="barx on"><a href="../recruit/sub09.jsp">경영지원</a></li>
						</ul>
						<ul class="mob_tab_box">
							<li class="mob_tab on"><a href="javascript:void(0);" class="mob_on">경영지원</a></li>
							<li><a href="../recruit/sub03.jsp">R&D</a></li>
							<li><a href="../recruit/sub04.jsp">생산</a></li>
							<li><a href="../recruit/sub05.jsp">품질</a></li>
							<li><a href="../recruit/sub06.jsp">영업</a></li>
							<li><a href="../recruit/sub07.jsp">구매</a></li>
							<li><a href="../recruit/sub08.jsp">경영기획</a></li>
						</ul>
					</div>
					<div class="job_list">
						<div class="job_img">
							<img src="../web/images/sub/job_img07.jpg" alt="직무소개 경영지원"/>
						</div>
						<div class="job_info">
							<h4><span>세부직무 소개</span></h4>
							<div class="job_box job_bg21">
								<h5>재무</h5>
								<p>회사 자금의 조달과 운용을 담당하고 결산업무 및 <span>경영진 의사결정에 필요한 재무제표 등의 장부를 작성합니다.</span></p>
							</div>
							<div class="job_box job_bg22 job_box2">
								<h5>인사</h5>
								<p>인력운영계획을 수립하고 우수한 인재를 채용하여 관리하며, <span>인재육성을 위한 교육 및 전환배치 등을 진행하는 등 </span>인적자원을 총괄하여 관리합니다.</p>
							</div>
							<div class="job_box job_bg23">
								<h5>총무</h5>
								<p>임직원들에게 최적의 근무환경을 제공하며 각종 복리후생 및 <span>대관업무, 유무형 자산 관리 등의 업무를 수행합니다.</span></p>
							</div>
							<div class="job_box job_bg24 job_box2">
								<h5>I T</h5>
								<p>그룹웨어 및 네트워크, 보안시스템 등을 관리하고 회사에 <span>필요한 IT시스템을 개발하며 회사의 발전을 위해 필요한 </span>IT 정책을 수립 및 시행하는 업무를 수행합니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>