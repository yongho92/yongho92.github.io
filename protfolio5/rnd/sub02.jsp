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
    parameters.set("menu2", "2");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title wh_title">
				<div class="top_txt">
					<dl>
						<dt>와이어링 하네스</dt>
						<dd>Wiring Harness</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="wh_cont">
					<h3 class="sub_title emp_title"><span>자동차 내 모든 전장품을 작동하는데 필요한 <span><strong>전원을 공급</strong>하고 <strong>전기 신호를 각 전자제어 모듈</strong>에 전달 해주는 배선</span></span></h3>
					<div class="wh_list">
						<ul class="wh_tab">
							<li><a href="javascript:void(0);">메인 와이어링 하네스</a></li>
							<li><a href="javascript:void(0);">프론트 와이어링 하네스</a></li>
							<li><a href="javascript:void(0);">컨트롤 와이어링 하네스</a></li>
							<li><a href="javascript:void(0);">플로어 와이어링 하네스</a></li>
							<li><a href="javascript:void(0);">도어 와이어링 하네스</a></li>
							<li><a href="javascript:void(0);">루프 와이어링 하네스</a></li>
						</ul>
						<div class="wh_img">
							<img src="../web/images/sub/wh_img01.jpg" alt="와이어링 하네스 부품 위치 이미지" class="web_img"/>
							<img src="../web/images/sub/wh_img01_t.jpg" alt="와이어링 하네스 부품 위치 이미지" class="tab_img"/>
							<ul class="wh_icon">
								<li class="pa1">
								<p class="tit"><span>1.</span>프론트 와이어링 하네스, 엔진룸 정션블록 </p>
								<div class="wh_pan">
									<div class="wh_pa wh_pa1">
										<img src="../web/images/sub/wh_img02.jpg" alt="1.IP 정션블록"/>
										<p>IP 정션블록</p>
									</div>
									<div class="wh_pa wh_pa1 wh_pa2">
										<img src="../web/images/sub/wh_img03.jpg" alt="2.메인 와이어링 하네스"/>
										<p>메인 와이어링 하네스</p>
									</div>
								</div>
								</li>
								<li class="pa2">
								<p class="tit"><span>2.</span>컨트롤 와이어링 하네스, FPCB 하네스</p>
									<div class="wh_pa">
										<img src="../web/images/sub/wh_img05.jpg" alt="1.프론트 와이어링 하네스"/>
										<p>프론트 와이어링 하네스</p>
									</div>
									<div class="wh_pa wh_pa3">
										<img src="../web/images/sub/wh_img07.jpg" alt="2.엔진룸 정션블록"/>
										<p>엔진룸 정션블록</p>
									</div>
								</li>
								<li class="pa3">
								<p class="tit"><span>3.</span>IP 정션블록, 메인 와이어링 하네스</p>
									<div class="wh_pa wh_pa1">
										<img src="../web/images/sub/wh_img09.jpg" alt="1.컨트롤 와이어링 하네스"/>
										<p>컨트롤 와이어링 하네스</p>
									</div>
									<div class="wh_pa wh_pa1 wh_pa2">
										<img src="../web/images/sub/wh_img10.jpg" alt=" 2.FPCB 하네스"/>
										<p>FPCB 하네스</p>
									</div>
								</li>
								<li class="pa4">
								<p class="tit"><span>4.</span>플로어 와이어링 하네스</p>
									<div class="wh_pa wh_pa4 wh_pa5">
										<img src="../web/images/sub/wh_img08.jpg" alt="1.플로어 와이어링 하네스"/>
										<p>플로어 와이어링 하네스</p>
									</div>
								</li>
								<li class="pa5">
								<p class="tit"><span>5.</span>도어 와이어링 하네스</p>
									<div class="wh_pa wh_pa4 wh_pa5">
										<img src="../web/images/sub/wh_img06.jpg" alt="1.도어 와이어링 하네스"/>
										<p>도어 와이어링 하네스</p>
									</div>
								</li>
								<li class="pa6">
								<p class="tit"><span>6.</span>루프 와이어링 하네스</p>
									<div class="wh_pa wh_pa4">
										<img src="../web/images/sub/wh_img04.jpg" alt="1.루프 와이어링 하네스"/>
										<p>루프 와이어링 하네스</p>
									</div>
								</li>
							</ul>
							<ul class="wh_icon_box">
								<li class="i1"><a href="javascript:void(0);"><img src="../web/images/sub/wh_btn.png" alt="1.IP 정션블록, 2.메인 와이어링 하네스 위치보기"/></a></li>
								<li class="i2"><a href="javascript:void(0);"><img src="../web/images/sub/wh_btn.png" alt="1.프론트 와이어링 하네스, 2.엔진룸 정션블록 위치보기"/></a></li>
								<li class="i3"><a href="javascript:void(0);"><img src="../web/images/sub/wh_btn.png" alt="1.컨트롤 와이어링 하네스, 2.FPCB 하네스 위치보기"/></a></li>
								<li class="i4"><a href="javascript:void(0);"><img src="../web/images/sub/wh_btn.png" alt="1.플로어 와이어링 하네스 위치보기"/></a></li>
								<li class="i5"><a href="javascript:void(0);"><img src="../web/images/sub/wh_btn.png" alt="1.도어 와이어링 하네스 위치보기"/></a></li>
								<li class="i6"><a href="javascript:void(0);"><img src="../web/images/sub/wh_btn.png" alt="1.루프 와이어링 하네스 위치보기"/></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>