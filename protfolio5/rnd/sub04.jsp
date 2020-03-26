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


    parameters.set("menu1", "2");
    parameters.set("menu2", "4");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title cc_title">
				<div class="top_txt">
					<dl>
						<dt>친환경차 부품</dt>
						<dd>Eco-Friendly Car Parts</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="wh_cont">
					<h3 class="sub_title emp_title"><span><strong>친환경차(xEV)</strong>의 고전압 시스템에 사용되는 자동차 부품</span></h3>
					<div class="wh_list">
						<ul class="wh_tab cc_tab">
							<li><a href="javascript:void(0);">연료전지차 고전압 정션 블록</a></li>
							<li><a href="javascript:void(0);">전기차 고전압 정션 블록</a></li>
							<li><a href="javascript:void(0);">충전 인렛</a></li>
							<li><a href="javascript:void(0);">모터 3상 케이블</a></li>
							<li><a href="javascript:void(0);">HV  케이블</a></li>
							<li class="cc_mar"><a href="javascript:void(0);">In-Cable Control Box</a></li>
							<li><a href="javascript:void(0);">PLC Controller</a></li>
							<li><a href="javascript:void(0);">PRA</a></li>
						</ul>
						<div class="wh_img">
							<img src="../web/images/sub/cc_img09.jpg" alt="친환경차 부품 위치 이미지" class="web_img"/>
							<img src="../web/images/sub/cc_img09_t.jpg" alt="와이어링 하네스 부품 위치 이미지" class="tab_img"/>
							<ul class="wh_icon cc_icon">
								<li class="pa8">
								<p class="tit"><span>1.</span>연료전지차 고전압 정션 블록</p>
								<div class="wh_pan">
									<div class="wh_pa wh_pa1">
										<img src="../web/images/sub/cc_img01.jpg" alt="연료전지차 고전압 정션 블록"/>
										<p>연료전지차 고전압 정션 블록</p>
									</div>
								</div>
								</li>
								<li class="pa15">
								<p class="tit"><span>2.</span>전기차 고전압 정션 블록</p>
									<div class="wh_pa wh_pa4">
										<img src="../web/images/sub/cc_img08.jpg" alt="전기차 고전압 정션 블록"/>
										<p>전기차 고전압 정션 블록</p>
									</div>
								</li>
								<li class="pa14">
								<p class="tit"><span>3.</span>충전 인렛</p>
									<div class="wh_pa wh_pa4">
										<img src="../web/images/sub/cc_img07.jpg" alt="충전 인렛"/>
										<p>충전 인렛</p>
									</div>
								</li>
								<li class="pa9">
								<p class="tit"><span>4.</span>모터 3상 케이블</p>
									<div class="wh_pa">
										<img src="../web/images/sub/cc_img02.jpg" alt="모터 3상 케이블"/>
										<p>모터 3상 케이블</p>
									</div>
								</li>
								<li class="pa10">
								<p class="tit"><span>5.</span>HV  케이블</p>
									<div class="wh_pa wh_pa1">
										<img src="../web/images/sub/cc_img03.jpg" alt="HV  케이블"/>
										<p>HV  케이블</p>
									</div>
								</li>
								<li class="pa11">
								<p class="tit"><span>6.</span>In-Cable Control Box</p>
									<div class="wh_pa wh_pa4 wh_pa5">
										<img src="../web/images/sub/cc_img04.jpg" alt="In-Cable Control Box"/>
										<p>In-Cable Control Box</p>
									</div>
								</li>
								<li class="pa13">
								<p class="tit"><span>7.</span>PLC Controller</p>
									<div class="wh_pa wh_pa4">
										<img src="../web/images/sub/cc_img06.jpg" alt="PLC Controller"/>
										<p>PLC Controller</p>
									</div>
								</li>
								<li class="pa12">
								<p class="tit"><span>8.</span>PRA</p>
									<div class="wh_pa wh_pa4 wh_pa5">
										<img src="../web/images/sub/cc_img05.jpg" alt="PRA"/>
										<p>PRA</p>
									</div>
								</li>
							</ul>
							<ul class="wh_icon_box cc_icon_box">
								<li class="i1"><a href="javascript:void(0);"><img src="../web/images/sub/wh_btn.png" alt="연료전지차 고전압 정션 블록"/></a></li>
								<li class="i2"><a href="javascript:void(0);"><img src="../web/images/sub/wh_btn.png" alt="모터 3상 케이블"/></a></li>
								<li class="i3"><a href="javascript:void(0);"><img src="../web/images/sub/wh_btn.png" alt="HV  케이블"/></a></li>
								<li class="i4"><a href="javascript:void(0);"><img src="../web/images/sub/wh_btn.png" alt="In-Cable Control Box"/></a></li>
								<li class="i5"><a href="javascript:void(0);"><img src="../web/images/sub/wh_btn.png" alt="PRA"/></a></li>
								<li class="i6"><a href="javascript:void(0);"><img src="../web/images/sub/wh_btn.png" alt="PLC Controller"/></a></li>
								<li class="i7"><a href="javascript:void(0);"><img src="../web/images/sub/wh_btn.png" alt="충전 인렛"/></a></li>
								<li class="i8"><a href="javascript:void(0);"><img src="../web/images/sub/wh_btn.png" alt="전기차 고전압 정션 블록"/></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>