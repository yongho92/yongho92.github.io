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


    parameters.set("menu1", "7");
    parameters.set("menu2", "1");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title et_title">
				<div class="top_txt">
					<dl>
						<dt>사이트 맵</dt>
						<dd>Site Map</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="st_cont">
					<div class="st_menu st_menu1">
						<h4>회사소개</h4>
						<ul>
							<li><a href="/company/sub01.jsp">회사개요</a></li>
							<li><a href="/company/sub02.jsp">CEO 인사말</a></li>
							<li><a href="/company/sub03.jsp">비전/경영방침</a></li>
							<li><a href="/company/sub04.jsp">연혁</a></li>
							<li><a href="/company/sub07.jsp">글로벌 네트워크</a>
								<ul>
									<li><a href="/company/sub07.jsp">- 국내사업장</a></li>
									<li><a href="/company/sub08.jsp">- 해외사업장</a></li>
								</ul>
							</li>
							<li><a href="/company/sub09.jsp">관계사</a>
							</li>
						</ul>
					</div>
					<div class="st_menu">
						<h4>기술/제품</h4>
						<ul>
							<li><a href="/rnd/sub01.jsp">유라R&D센터</a></li>
							<li><a href="/rnd/sub02.jsp">와이어링 하네스</a></li>
							<li><a href="/rnd/sub03.jsp">전장제어모듈</a></li>
							<li><a href="/rnd/sub04.jsp">친환경차 부품</a></li>
						</ul>
					</div>
					<div class="st_menu st_menu3 st_menu4">
						<h4>지속가능경영</h4>
						<ul>
							<li><a href="/sustainability/sub01.jsp">품질경영</a></li>
							<li><a href="/sustainability/sub02.jsp">동반성장경영</a></li>
							<li><a href="/sustainability/sub03.jsp">친환경안전경영</a></li>
							<li><a href="/sustainability/sub04.jsp">윤리경영</a></li>
						</ul>
					</div>
					<div class="st_menu st_menu1 st_menu2 st_menu4">
						<h4>홍보센터</h4>
						<ul>
							<li><a href="/news/sub01.jsp">유라소식</a></li>
							<li><a href="/news/sub02.jsp">홍보자료</a>
								<ul>
									<li><a href="/news/sub02.jsp">- 브로슈어</a></li>
									<li><a href="/news/sub03.jsp">- 카달로그</a></li>
									<li><a href="/news/sub04.jsp">- 홍보영상</a></li>
								</ul>
							</li>
							<li><a href="/news/sub05.jsp">CI소개</a></li>
							<li><a href="/news/sub06.jsp">수상실적</a></li>
						</ul>
					</div>
					<div class="st_menu st_menu3 st_menu4">
						<h4>인재채용</h4>
						<ul>
							<li><a href="/recruit/sub01.jsp">인재상</a></li>
							<li><a href="/recruit/sub02.jsp">인사제도</a></li>
							<li><a href="/recruit/sub03.jsp">직무소개</a></li>
							<li><a href="https://recruit.yura.co.kr/" target="_blank">채용공고</a></li>
						</ul>
					</div>
					<div class="st_menu st_menu4">
						<h4>고객센터</h4>
						<ul>
							<li><a href="/customer/sub01.jsp">자주 묻는 질문</a></li>
							<li><a href="/customer/sub02.jsp">제품 다운로드</a></li>
							<li><a href="/customer/sub03.jsp">CONTACT US</a></li>
						</ul>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>