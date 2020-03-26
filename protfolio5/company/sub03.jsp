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
    parameters.set("menu2", "3");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
            <div class="top_title vi_title">
            <div class="top_txt">
                <dl>
                    <dt>비전/경영방침</dt>
                    <dd>Vision/philosophy</dd>
                </dl>
            </div>
            </div>
            <%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="vi_cont">
					<h3 class="sub_title emp_title"><span>비전</span></h3>
					<div class="vi_box1">
						<img src="../web/images/sub/vi_img01.jpg" alt="미래친환경 자동차 저장부품 기술을 선도하는 기업. 미션:고객감동 경영 핵심가치:1.신기술 개발 2.글로벌 경쟁력 확보 3.인재경영 4.품질강화"/>
					</div>
					<div class="vi_box2">
						<h3 class="sub_title emp_title"><span>경영방침</span></h3>
						<div class="vi_txt">
							<p class="v_txt1">더 빨리, 더 좋게</p>
							<p class="v_txt2">Faster & Better</p>
						</div>
						<p class="v_txt3">“더 빨리”는 생산성과 업무 효율성을 높이자는 의미이며, <span>“더 좋게”는 더 좋은 품질을 뜻합니다. 즉, 생산성과 효율성을 높여 납기(Delivery)와 비용(Cost)을 개선시키면서</span> 동시에 고품질(Quality)를 추구하자는 것으로 유라코퍼레이션 경영목표인  Q, C, D 향상 의지를 담고 있습니다.</p>
					</div>
				</div>
			</div>
			<div class="vi_box3">
				<div class="sub_cont">
					<h3 class="sub_title emp_title"><span>사훈</span></h3>
					<div class="vi_mot">
						<img src="../web/images/sub/vi_img02.png" alt="유라코퍼레이션 사훈:나라사랑,회사사랑,인류사랑"/>
					</div>
				</div>
			</div>
			<div class="sub_cont">
				<div class="vi_box4">
					<h3 class="sub_title emp_title"><span>캐치프레이즈</span></h3>
					<div class="vi_cat">
						<p><span class="cat1">技術</span>유라 <span class="mar">품질<span class="cat2">裕羅</span></span></p>
					</div>
					<div class="cat_list">
						<div class="cat_box">
							<dl>
								<dt><span class="cat3">技術</span>유라</dt>
								<dd>사람, 안전, 환경을 고려한 자동차 핵심부품의 연구개발과, 제조기술의 <span>혁신을 통해 자동차 부품업계의 글로벌 리더로 도약하겠다는 </span>우리의 다짐 입니다.</dd>
							</dl>
						</div>
						<div class="cat_box cat_box2">
							<dl>
								<dt>품질<span class="cat4">裕羅</span></dt>
								<dd>전 임직원은 투명성과 원칙 준수를 바탕으로<span> 고객이 신뢰할 수 있는 무결점 품질의 제품을 공급하겠다는</span> 우리의 다짐 입니다.</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>