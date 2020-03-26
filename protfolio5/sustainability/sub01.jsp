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
    parameters.set("menu2", "1");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title qu_title">
				<div class="top_txt">
					<dl>
						<dt>품질경영</dt>
						<dd>Quality management</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="qu_cont">
					<h3 class="sub_title emp_title"><span><strong>'품질만이 살길이다'</strong>라는 <span>강한 신념으로 품질관리에 최선을 다하고 있습니다.</span></span></h3>
					<div class="qu_box1">
						<p class="po_txt">고객에게 완벽한 품질의 제품을 공급하기 위해 제품 설계에서 제조까지 전 과정의 품질을 최신 기법으로 관리하고 있으며 <span>전 임직원은 제품의 안전과 품질을 최우선으로 삼고 품질 강화를 위해 최선의 노력을 다하고 있습니다.</span></p>
						<div class="qu_sys">
							<img src="../web/images/sub/qu_img01.png" alt="품질경영 시스템 1.고객이 신뢰하는 글로벌 경영시스템 인증 취득 2.프론트 로딩 품질확보 활동 3.무결점 제품 공급을 위한 글로벌 실시간 품질 모니터링 시스템 운영 4.고객이 먼저 인정한 품질" class="web_img"/>
							<img src="../web/images/sub/qu_img01_m.png" alt="품질경영 시스템 1.고객이 신뢰하는 글로벌 경영시스템 인증 취득 2.프론트 로딩 품질확보 활동 3.무결점 제품 공급을 위한 글로벌 실시간 품질 모니터링 시스템 운영 4.고객이 먼저 인정한 품질" class="tab_img"/>
							<p class="qu_txt1 qu_txt">고객이 신뢰하는 <span>글로벌 경영시스템 인증 취득</span></p>
							<p class="qu_txt2 qu_txt">프론트 로딩 <span>품질확보 활동</span></p>
							<p class="qu_txt3 qu_txt">무결점 제품 공급을 위한 <span>글로벌 실시간 품질 모니터링</span> 시스템 운영</p>
							<p class="qu_txt4 qu_txt">고객이 먼저 <span>인정한 품질</span></p>
						</div>
					</div>
					<div class="qu_box qu_box2">
						<div class="qu_img">
							<img src="../web/images/sub/qu_img02.png" alt="IATF 16949(품질경영시스템)"/>
						</div>
						<div class="qu_tit">
							<dl>
								<dt><strong>01</strong><span class="left">고객이 신뢰하는 <span>글로벌 경영시스템 인증 취득</span></span></dt>
								<dd>유라코퍼레이션은 글로벌 경영시스템을 도입하여 지속 가능한 품질경영 활동을 하고 있으며, 자동차 산업의 모든 요구 사항과 세계 각 지역에서 요구하는 다양한 표준을 충족할 수 있는 품질력을 확보하고 있습니다. <span>또한, 유럽 자동차 OEM의 품질경영시스템에 대응하기 위한 전문 인력(VDA 6.3 심사원</span> 등)을 확보하여 고객이 신뢰할 수 있는 품질을 제공하고 있습니다.</dd>
							</dl>
						</div>
					</div>
					<div class="qu_box qu_box3">
						<div class="qu_img">
							<img src="../web/images/sub/qu_img03.png" alt="IATF 프론트 로딩 품질확보 활동"/>
						</div>
						<div class="qu_tit">
							<dl>
								<dt><strong>02</strong><span class="left">프론트 로딩 <span>품질확보 활동</span></span></dt>
								<dd>유라코퍼레이션의 품질관리는 제품 개발 단계에서부터 시작합니다.  첨단 소프트웨어 프로 그램을 활용하여 사전 시뮬레이션을 통해 설계상의 예상 문제점을 미리 분석하고 걸러 내는 <span>「프론트 로딩 설계」 기법을 적용하고 있습니다.</span> PROTO 전용라인을 운영하여 제품설계품질, 공정설계품질을 확인하고 있으며, PILOT 단계별 품질 확인회(Quality Gateway)를 실시하여 목표 만족 시 다음 단계로 통과시켜 양산품질을 조기에 확보하고 있습니다. </dd>
							</dl>
						</div>
					</div>
					<div class="qu_box">
						<div class="qu_tit">
							<dl>
								<dt><strong>03</strong><span class="left">무결점 제품 공급을 위한 <span>글로벌 실시간 품질 모니터링 시스템 운영</span></span></dt>
								<dd>유라코퍼레이션은 국내외 전체 사업장 공정상의 품질 상태를 실시간으로 모니터링하고 피드백 할 수 있는 YuraMESplus(통합제조실행시스템) , YBIS(종합정보관리시스템)을 운영함으로써 항상 균일한 품질을 유지하고 신속하게 품질을 개선하고 있습니다.</dd>
							</dl>
						</div>
						<div class="qu3_list">
							<div class="list_box list_box1">
								<p>01</p>
								<dl>
									<dt>Error Proof 품질관리 시스템 운영</dt>
									<dd>바코딩 시스템과 공정관리 시스템 등을 연계시켜 고객 요구사양에 맞지 않거나 작업 상태가 부적합한 공정상의 부품이 다음 과정으로 넘어가는 것을 원천적 으로 차단시키는 고도의 품질관리 시스템을 운영하고 있습니다. <span>유라코퍼레이션은 Error Proof 시스템을</span> 지속적으로 강화시켜 휴먼에러에 의한 불량 발생 가능성을 제로화하고자 최선의 노력을 다하고 있습니다.</dd>
								</dl>
							</div>
							<div class="list_box">
								<p>02</p>
								<dl>
									<dt>Lot 추적관리 시스템 운영</dt>
									<dd>유라코퍼레이션은 생산제품 중 부적합품이 발견될 경우, 생산 정보를 즉각 추적하여 동일 Lot 전체 제품 에 대해 부적합 유무를 신속하게 체크할 수 있는 Lot 추적관리 시스템을 운영하고 있습니다. </dd>
								</dl>
							</div>
							<div class="list_box">
								<p>03</p>
								<dl>
									<dt>Big Data 기반의 글로벌 <span>품질네트워크 구축 – Smart Factory</span></dt>
									<dd>유라코퍼레이션은 공장 내 생산 및 품질 관련 모든 데이터를 Big Data로 분석하며, 분석된 데이터들을 각종 시스템과 연동하여 최적화된 공정을 유지합니다. 유라코퍼레이션은 이러한 Big Data 기반의 Smart Factory 운영으로 국내외 모든 사업장에서 고객에게 일관성 있는 품질의 제품을 공급하고 있습니다. </dd>
								</dl>
							</div>
						</div>
					</div>
					<div class="qu_box qu_box3 qu_box4">
						<div class="qu_img">
							<img src="../web/images/sub/qu_img04.png" alt="품질 5 스타 인증패"/>
						</div>
						<div class="qu_tit">
							<dl>
								<dt><strong>04</strong><span class="left">고객이 먼저 <span>인정한 품질</span></span></dt>
								<dd>유라코퍼레이션은 지금까지 품질 최우선 경영방침 하에 무결함 품질을 향해 끊임없이 노력해 왔습니다. 이제 글로벌 유수한 메이저 OEM사들이 유라코퍼레이션의 품질 우수성을 인정 하고 있습니다. 앞으로도 유라코퍼레이션은 부단한 품질 혁신으로 고객이 신뢰할 수 있는 품질을 유지해 나가겠습니다. </dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>