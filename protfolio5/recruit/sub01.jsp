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
    parameters.set("menu2", "1");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title rec_title">
				<div class="top_txt">
					<dl>
						<dt>인재상</dt>
						<dd>Talent</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="emp_cont">
					<h3 class="sub_title emp_title"><span><span><strong>기본</strong>에 충실하고 <strong>원칙</strong>을 지키며</span> <strong>도전정신</strong>으로 <strong>세계</strong>를 향해 나아갈 유라인을 기다립니다.</span></h3>
					<div class="rec_info">
						<div class="rec_box">
							<img src="../web/images/sub/rec_img01.png" alt="유라코퍼레이션 인재상" class="web_img"/>
							<img src="../web/images/sub/rec_img01_m.png" alt="유라코퍼레이션 인재상" class="tab_img"/>
							<div class="emp_txtbox">
								<dl class="emp_tit1">
									<dt>국제인 <span>International </span></dt>
									<dd>글로벌 마인드와 변화 감각, <span>외국어역량을 지닌 유라인</span></dd>
								</dl>
								<dl class="emp_tit2">
									<dt>실천인 <span>Practical</span></dt>
									<dd>근면 성실함을 바탕으로, <span>모든 일에 신속하고 적극적으로 도전하는 유라인</span></dd>
								</dl>
								<dl class="emp_tit3">
									<dt>전문인 <span>Professional</span></dt>
									<dd>기본과 원칙을 준수하고, <span>전문 지식과 기술을 갖춘 유라인</span></dd>
								</dl>
							</div>
						</div>
					</div>
					<div class="board_btn">
						<p>유라코퍼레이션은 기업철학을 이해하고 바른 인성을 갖춘 인재와 함께 성장해 나가고 있습니다. <span>국제적 역량을 갖고 맡은 바 임무를 충실히 해 나가는 전문인이 바로 유라코퍼레이션의 미래를 이끌어갈 인재입니다. </span></p>
						<button type="button" onclick="window.open('https://recruit.yura.co.kr/')"><span>채용공고 바로가기</span></button>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>