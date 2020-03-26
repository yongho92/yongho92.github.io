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

%>
<%@ include file="/inc/cn_user_header.jsp"%>
		<div class="top_title faq_title">
		</div>
			<div class="sub_cont">
				<div class="error error_cn">
					<dl>
						<dt>找不到您请求的页面。</dt>
						<dd>对由此给您带来的不便，我们深表歉意。<span>请转到主页并链接到相应页面以获取所需信息。</span></dd>
					</dl>
					<a href="#" title="메인으로 이동버튼"><span>移动至主页</span></a>
				</div>
			</div>


<%@ include file="/inc/cn_user_footer.jsp"%>