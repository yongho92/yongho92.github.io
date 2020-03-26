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
							<li class="on"><a href="../recruit/sub08.jsp">경영기획</a></li>
							<li class="barx"><a href="../recruit/sub09.jsp">경영지원</a></li>
						</ul>
						<ul class="mob_tab_box">
							<li class="mob_tab on"><a href="javascript:void(0);" class="mob_on">경영기획</a></li>
							<li><a href="../recruit/sub03.jsp">R&D</a></li>
							<li><a href="../recruit/sub04.jsp">생산</a></li>
							<li><a href="../recruit/sub05.jsp">품질</a></li>
							<li><a href="../recruit/sub06.jsp">영업</a></li>
							<li><a href="../recruit/sub07.jsp">구매</a></li>
							<li><a href="../recruit/sub09.jsp">경영지원</a></li>
						</ul>
					</div>
					<div class="job_list">
						<div class="job_img">
							<img src="../web/images/sub/job_img06.jpg" alt="직무소개 경영기획"/>
						</div>
						<div class="job_info">
							<h4><span>세부직무 소개</span></h4>
							<div class="job_box job_bg20">
								<h5>경영기획</h5>
								<p>회사의 경영목표를 수립하고 이를 달성하기 위한 실행전략을 <span>수립/관리하며 예산을 담당하고 효율적인 조직운영을 통하여 </span>경영합리화를 수행하는 업무입니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>