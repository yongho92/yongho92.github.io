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


    parameters.set("menu1", "6");
    parameters.set("menu2", "3");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>

function map10(w, h)
{
    var map = new naver.maps.Map('naverMap10', {
        center: new naver.maps.LatLng(37.4027215,127.10804089999999),
        zoom: 10,
        size : new naver.maps.Size(w, h)
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(37.4027215,127.10804089999999),
        map: map
    });
}

function fw_domReady()
{
    var w, h;
    w = $(".map_img").width();
    h = $('.map_img').height();

    map10(w, h);


    $(window).resize(function() {
        w = $(".map_img").width();
        h = $('.map_img').height();

        map10(w, h);
    });
}
</script>
			<div class="top_title cont_title">
				<div class="top_txt">
					<dl>
						<dt>CONTACT US</dt>
						<dd></dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="cont_map">
					<div class="map_top">
						<h3 class="sub_title"><span>오시는 길</span></h3>
						<div class="map_info">
							<p><span class="m_add">주소 : 경기도 성남시 분당구 판교로 308  </span></p>
							<p class="fol"><span class="m_tel">Tel : 070-7878-1000</span></p>
							<p class="fol fol2"><span class="m_mail">E-mail : contact@yuracorp.co.kr</span></p>
						</div>
					</div>
					<div class="map_img">
						<!-- <div id="naverMap" style="width:100%; height:450px;"></div> -->
						<div id="naverMap10" class="n_map2"></div>
					</div>
					<div class="map_per">
						<div class="per_list">
							<h5>홍보담당자</h5>
							<ul>
								<li class="li_w"><strong>성명</strong>송지숙</li>
								<li><strong>전화번호</strong>070-7878-1043</li>
								<li><strong class="mail">이메일</strong>sjs215035@yura.co.kr</li>
								<li class="li_w"><strong>직위</strong>과장</li>
								<li class="li_w"><strong>소속</strong>경영기획실</li>
							</ul>
						</div>
						<div class="per_list marl">
							<h5>인재채용 담당자</h5>
							<ul>
								<li class="li_w"><strong>성명</strong>인재채용 담당자</li>
								<!-- <li><strong>전화번호</strong>070-7878-1438</li> -->
								<li><strong class="mail">이메일</strong>recruit@yura.co.kr</li>
								<!-- <li class="li_w"><strong>직위</strong>과장</li> -->
								<li class="li_w"><strong>소속</strong>인사관리팀</li>
							</ul>
						</div>
						<div class="per_list">
							<h5>DTG 담당자</h5>
							<ul>
								<li class="li_w"><strong>성명</strong>오석환</li>
								<li><strong>전화번호</strong>070-7878-3864</li>
								<li><strong class="mail">이메일</strong>shoh090@yura.co.kr</li>
								<li class="li_w"><strong>직위</strong>과장</li>
								<li class="li_w"><strong>소속</strong>전장품질관리팀</li>
							</ul>
						</div>
<!-- 						<div class="per_list marl">
							<h5>DTG 담당자</h5>
							<ul>
								<li class="li_w"><strong>성명</strong>오승철</li>
								<li><strong>전화번호</strong>070-7878-3959</li>
								<li class="li_w"><strong>소속</strong>평택영업관리팀</li>
								<li><strong class="mail">이메일</strong>scoh@yura.co.kr</li>
								<li class="li_w"><strong>직위</strong>과장</li>
							</ul>
						</div> -->
						<div class="per_list marl">
							<h5>거래희망 업체 등록 담당자</h5>
							<ul>
								<li class="li_w"><strong>성명</strong>이용식</li>
								<li><strong>전화번호</strong>070-7878-1638</li>
								<li><strong class="mail">이메일</strong>leeys@yura.co.kr</li>
								<li class="li_w"><strong>직위</strong>차장</li>
								<li class="li_w"><strong>소속</strong>부품개발팀</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>