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
    parameters.set("menu2", "3");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title ec_title">
				<div class="top_txt">
					<dl>
						<dt>전장제어모듈</dt>
						<dd>Electronic Control Modules</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="ec_cont">
					<h3 class="sub_title emp_title"><span><strong>통신 및 편의 기능을 </strong>을 관장하는 차량 전기∙전자 제어 모듈</span></h3>
					<div class="ec_box ec_box1">
						<h4><span>승용</span></h4>
						<div class="ec_img">
							<img src="../web/images/sub/ec_img01.jpg" alt="승용 전기/전자 제어 모듈 전체이미지 1.SJB 2.IGPM 3.ICU" class="web_img"/>
							<img src="../web/images/sub/ec_img01_t.jpg" alt="승용 전기/전자 제어 모듈 전체이미지 1.SJB 2.IGPM 3.ICU" class="tab_img"/>
						</div>
						<ul>
							<li class="ec1">
								<p class="tit"><span>1.</span>SJB, IGPM, ICU</p>
								<div class="ec_pan">
									<div class="ec_pa ec_pa1">
										<img src="../web/images/sub/ec_img03.jpg" alt="SJB"/>
										<p>SJB</p>
									</div>
									<div class="ec_pa ec_pa1">
										<img src="../web/images/sub/ec_img04.jpg" alt="IGPM"/>
										<p>IGPM</p>
									</div>
									<div class="ec_pa ec_pa1 ec_pa2">
										<img src="../web/images/sub/ec_img05.jpg" alt="ICU"/>
										<p>ICU</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="ec_box ec_box2">
						<h4><span>상용</span></h4>
						<img src="../web/images/sub/ec_img02.jpg" alt="상용 전기/전자 제어 모듈 전체이미지 1.제어/통신 통합 모듈 2.스마트키 시스템 3.Wi-Fi DTG 4.VCU"  class="web_img"/>
						<img src="../web/images/sub/ec_img02_t.jpg" alt="상용 전기/전자 제어 모듈 전체이미지 1.제어/통신 통합 모듈 2.스마트키 시스템 3.Wi-Fi DTG 4.VCU" class="tab_img"/>
						<img src="../web/images/sub/ec_img02_m.jpg" alt="상용 전기/전자 제어 모듈 전체이미지 1.제어/통신 통합 모듈 2.스마트키 시스템 3.Wi-Fi DTG 4.VCU" class="mob_img"/>
						<ul>
							<li class="ec2">
								<p class="tit"><span>1.</span>제어/통신 통합 모듈</p>
								<div class="ec_pan">
									<div class="ec_pa ec_pa1">
										<img src="../web/images/sub/ec_img06.jpg" alt="제어/통신 통합 모듈"/>
										<p>제어/통신 통합 모듈</p>
									</div>
								</div>
							</li>
							<li class="ec3">
								<p class="tit"><span>2.</span>스마트키 시스템</p>
								<div class="ec_pan">
									<div class="ec_pa ec_pa1">
										<img src="../web/images/sub/ec_img07.jpg" alt="스마트키 시스템"/>
										<p>스마트키 시스템</p>
									</div>
								</div>
							</li>
							<li class="ec4">
								<p class="tit"><span>3.</span>Wi-Fi DTG</p>
								<div class="ec_pan">
									<div class="ec_pa ec_pa1">
										<img src="../web/images/sub/ec_img08.jpg" alt="Wi-Fi DTG"/>
										<p>Wi-Fi DTG</p>
									</div>
								</div>
							</li>
							<li class="ec5">
								<p class="tit"><span>4.</span>VCU</p>
								<div class="ec_pan">
									<div class="ec_pa ec_pa1">
										<img src="../web/images/sub/ec_img09.jpg" alt="VCU"/>
										<p>VCU</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>