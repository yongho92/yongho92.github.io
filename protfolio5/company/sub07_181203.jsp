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
    parameters.set("menu2", "5");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function map1(w, h)
{
    var map = new naver.maps.Map('naverMap', {
        center: new naver.maps.LatLng(37.4027215,127.10804089999999),
        zoom: 10,
        size : new naver.maps.Size(w, h)
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(37.4027215,127.10804089999999),
        map: map
    });
}

function map2(w, h)
{
    var map = new naver.maps.Map('naverMap1', {
        center: new naver.maps.LatLng(37.0438512,126.95009060000007),
        zoom: 10,
        size : new naver.maps.Size(w, h)
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(37.0438512,126.95009060000007),
        map: map
    });
}

function map3(w, h)
{
    var map = new naver.maps.Map('naverMap2', {
        center: new naver.maps.LatLng(36.63270190000001,127.3075278),
        zoom: 10,
        size : new naver.maps.Size(w, h)
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(36.63270190000001,127.3075278),
        map: map
    });
}

function map4(w, h)
{
    var map = new naver.maps.Map('naverMap3', {
        center: new naver.maps.LatLng(37.1128715,127.06450489999997),
        zoom: 10,
        size : new naver.maps.Size(w, h)
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(37.1128715,127.06450489999997),
        map: map
    });
}

function map5(w, h)
{
    var map = new naver.maps.Map('naverMap4', {
        center: new naver.maps.LatLng(35.8710127,129.0701179),
        zoom: 10,
        size : new naver.maps.Size(w, h)
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(35.8710127,129.0701179),
        map: map
    });
}

function map6(w, h)
{
    var map = new naver.maps.Map('naverMap5', {
        center: new naver.maps.LatLng(37.06139750000001,126.8522246),
        zoom: 10,
        size : new naver.maps.Size(w, h)
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(37.06139750000001,126.8522246),
        map: map
    });
}

function map7(w, h)
{
    var map = new naver.maps.Map('naverMap6', {
        center: new naver.maps.LatLng(35.2138234,126.80647769999996),
        zoom: 10,
        size : new naver.maps.Size(w, h)
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(35.2138234,126.80647769999996),
        map: map
    });
}

function map8(w, h)
{
    var map = new naver.maps.Map('naverMap7', {
        center: new naver.maps.LatLng(36.7898784,126.52166569999997),
        zoom: 10,
        size : new naver.maps.Size(w, h)
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(36.7898784,126.52166569999997),
        map: map
    });
}

function map9(w, h)
{
    var map = new naver.maps.Map('naverMap8', {
        center: new naver.maps.LatLng(35.9552585,129.22934859999998),
        zoom: 10,
        size : new naver.maps.Size(w, h)
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(35.9552585,129.22934859999998),
        map: map
    });
}

function fw_domReady()
{
    var w, h;
    w = $(".glb_box").width();
    h = $('.glb_add').height();

    map1(w, h);
    map2(w, h);
    map3(w, h);
    map4(w, h);
    map5(w, h);
    map6(w, h);
    map7(w, h);
    map8(w, h);
    map9(w, h);


    $(window).resize(function() {
        w = $(".glb_box").width();
        h = $('.glb_add').height();

        map1(w, h);
        map2(w, h);
        map3(w, h);
        map4(w, h);
        map5(w, h);
        map6(w, h);
        map7(w, h);
        map8(w, h);
        map9(w, h);
    });



    /*


    var map = new naver.maps.Map('naverMap2', {
        center: new naver.maps.LatLng(36.63270190000001,127.3075278),
        zoom: 10
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(36.63270190000001,127.3075278),
        map: map
    });

    var map = new naver.maps.Map('naverMap3', {
        center: new naver.maps.LatLng(37.1128715,127.06450489999997),
        zoom: 10
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(37.1128715,127.06450489999997),
        map: map
    });

    var map = new naver.maps.Map('naverMap4', {
        center: new naver.maps.LatLng(35.8710127,129.0701179),
        zoom: 10
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(35.8710127,129.0701179),
        map: map
    });

    var map = new naver.maps.Map('naverMap5', {
        center: new naver.maps.LatLng(37.06139750000001,126.8522246),
        zoom: 10
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(37.06139750000001,126.8522246),
        map: map
    });

    var map = new naver.maps.Map('naverMap6', {
        center: new naver.maps.LatLng(35.2138234,126.80647769999996),
        zoom: 10
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(35.2138234,126.80647769999996),
        map: map
    });

    var map = new naver.maps.Map('naverMap7', {
        center: new naver.maps.LatLng(36.7898784,126.52166569999997),
        zoom: 10
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(36.7898784,126.52166569999997),
        map: map
    });

    var map = new naver.maps.Map('naverMap8', {
        center: new naver.maps.LatLng(35.9552585,129.22934859999998),
        zoom: 10
    });

    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(35.9552585,129.22934859999998),
        map: map
    });
    */
}

function g_map(seq){
	var offset = $("#g_map" + seq).offset();
	$('html, body').animate({scrollTop : offset.top-90}, 400);
};

</script>
            <div class="top_title comp_title">
            <div class="top_txt">
                <dl>
                    <dt>글로벌 네트워크</dt>
						<dd>Global Network</dd>
                </dl>
            </div>
            </div>
            <%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="glb_cont">
					<h3 class="sub_title emp_title"><span><strong>세계로 도약</strong>하고 있는 글로벌 기업 유라코퍼레이션입니다.</span></h3>
					<div class="glb_map">
						<img src="../web/images/sub/glb_map_1.jpg" alt="세계 각국 사업장 이미지" usemap="#Map_1130"/>
 						<map name="Map_1130" id="Map_1130">
							<area shape="rect" coords="790,109,996,131" href="javascript:g_map('1')" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="788,156,1026,190" href="javascript:g_map('4')" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="784,206,988,218" href="javascript:g_map('2')" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="788,258,876,272" href="javascript:g_map('3')" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="788,296,872,312" href="javascript:g_map('7')" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="172,129,334,145" href="javascript:g_map('6')" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="182,163,332,177" href="javascript:g_map('1')" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="256,199,332,211" href="javascript:g_map('8')" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="182,371,330,389" href="javascript:g_map('9')" target="" alt="" onfocus="this.blur();"/> 

						</map>
					</div>
					<div class="glb_tab">
						<ul>
							<li class="on"><a href="../company/sub07.jsp">국내 사업장</a></li>
							<li class="barx"><a href="../company/sub08.jsp">해외 사업장</a></li>
						</ul>
						<ul class="mob_tab_box">
							<li class="mob_tab on"><a href="javascript:void(0);" class="mob_on">국내 사업장</a></li>
							<li><a href="../company/sub08.jsp">해외 사업장</a></li>
						</ul>
					</div>
					<div class="glb_list">
						<div class="glb_box" id="g_map1">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img01.jpg" alt="유라R&D센터"/>
								</div>
								<div class="glb_txt">
								<h4><span>유라R&D센터</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2010년 8월 2일</span></li>
										<li><strong>소재지</strong><span>경기도 성남시 분당구 판교로 308</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 2,996㎡, 연면적 22,849㎡</span></li>
									</ul>
									<button type="button" onfocus="this.blur();"><span>지도보기</span></button>
								</div>
							</div>
							<div class="glb_add">
								<div id="naverMap" class="n_map"></div>
							</div>
						</div>
						<div class="glb_box" id="g_map2">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img02.jpg" alt="청북공장"/>
								</div>
								<div class="glb_txt">
								<h4><span>청북공장</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2013년 5월 7일</span></li>
										<li><strong>소재지</strong><span>경기도 평택시 청북면 청원로 157-23</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 43,636㎡, 연면적 22,003㎡</span></li>
										<li><strong>주요 생산품</strong><span>스마트 정션블록, FPC 하네스, MOST, DTG</span></li>
									</ul>
									<button type="button" onfocus="this.blur();"><span>지도보기</span></button>
								</div>
							</div>
							<div class="glb_add">
								<div id="naverMap1" class="n_map"></div>
							</div>
						</div>
						<div class="glb_box" id="g_map3" >
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img03.jpg" alt="청주공장"/>
								</div>
								<div class="glb_txt">
								<h4><span>청주공장</span></h4>
									<ul>
										<li><strong>설립일</strong><span>1996년 8월 22일</span></li>
										<li><strong>소재지</strong><span>충청북도 청원군 오송읍 정중연제로 387</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 32,279㎡, 연면적 15,637㎡</span></li>
										<li><strong>주요 거래처</strong><span>현대자동차 아산공장, 기아자동차 화성공장/기아자동차 소하리공장</span></li>
										<li><strong>주요 생산품</strong><span>고전압 와이어링하네스</span></li>
									</ul>
									<button type="button" onfocus="this.blur();"><span>지도보기</span></button>
								</div>
							</div>
							<div class="glb_add">
								<div id="naverMap2" class="n_map"></div>
							</div>
						</div>
						<div class="glb_box" id="g_map4">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img04.jpg" alt="진위공장(유라 생산기술연구소)"/>
								</div>
								<div class="glb_txt">
								<h4><span>진위공장(유라 생산기술연구소)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>1999년 9월 1일</span></li>
										<li><strong>소재지</strong><span>경기도 평택시 진위면 하북4길 129-7</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 9,962㎡, 연면적 6,359㎡</span></li>
									</ul>
									<button type="button" onfocus="this.blur();"><span>지도보기</span></button>
								</div>
							</div>
							<div class="glb_add">
								<div id="naverMap3" class="n_map"></div>
							</div>
						</div>
						<div class="glb_box" id="g_map5">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img05.jpg" alt="경주생산공장"/>
								</div>
								<div class="glb_txt">
								<h4><span>경주생산공장</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2001년 1월 16일</span></li>
										<li><strong>소재지</strong><span>경상북도 경주시 건천읍 신평공단길 55</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 18,189㎡, 연면적 13,733㎡</span></li>
										<li><strong>주요 거래처</strong><span>현대자동차 울산공장</span></li>
										<li><strong>주요 생산품</strong><span>와이어링하네스</span></li>
									</ul>
									<button type="button" onfocus="this.blur();"><span>지도보기</span></button>
								</div>
							</div>
							<div class="glb_add">
								<div id="naverMap4" class="n_map"></div>
							</div>
						</div>
						<div class="glb_box" id="g_map6">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img06.jpg" alt="화성장안공장"/>
								</div>
								<div class="glb_txt">
								<h4><span>화성장안공장</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2001년 8월 18일</span></li>
										<li><strong>소재지</strong><span>경기도 화성시 장안면 포승장안로 1071</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 24,900㎡, 연면적 15,669㎡</span></li>
										<li><strong>주요 거래처</strong><span>현대자동차 아산공장, 기아자동차 화성공장/기아자동차 소하리공장</span></li>
									</ul>
									<button type="button" onfocus="this.blur();"><span>지도보기</span></button>
								</div>
							</div>
							<div class="glb_add">
								<div id="naverMap5" class="n_map"></div>
							</div>
						</div>
						<div class="glb_box" id="g_map7">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img07.jpg" alt="광주물류센터"/>
								</div>
								<div class="glb_txt">
								<h4><span>광주물류센터</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2000년 4월 1일</span></li>
										<li><strong>소재지</strong><span>광주광역시 광산구 하남산단 9번로 93</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 9,917㎡, 연면적 6,309㎡</span></li>
										<li><strong>주요 거래처</strong><span>현대자동차 전주공장, 기아자동차 광주공장</span></li>
									</ul>
									<button type="button" onfocus="this.blur();"><span>지도보기</span></button>
								</div>
							</div>
							<div class="glb_add">
								<div id="naverMap6" class="n_map"></div>
							</div>
						</div>
						<div class="glb_box" id="g_map8">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img08.jpg" alt="서산물류센터"/>
								</div>
								<div class="glb_txt">
								<h4><span>서산물류센터</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2005년 7월 1일</span></li>
										<li><strong>소재지</strong><span>충청남도 서산시 음암면 칠거리로 170</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 17,533㎡, 연면적 3,853㎡</span></li>
										<li><strong>주요 거래처</strong><span>현대자동차 아산공장</span></li>
									</ul>
									<button type="button" onfocus="this.blur();"><span>지도보기</span></button>
								</div>
							</div>
							<div class="glb_add">
								<div id="naverMap7" class="n_map"></div>
							</div>
						</div>
						<div class="glb_box" id="g_map9">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img09.jpg" alt="안강생산공장"/>
								</div>
								<div class="glb_txt">
								<h4><span>안강생산공장</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2015년 3월 15일</span></li>
										<li><strong>소재지</strong><span>경상북도 경주시 안강읍 안현로 955-6</span></li>
										<li><strong>면<span>적</span></strong><span>연면적 4,247㎡</span></li>
										<li><strong>주요 거래처</strong><span>고전압 와이어링 하네스</span></li>
									</ul>
									<button type="button" onfocus="this.blur();"><span>지도보기</span></button>
								</div>
							</div>
							<div class="glb_add">
								<div id="naverMap8" class="n_map"></div>
							</div>
						</div>
					</div>

				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>