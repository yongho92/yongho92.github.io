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
    parameters.set("menu2", "1");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
            <div class="top_title comp_title">
            <div class="top_txt">
                <dl>
                    <dt>회사개요</dt>
                    <dd>Company Overview</dd>
                </dl>
            </div>
            </div>
            <%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="comp_cont">
					<h3 class="sub_title emp_title"><span><span>글로벌 메이저 전장부품사인 <strong>유라코퍼레이션</strong>은 </span> 이제 <strong>친환경 자동차 핵심전장부품 개발</strong>을 선도하고 있습니다 .</span></h3>
					<div class="comp_info">
						<div class="comp_top">
							<div class="comp_img">
								<img src="../web/images/sub/comp_img01.jpg" alt="유라코퍼레이션 소개" class="web_img"/>
								<img src="../web/images/sub/comp_img01_t.jpg" alt="유라코퍼레이션 소개" class="tab_img"/>
							</div>
							<div class="comp_txt">
								<p>유라코퍼레이션은 자동차의 배선시스템인 <strong>와이어링 하네스, ICU 등의 각종 전장 제어모듈</strong>을 설계 개발하는 <strong>자동차 전장부품 전문기업</strong>입니다. </p>
								<p>1993년 설립된 유라코퍼레이션은 2002년에 국내 동종업계에서 가장 오랜 역사를 가진 와이어링 하네스 기업을 인수하여 양사의 연구소를 통합함으로써 1970년이래 축적된 기술력과 노하우를 고스란히 이어 받아 더욱 발전시켜 나가고 있습니다.</p>
								<p><strong>“원칙과 투명” 의 경영철학</strong> 아래 창업 초기부터 품질혁신에 매진함과 동시에 과감한 기술개발 투자를 통해 독자적인 기술력을 확보함으로써 고객의 신뢰를 쌓아 왔습니다. </p>
								<p>2002년 중국시장 진출을 시작으로 본격적인 글로벌 경영을 펼친 유라코퍼레이션은 유럽, 북미, 아시아 등 세계 곳곳으로 뻗어나가 현재 국내외 14개국에 20개법인, 46개 사업장의 글로벌 네트워크를 갖추고 글로벌 자동차 전장부품 전문기업으로서의 위치를 확고히 다지고 있습니다.</p>
								<p>현재 유라코퍼레이션은 기존 전장부품의 영역을 확대하여 고전압 커넥터, 고전압 정션블록, 충전커플러 등 친환경 전장부품 분야를 선도하고 있습니다.<span>4차 산업 혁명 시대에 발맞춰 친환경 전기차, 자율주행차, 커넥티드 자동차 등 미래자동차의 핵심기술 개발에 더욱 박차를 가하고 있는 유라코퍼레이션은 최고의 경쟁력을 갖춘 미래자동차 선두 부품 메이커로서 고객의 든든한 동반자 역할을 해 나갈 것입니다. </span></p>
							</div>
						</div>
						<div class="comp_bot">
							<ul>
								<li class="t_list"><strong>기<span class="le_txt1">업</span>명</strong>유라코퍼레이션</li>
								<li><strong>대표이사</strong>엄대열</li>
								<li class="t_list"><strong>업<span class="le_txt2">종</span></strong>제조업</li>
								<li><strong>생산제품</strong>자동차용 전장부품</li>
								<li class="t_list"><strong>주고객사</strong>현대기아자동차</li>
								<li><strong>주<span class="le_txt2">소</span></strong>경기도 성남시 분당구 판교로 308</li>
							</ul>
						</div>
					</div>
					<div class="comp_prod">
						<h4><span>생산제품</span></h4>
						<p>유라코퍼레이션에서 생산하는 핵심 제품을 소개합니다.</p>
						<div class="prod_lst">
							<div class="prod_box">
								<div class="prod_img">
									<img src="../web/images/sub/comp_img02.jpg" alt="와이어 하네스"/>
								</div>
								<div class="prod_txt">
									<dl>
										<dt>와이어링 하네스<span>Wiring Harness</span></dt>
										<dd>자동차 내 모든 전장품을 작동하는데 필요한 전원을 <span>공급하고 전기 신호를 각 전자제어 모듈에 전달해주는 배선</span></dd>
									</dl>
									<a href="/rnd/sub02.jsp">자세히 보기</a>
								</div>
							</div>
							<div class="prod_box prod_box2">
								<div class="prod_img">
									<img src="../web/images/sub/comp_img03.jpg" alt="전장 제어 모듈"/>
								</div>
								<div class="prod_txt">
									<dl>
										<dt>전장제어모듈<span>Electronic Control Modules</span></dt>
										<dd>통신 및 편의 기능을 관장하는 차량 전기∙전자 제어 모듈</dd>
									</dl>
									<a href="/rnd/sub03.jsp">자세히 보기</a>
								</div>
							</div>
							<div class="prod_box">
								<div class="prod_img">
									<img src="../web/images/sub/comp_img04.jpg" alt="친환경 차 부품"/>
								</div>
								<div class="prod_txt">
									<dl>
										<dt>친환경차 부품<span>Eco-Friendly Parts</span></dt>
										<dd>친환경차(xEV)의 고전압 시스템에 사용되는 자동차 부품</dd>
									</dl>
									<a href="/rnd/sub04.jsp">자세히 보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

<%@ include file="/inc/user_footer.jsp"%>