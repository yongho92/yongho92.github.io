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



%>
<%@ include file="/inc/user_header.jsp"%>

		<div class="top_title faq_title">
		</div>
			<div class="sub_cont">
				<div class="error">
					<dl>
						<dt>요청하신 페이지를 찾을 수 없습니다.</dt>
						<dd>서비스 이용에 불편을 드려서 죄송합니다. <span>메인페이지로 이동 후 원하는 정보에 대한 페이지로 연결해 주시기 바랍니다.</span></dd>
					</dl>
					<a href="#" title="메인으로 이동버튼"><span>메인으로 가기</span></a>
				</div>
			</div>


<%@ include file="/inc/user_footer.jsp"%>