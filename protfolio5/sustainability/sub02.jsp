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


    parameters.set("menu1", "3");
    parameters.set("menu2", "2");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}

function viewYoutube()
{
	$(".main_img").hide();


	$(".join_imgt").html($("#view_layer").html());

    var myVideo = document.getElementById("main_visual_video_web");

    if (myVideo.paused) { myVideo.play(); } else { myVideo.pause(); }

}

function viewYoutube2()
{
	$(".main_img").hide();


	$(".join_imgt2").html($("#view_layer2").html());

    var myVideo = document.getElementById("main_visual_video_web2");

    if (myVideo.paused) { myVideo.play(); } else { myVideo.pause(); }

}
</script>
			<div class="top_title join_title">
				<div class="top_txt">
					<dl>
						<dt>동반성장경영</dt>
						<dd>Joint growth management</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="join_cont">
					<h3 class="sub_title emp_title"><span>협력업체와 <strong>'더 나은 미래, 동반성장'</strong>의 가치를 만들겠습니다.</span></h3>
					<div class="join_box">
						<p>유라코퍼레이션은 동반성장의 가치를 기본으로 협력업체와 상생의 관계를 넘어 동반자의 관계를 지속하고 있습니다. <span>또한 부품 협력업체와 상생 협력을 위한 다양한 지원을 약속하며 동반성장의 가치를 함께 만들어 나가고 있습니다.</span></p>
						<img src="../web/images/sub/join_img01.jpg" alt="협력업체와 '더 나은 미래, 동반성장'의 가치를 만들겠습니다."/>
					</div>
					<div class="join_box2 join_box3">
						<h4><span>경영 안정화를 위한 협력</span></h4>
						<p>유라코퍼레이션은 협력사의 재무건정성 확보 및 자금 회전력 향상을 위해 다양한 프로그램을 진행하고 있으며, <span>상생 협력펀드를 조성하여 협력사에게 경영 자금을 지원하고 있습니다.</span></p>
						<ul>
							<li>상생 협력펀드 <span>운영</span></li>
							<li>납품대금 <span>현금결제</span></li>
							<li class="marx">상생 결제제도 <span>운영</span></li>
						</ul>
					</div>
					<div class="join_box2 join_box4">
						<h4><span>경쟁력 강화를 위한 협력</span></h4>
						<p>유라코퍼레이션은 협력사의 품질지도 및 육성, 사외 전문가 컨설팅, 스마트공장 추진 지원 등 <span>다양한 동반성장 프로그램을 운영하고 있으며 협력사의 지속적인 성장을 지원하고 있습니다.</span></p>
						<ul>
							<li><span>협력사 품질지도 및 육성</span></li>
							<li class="bg2"><span>사외 전문가 컨설팅 지원</span></li>
							<li class="bgx"><span>협력사 스마트 공장 추진 지원</span></li>
						</ul>
					</div>
					<div class="join_box2 join_box5">
						<h4><span>동반성장 소통 활동 </span></h4>
						<p>유라코퍼레이션은 다양한 상생협력 소통 프로그램을 통해 협력사와의 상생협력 및 동반상장의 관계를 공고히 하고 있습니다.</p>
						<ul>
							<li class="list1">상생 협력회 <span>운영</span></li>
							<li class="list2">품질경영 대회 <span>운영</span></li>
							<li class="list3">기술혁신대회 <span>운영</span></li>
						</ul>
					</div>
					<div class="join_box2 join_box6">
						<h4><span>하도급법 준수</span></h4>
						<p>유라코퍼레이션은 공정거래질서 확립을 위해 “하도급거래 공정화에 관한 법률” 등 하도급 관련 법규를 준수하며 <span>“하도급법 4대 가이드라인”을 성실히 이행하고 있습니다.</span></p>
						<ul>
							<li class="icon1"><strong>협력사 계약체결 <span>가이드라인</span></strong>
								<button type="button" onclick="window.open('../file/1. 협력사 계약체결 가이드라인.pdf')" onfocus="this.blur();"><span>자세히 보기</span></button>
							</li>
							<li class="icon2"><strong>협력사 신규등록 및 <span>운용 가이드라인</span></strong>
								<button type="button" onclick="window.open('../file/2. 협력사 신규등록 및 운용에 대한 가이드라인.pdf')" onfocus="this.blur();"><span>자세히 보기</span></button>
							</li>
							<li class="icon3"><strong>하도급 거래 내부심의위원회 <span>운용 가이드라인</span></strong>
								<button type="button" onclick="window.open('../file/3. 하도급거래 내부심의위원회 운용.pdf')" onfocus="this.blur();" ><span>자세히 보기</span></button>
							</li>
							<li class="icon4"><strong>서면 발급 및 보존 <span>가이드라인</span></strong>
								<button type="button" onclick="window.open('../file/4. 하도급 서면 발급 및 보존.pdf')" onfocus="this.blur();"><span>자세히 보기</span></button>
							</li>
							<li class="icon5"><strong>분쟁조정 <span>처리절차</span></strong>
								<button type="button" onclick="window.open('../file/분쟁조정 처리철자 자세히 보기.pdf')" onfocus="this.blur();"><span>자세히 보기</span></button>
							</li>
						</ul>
					</div>
					<div class="join_box2 join_mov">
<!-- 						<p>유라코퍼레이션과 협력사는 함께 지속 가능한 성장을 위해 아름다운 동행을 실천하고 있습니다. </p>
						<button type="button"><span>동반성장 홍보동영상</span></button> -->
						<h4><span>동반성장 홍보영상</span></h4>
						<p>유라코퍼레이션과 협력사는 지속 가능한 성장을 위해 아름다운 동행을 실천하고 있습니다.</p>
						<div class="join_movlist">
							<div class="join_movimg">
								<div class="join_imgt">
									<a href="javascript:viewYoutube();"><img src="../web/images/sub/mov_img02.jpg" alt="동반성장 홍보영상보기"/></a>
								</div>
								<p>상생협력 이제는 희망</p>
								<span class="data">2018-11-02</span>

								<span id="view_layer" style="display:none;">


										<video id="main_visual_video_web" class="main_visual_video_web" controls="" width="100%" height="100%" >
										<source src="/web/file/20181127.mp4" type="video/mp4">
									</video>

								 </span>
							</div>
							<div class="join_movimg join_movimg2">
								<div class="join_imgt2">
									<a href="javascript:viewYoutube2();"><img src="../web/images/sub/mov_img01.jpg" alt="동반성장 홍보영상보기"/></a>
								</div>
								<p>우리 모두를 위한 변화</p>
								<span class="data">2017-11-03</span>

								<span id="view_layer2" style="display:none;">


										<video id="main_visual_video_web2" class="main_visual_video_web" controls="" width="100%" height="100%" >
										<source src="/web/file/20181129.mp4" type="video/mp4">
									</video>

								 </span>
							</div>
						</div>
					</div>
					<p class="data2">출처:동반성장위원회</p>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>