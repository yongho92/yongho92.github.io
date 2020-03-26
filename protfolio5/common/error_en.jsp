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
<%@ include file="/inc/en_user_header.jsp"%>

		<div class="top_title faq_title">
		</div>
			<div class="sub_cont">
				<div class="error">
					<dl>
						<dt>The requested page is not found.</dt>
						<dd>We are sorry for the inconvenience you experience in using the service. <span>After you move to the main page, go to the page that has the information you want.</span></dd>
					</dl>
					<a href="#" title="메인으로 이동버튼"><span>Go to Main</span></a>
				</div>
			</div>

<%@ include file="/inc/en_user_footer.jsp"%>