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
    parameters.set("menu2", "2");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title hm_title">
				<div class="top_txt">
					<dl>
						<dt>인사제도</dt>
						<dd>Human Resources Management</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="hm_cont">
					<h3 class="sub_title emp_title"><span><span>유라코퍼레이션은 임직원의 <strong>창의와 자율을 존중</strong>하며</span> <strong>공정하고 투명</strong>한 인사제도를 실천합니다.</span></h3>
					<div class="hm_top">
						<img src="../web/images/sub/rec_img03.png" alt="유라코퍼레이션은 임직원의 창의와 자율을 존중하며 공정하고 투명한 인사제도를 실천합니다."/>
					</div>
					<div class="hm_box1 hm_box">
						<h4><span>승진제도</span></h4>
						<p>승진발탁제도 : 업무성과와 역량이 우수한 직원은 명부순위에 관계없이 과감한 발탁인사를 시행합니다.</p>
						<img src="../web/images/sub/rec_img02.png" alt="직급체계:사원-주임-대리-과장-차장-부장 순서" class="web_img"/>
						<h5>직급체계</h5>
						<img src="../web/images/sub/rec_img02_m.png" alt="직급체계:사원-주임-대리-과장-차장-부장 순서" class="tab_img"/>
					</div>
				</div>
			</div>
			<div class="hm_box2 hm_box">
				<div class="hm_app">
					<div class="hm_appbox  hm_appl">
						<h4><span>인사평가</span></h4>
						<div class="hm_applist hm_applist1">
							<dl>
								<dt>평가구분</dt>
								<dd>업적 년 1회(BSC관점의 KPI관리) 역량 년 2회 (상/하반기)<span>평가를 실시하여 객관적이고 체계적인 평가를 진행합니다.</span></dd>
							</dl>
						</div>
						<div class="hm_applist hm_applist2">
							<dl>
								<dt>다면평가제도</dt>
								<dd>상사의 일방 평가를 보완하고 평가의 공정성, 객관성, 신뢰성을 <span>확보하기 위해 360도 다면평가 방식으로 운영합니다.</span></dd>
							</dl>
						</div>
						<div class="hm_applist hm_applist3">
							<dl>
								<dt>코칭 피드백제도</dt>
								<dd>직원의 잠재된 가능성을 성장시키고 평가에 대한 <span>신뢰성을 높이기 위해 운영합니다.</span></dd>
							</dl>
						</div>
					</div>
					<div class="hm_appbox hm_appr">
						<h4><span>인재육성</span></h4>
						<div class="hm_applist hm_applist4">
							<dl>
								<dt>경력개발 제도</dt>
								<dd>필요직무를 체계적으로 습득하고 관리하여<span>전문가가 될 수 있도록 지원합니다.</span></dd>
							</dl>
						</div>
						<div class="hm_applist hm_applist5">
							<dl>
								<dt>사내공모제도</dt>
								<dd>사내 우수한 인원이 다양한 분야에서 <span>도전이 가능하도록 지원합니다.</span></dd>
							</dl>
						</div>
						<div class="hm_applist hm_applist6">
							<dl>
								<dt>해외주재원 육성</dt>
								<dd>14개국 24,000여명에 이르는 글로벌 유라 가족과 함께 <span>다양한 문화와 상호존중을 배울 수 있습니다.</span></dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
			<div class="sub_cont hm_box3 hm_box">
				<h4><span>복리후생</span></h4>
				<div class="hm_comp hm_comp1">
					<img src="../web/images/sub/rec_img04.jpg" alt="복리후생 자녀학자금 지원"/>
					<p class="comp1">자녀학자금 지원</p>
				</div>
				<div class="hm_comp">
					<img src="../web/images/sub/rec_img05.jpg" alt="복리후생 다양한 포상제도"/>
					<p class="comp2">다양한 포상제도</p>
				</div>
				<div class="hm_comp hm_comp2">
					<img src="../web/images/sub/rec_img06.jpg" alt="복리후생 사내콘도 운영"/>
					<p class="comp3">사내콘도 운영</p>
				</div>
				<div class="hm_comp">
					<img src="../web/images/sub/rec_img07.jpg" alt="복리후생 리프레쉬 휴가"/>
					<p class="comp4">리프레쉬 휴가</p>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>