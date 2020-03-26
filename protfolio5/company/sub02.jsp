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
    parameters.set("menu2", "2");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
            <div class="top_title ceo_title">
            <div class="top_txt">
                <dl>
                    <dt>CEO 인사말</dt>
                    <dd>CEO's Message</dd>
                </dl>
            </div>
            </div>
            <%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="ceo_cont">
					<h3 class="sub_title emp_title"><span>CEO's Message</span></h3>
					<div class="ceo_img">
						<img src="../web/images/sub/ceo_img.jpg" alt="미래자동차의 최전선, 유라코퍼레이션이 맡겠습니다." class="web_img"/>
						<img src="../web/images/sub/ceo_img_t.jpg" alt="미래자동차의 최전선, 유라코퍼레이션이 맡겠습니다." class="tab_img"/>
					</div>
					<div class="ceo_txt">
						<p>‘4차 산업혁명’이 본격화 되고 있는 가운데 미래자동차 시대가 열리고 있습니다. </p>
						<p>친환경, 스마트, 커넥티드카로 대변되는 미래자동차는 각종 첨단기술과 시스템의 집약체입니다. 더 많은 통신 및 제어 기능이 필요한 만큼 고도의 전장품 비중이 높아지게 됩니다. </p>
						<p>유라코퍼레이션은 그 동안 적극적인 선행기술 투자로 <strong>미래자동차 핵심부품 개발</strong>에 전념해 왔습니다. 탄탄한 기술력과 품질관리 능력을 바탕으로, 기존 자동차 전장부품의 영역을 꾸준히 확대하고 있습니다.
 </p>
						<p>세계 14개국에 진출한 글로벌 기업 유라코퍼레이션은 현재 유수의 글로벌 완성차 업체들에 제품을 공급하고 있습니다. 설계부터 완제품 출고까지 전 공정의 품질을 최신 기법으로 관리하는 유라코퍼레이션은 앞으로도 경쟁력 있는 제품을 제공하여 고객의 미래가치를 실현하는데 기여해 나갈 것을 약속 드립니다. </p>
						<p>이제 유라코퍼레이션은 미래자동차 시대를 대비하여 큰 재도약을 준비하고 있습니다. <strong>멈추지 않는 도전과 혁신으로 미래자동차 핵심 부품 기술 개발을 통해 고객의 든든한 동반자가 되겠습니다.</strong> 인류가 더욱 안전하고 더 큰 편의를 누릴 수 있도록, 유라코퍼레이션이 꿈의 자동차시대를 앞당기겠습니다. </p>
						<p>감사합니다.</p>
						<div class="ceo_sign">
							<p class="sign"><img src="../web/images/sub/ceo_sign.jpg" alt="유라코퍼레이션 대표이사 엄대열"/></p>
							<p class="ceo">Yura Corporation CEO<strong>엄 대 열</strong></p>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>