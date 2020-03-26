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


    parameters.set("menu1", "8");
    parameters.set("menu2", "1");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title mail_title">
				<div class="top_txt">
					<dl>
						<dt>이메일무단수집거부</dt>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="mail_cont">
					<p>본 웹사이트에 게시된 이메일주소가 전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 <span>무단으로 수집되는 것을 거부하며, 이를 <strong>위반 시 정보통신망법에 의해 형사처벌</strong>됨을 유념하시기 바랍니다.</span></p>
					<p>[게시일 : 2019년 1월 17일]</p>
				</div>
			</div>

<%@ include file="/inc/user_footer.jsp"%>