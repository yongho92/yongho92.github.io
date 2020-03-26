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


    parameters.set("menu1", "4");
    parameters.set("menu2", "3");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title ci_title">
				<div class="top_txt">
					<dl>
						<dt>CI소개</dt>
						<dd>CI</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="ci_cont">
					<h3 class="sub_title"><span>유라코퍼레이션의 <strong>CI</strong>를 <strong>소개</strong>합니다.</span></h3>
					<div class="s_markbox">
						<div class="s_mark">
							<div class="ci_l">
								<h4><span>심볼마크</span></h4>
							</div>
							<div class="ci_r">
								<div class="ci_img ci_img1">
									<img src="../web/images/sub/ci_img01.png" alt="심볼마크"/>
								</div>
								<div class="ci_txt">
									<dl>
										<dt>심볼의 의미</dt>
										<dd>회사의 새로운 심볼마크와 로고는 YR YURA이며, YR은 YURA의 ‘Y’와 ‘R’의 이니셜을 결합한 것이다. ‘Y’는 하늘로 높이 치솟는 ‘새’를 상징하는 것으로 회사의 비상을 의미한다. 또한 ‘Y’의 빨강은 하늘, 태양, 열정을 의미하며, ‘R’의 검정은 땅, 세계, 패기를 상징한다.</dd>
									</dl>
								</div>
								<div class="downl">
									<button type="button" onclick="location.href='http://yura2018.biznetpia.co.kr/file/YURA_SYMBOL.zip'"><span>다운로드 (AI)</span></button>
									<button type="button" onclick="location.href='http://yura2018.biznetpia.co.kr/file/YURA_SYMBOL_jpg.zip'"><span>다운로드 (JPG)</span></button>
								</div>
							</div>
						</div>
						<div class="s_mark">
							<div class="ci_l">
								<h4 class="dn_txt">국문 로고<span>타입</span></h4>
							</div>
							<div class="ci_r">
								<div class="ci_img ci_img2">
									<img src="../web/images/sub/ci_img02.png" alt="국문 로고 타입" class="web_ci"/>
									<img src="../web/images/sub/ci_img06.png" alt="국문 로고 타입" class="tab_ci"/>
								</div>
							</div>
							<div class="ci_l">
								<h4 class="dn_txt dn_txt2">영문 로고<span>타입</span></h4>
							</div>
							<div class="ci_r">
								<div class="ci_img ci_img2">
									<img src="../web/images/sub/ci_img03.png" alt="영문 로고 타입" class="web_ci"/>
									<img src="../web/images/sub/ci_img07.png" alt="영문 로고 타입" class="tab_ci"/>
								</div>
								<div class="ci_txt">
									<p>유라코퍼레이션 심볼마크와 로고타입을 조합하여 하나의 심볼마크로 사용하는 것을 지칭.각종 어플리케이션에 대표적으로 사용하는 시그니춰로써 사용 시 마크와 국문로고의 비례규정을 정확히 준수한다.</p>
								</div>
								<div class="downl">
									<button type="button" onclick="location.href='http://yura2018.biznetpia.co.kr/file/YURA_CORPORATION_CI.zip'"><span>다운로드 (AI)</span></button>
									<button type="button" onclick="location.href='http://yura2018.biznetpia.co.kr/file/YURA_CORPORATION_CI_jpg.zip'"><span>다운로드 (JPG)</span></button>
								</div>
							</div>
						</div>
						<div class="s_mark">
							<div class="ci_l">
								<h4><span>컬러시스템</span></h4>
							</div>
							<div class="ci_r">
								<div class="point_c point_c2">
									<div class="point_img point_img1">
										<img src="../web/images/sub/ci_img04.png" alt="컬러시스템"/>
									</div>
									<div class="point">
										<h5>주색</h5>
										<div class="color_box">
											<img src="../web/images/sub/point_c1.jpg" alt="주색 cyan0%, magenta 100%, yellow 100%, block 0%"/>
											<ul>
												<li>Cyan 0%</li>
												<li>Magenta 100%</li>
												<li>Yellow 100%</li>
												<li>Black 0%</li>
											</ul>
										</div>
										<div class="color_box color_box2">
											<img src="../web/images/sub/point_c2.jpg" alt="주색 cyan0%, magenta 0%, yellow 0%, block 100%"/>
											<ul>
												<li>Cyan 0%</li>
												<li>Magenta 0%</li>
												<li>Yellow 0%</li>
												<li>Black 100%</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="point_c">
									<div class="point_img point_img2">
										<img src="../web/images/sub/ci_img05.png" alt="컬러시스템"/>
									</div>
									<div class="point">
										<h5>주색</h5>
										<div class="color_box">
											<img src="../web/images/sub/point_c3.jpg" alt="주색 cyan0%, magenta 100%, yellow 100%, block 20%"/>
											<ul>
												<li>Cyan 0%</li>
												<li>Magenta 100%</li>
												<li>Yellow 100%</li>
												<li>Black 20%</li>
											</ul>
										</div>
										<div class="color_box color_box2">
											<img src="../web/images/sub/point_c4.jpg" alt="주색 cyan0%, magenta 0%, yellow 0%, block 20%"/>
											<ul>
												<li>Cyan 0%</li>
												<li>Magenta 0%</li>
												<li>Yellow 0%</li>
												<li>Black 20%</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>