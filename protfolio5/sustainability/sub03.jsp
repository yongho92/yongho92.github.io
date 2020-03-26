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
    parameters.set("menu2", "3");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title eco_title">
				<div class="top_txt">
					<dl>
						<dt>친환경안전경영</dt>
						<dd>Eco-friendly safety management</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="eco_cont">
					<h3 class="sub_title emp_title"><span>환경·안전·보건 국제인증규격을 <span>기준으로 <strong>무재해, 친환경 사업장</strong>을 만들어 나갑니다.</span></span></h3>
					<div class="eco_box1">
						<p>유라코퍼레이션은 직원뿐 아니라 협력업체, 지역사회와 더불어 환경을 보호하고 안전을 확보하기 위해 최선을 다하고 있습니다. <span>환경·안전·보건 통합경영시스템 구축과 체계적인 운영 관리를 실천하고 있으며 해외 사업장에서도 환경안전 경영활동을 전개하고 있습니다.</span></p>
						<img src="../web/images/sub/eco_img01.jpg" alt="친환경안전경영"/>
					</div>
					<div class="eco_box eco_box2">
						<h4><span>환경/안전보건 방침</span></h4>
						<p>유라코퍼레이션 전 임직원은 모든 업무영역에서 환경안전보건을 최우선으로 추구하기 위하여 다음의 방침을 실천할 것입니다.</p>
						<img src="../web/images/sub/eco_img02.jpg" alt="환경/안전보건 방침 1.제품의 구매, 설계, 개발, 생산, 운송, 폐기 등 사업활동 전 과정에서 환경안전보건을 우선적으로 고려한다. 2.환경안전보건 제반 법규와 국제 협약을 준수하고 기본 원칙을 철저하게 준수하는 조직문화를 정착시킨다. 3.자원과 에너지 절약을 통하여 온실가스 감축을 통한 지구환경보전에 앞장선다. 4.사업장 내 잠재적 유해·위험성을 발굴하여 사전 제거하는 선제적 예방활동으로 안전하고 쾌적한 사업장을 조성한다. 5.환경/안전보건경영시스템 성과를 관리하고 지속적 개선 활동 및 교육훈련을 추진하여 관리 수준을 향상시킨다. 유라코퍼레이션 대표이사 엄대열" class="web_img"/>
						<img src="../web/images/sub/eco_img02_m.jpg" alt="환경/안전보건 방침 1.제품의 구매, 설계, 개발, 생산, 운송, 폐기 등 사업활동 전 과정에서 환경안전보건을 우선적으로 고려한다. 2.환경안전보건 제반 법규와 국제 협약을 준수하고 기본 원칙을 철저하게 준수하는 조직문화를 정착시킨다. 3.자원과 에너지 절약을 통하여 온실가스 감축을 통한 지구환경보전에 앞장선다. 4.사업장 내 잠재적 유해·위험성을 발굴하여 사전 제거하는 선제적 예방활동으로 안전하고 쾌적한 사업장을 조성한다. 5.환경/안전보건경영시스템 성과를 관리하고 지속적 개선 활동 및 교육훈련을 추진하여 관리 수준을 향상시킨다. 유라코퍼레이션 대표이사 엄대열" class="mob_img"/>
					</div>
					<div class="eco_box eco_box3">
						<h4><span>친환경안전경영 활동</span></h4>
						<ul class="eco_img">
							<li class="backx"><img src="../web/images/sub/eco_img03.jpg" alt="친환경안전경영 활동 이미지1"/></li>
							<li class="maro backx"><img src="../web/images/sub/eco_img04.jpg" alt="친환경안전경영 활동 이미지2"/></li>
							<li><img src="../web/images/sub/eco_img05.jpg" alt="친환경안전경영 활동 이미지3"/></li>
						</ul>
						<ul class="eco_list">
							<li>
								<div class="eco_tit">
									<h5><span>01</span>국제 인증규격 획득</h5>
								</div>
								<div class="eco_txt">
									<p>유라코퍼레이션은 매년 환경안전보건 목표 및 세부과제를 선정하고 관리하고 있으며 관련 이슈를 전 직원, 사업장 및 협력사와 공유하여 개선하고 있습니다. 현재 본사를 비롯한 국내외 사업장에서 OHSAS 18001(안전보건경영시스템 국제표준)과 ISO 14001(환경경영시스템 국제표준)을 취득하였으며 전 제조 사업장으로 인증 범위를 확대해 나가고 있습니다.</p>
								</div>
							</li>
							<li>
								<div class="eco_tit">
									<h5><span>02</span>환경안전보건 법규 준수</h5>
								</div>
								<div class="eco_txt">
									<p>유라코퍼레이션은 국내외 환경안전보건 법규 및 규정을 준수하며 지속적인 모니터링을 통해 재 개정되는 법규에 선제적으로 대응하고 있습니다. 또한 발생 가능한 배출원의 환경 측면과 영향에 대한 사전 분석을 통해 환경오염 예방관리에 힘쓰고 있습니다. </p>
								</div>
							</li>
							<li>
								<div class="eco_tit">
									<h5><span>03</span>위험성 평가 실시</h5>
								</div>
								<div class="eco_txt">
									<p>유라코퍼레이션은 각종 위험성 평가를 주기적으로 실시함으로써 유해, 위험요인을 발굴 관리하여 전 직원들이 안전하고 쾌적한 환경에서 근무할 수 있도록 안전 경영에 주력하고 있습니다.</p>
									<p class="ceo_txtimg"><img src="../web/images/sub/eco_img06.png" alt="위험성 평가 실시에는 현장 위험요소 관리 체계화, 직원 건강관리체계 정립, 환경정책 선제적 대응, 화학물질 위험성 평가 등이 있습니다." class="web_img"/><img src="../web/images/sub/eco_img06_t.png" alt="위험성 평가 실시에는 현장 위험요소 관리 체계화, 직원 건강관리체계 정립, 환경정책 선제적 대응, 화학물질 위험성 평가 등이 있습니다." class="tab_img"/><img src="../web/images/sub/eco_img06_m.png" alt="위험성 평가 실시에는 현장 위험요소 관리 체계화, 직원 건강관리체계 정립, 환경정책 선제적 대응, 화학물질 위험성 평가 등이 있습니다." class="mob_img"/></p>
								</div>
							</li>
							<li>
								<div class="eco_tit">
									<h5><span>04</span>안전문화 형성</h5>
								</div>
								<div class="eco_txt">
									<p>유라코퍼레이션은 체계적인 환경안전보건 교육훈련을 주기적으로 실시하여 직원들의 인식 강화 및 역량 확보에 집중하고 있습니다. 직원뿐 아니라 고객, 협력사, 지역사회 등과의 의사소통을 통해 올바른 정보를 제공하고 안전문화를 형성하고 있습니다. </p>
									<p class="ceo_txtimg"><img src="../web/images/sub/eco_img07.png" alt="안전문화 형성에는 안전 수칙 준수 정착, 직원 안전교육 체계 정립, 협력사 안전체계 구축, 산업안전 위원회(분기별) 등이 있습니다." class="web_img"/><img src="../web/images/sub/eco_img07_t.png" alt="안전문화 형성에는 안전 수칙 준수 정착, 직원 안전교육 체계 정립, 협력사 안전체계 구축, 산업안전 위원회(분기별) 등이 있습니다." class="tab_img"/><img src="../web/images/sub/eco_img07_m.png" alt="안전문화 형성에는 안전 수칙 준수 정착, 직원 안전교육 체계 정립, 협력사 안전체계 구축, 산업안전 위원회(분기별) 등이 있습니다." class="mob_img"/></p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>