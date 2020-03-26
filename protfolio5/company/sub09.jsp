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


    parameters.set("menu1", "1");
    parameters.set("menu2", "6");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
            <div class="top_title rel_title">
            <div class="top_txt">
                <dl>
                    <dt>관계사</dt>
						<dd>Relative</dd>
                </dl>
            </div>
            </div>
            <%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="rel_cont">
					<h3 class="sub_title emp_title"><span><span class="black2">유라코퍼레이션과 관계사들은</span> 서로 <strong>협력</strong>하며 <strong>시너지 효과</strong>를 내고 있습니다.</span></h3>
					<div class="rel_list">
						<div class="rel_box">
							<div class="rel_img">
								<img src="../web/images/sub/rel_img01.jpg" alt="유라하네스 건물이미지" class="web_img"/>
								<img src="../web/images/sub/rel_img01_t.jpg" alt="유라하네스 건물이미지" class="tab_img"/>
							</div>
							<div class="rel_txt">
								<dl>
									<dt><img src="../web/images/sub/rel_icon1.png" alt="유라하네스 로고"/></dt>
									<dd>1970년에 설립되어 유구한 역사와 함께한 유라하네스는 축적된 노하우를 바탕으로 자동차의 핵심 전장부품인 와이어링 하네스를 전문으로 생산하는 기업입니다. 제품 생산 전공정을 실시간 모니터링하는 최첨단 관리시스템을 적용하여 무결함 제품 공급에 총력을 기울이고 있으며 유라코퍼레이션의 와이어링 하네스 사업과 함께 좋은 시너지 효과를 내고 있습니다. 국내뿐 아니라 중국에 세 개의 공장을 운영 중인 유라하네스는, 내실 있는 자동차 전장품 기업으로서 그 전통을 계속 이어가고 있습니다. </dd>
								</dl>
								<p><span>주소</span>경기도 화성시 팔탄면 시청로 854</p>
								<a href="http://www.yuraharness.co.kr" target="_blank"><span>바로가기</span></a>
							</div>
						</div>
						<div class="rel_box">
							<div class="rel_img">
								<img src="../web/images/sub/rel_img02.jpg" alt="유라테크 건물이미지" class="web_img"/>
								<img src="../web/images/sub/rel_img02_t.jpg" alt="유라테크 건물이미지" class="tab_img"/>
							</div>
							<div class="rel_txt">
								<dl>
									<dt><img src="../web/images/sub/rel_icon2.png" alt="유라테크 로고"/></dt>
									<dd>유라테크는 스파크플러그, 이그니션코일 등 자동차 엔진점화용 부품 전문 제조기업입니다. 특히 독자기술 개발로 글로우플러그, 이그니션코일을 생산하고 있으며 제품 다각화를 통해 GRU(Glow Relay Coil), 배기온도센서 등을 공급하고 있습니다. 유라테크는 미래 전기자동차시대 도래에 대비하여 센서류 등 제품다변화에 연구개발 역량을 집중하고 있습니다. </dd>
								</dl>
								<p><span>주소</span>세종특별자치시 전동면 아래깊은내길 25</p>
								<a href="http://www.yuratech.co.kr"  ><span>바로가기</span></a>
							</div>
						</div>
						<div class="rel_box">
							<div class="rel_img">
								<img src="../web/images/sub/rel_img03.jpg" alt="유라 건물이미지" class="web_img"/>
								<img src="../web/images/sub/rel_img03_t.jpg" alt="유라 건물이미지" class="tab_img"/>
							</div>
							<div class="rel_txt">
								<dl>
									<dt><img src="../web/images/sub/rel_icon3.png" alt="유라 로고"/></dt>
									<dd>(주)유라는 자동차용 와이어링하네스 핵심소재인 전선, 커넥터, 릴레이 등을 생산합니다. 고전압 케이블, 충전 커플러 등 미래형 친환경 부품 개발에 전력을 다하고 있으며 특히 차세대 친환경 하이브리드 및 전기자동차용 고전압 커넥터 생산에 집중하고 있습니다. 또한 각종 제품 설계 및 제조공정 관리 시스템 개발 등 제조 기업을 위한 토탈 IT 솔루션을 자체개발하여 공급하고 있습니다.</dd>
								</dl>
								<p><span>주소</span>경기도 화성시 팔탄면 시청로 854</p>
								<!-- <a href="http://www.yurasolution.com" target="_blank"><span>바로가기</span></a> -->
							</div>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>