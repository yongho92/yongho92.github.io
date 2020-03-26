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


    parameters.set("menu1", "5");
    parameters.set("menu2", "4");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title ment_title">
				<div class="top_txt">
					<dl>
						<dt>채용공고</dt>
						<dd>RECRUIT MENT</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="rec_ment">
					<div class="ment_view">
						<div class="view_tit">
							<strong>경력</strong>
							<h3>자동차 부품 생산직 사원 모집<span>채용기간 2018-09-10 ~ 2018-10-12</span></h3>

						</div>

						<div class="view_img">
							<img src="../web/images/sub/ment_view.jpg" alt="평택청북공장 자동차 부품 생산직 사원 모집"/>
						</div>
						<div class="next_txt">


							<p class="txt_bor"><span class="t_next">다음글</span><a href="#">2018년 상반기 대졸신입인턴 모집 </a></p>

							<p><span class="t_prev">이전글 </span><a href="#">2018년 대졸신입인턴 모집 </a></p>

						</div>
						<div class="view_list">
							<a href="#"><span>목록</span></a>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>