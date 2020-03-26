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
function fw_domReady()
{

}
function glb_map(seq){
	var offset = $('#glb_map' + seq).offset();
	$('html, body').animate({scrollTop : offset.top-85}, 400);
}
</script>
            <div class="top_title glb_title">
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
					<div class="glb_map glb_map2">
						<img src="../web/images/sub/glb_map.jpg" alt="세계 각국 사업장 이미지" usemap="#Map_181204"/>

						<map name="Map_181204" id="Map_181204">
							<area shape="rect" coords="580,93,638,105" href="javascript:glb_map('1');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="580,71,668,83" href="javascript:glb_map('2');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="580,47,640,61" href="javascript:glb_map('3');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="468,113,514,127" href="javascript:glb_map('4');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="340,325,410,339" href="javascript:glb_map('5');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="468,49,526,63" href="javascript:glb_map('6');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="468,93,520,107" href="javascript:glb_map('7');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="466,137,532,149" href="javascript:glb_map('8');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="211,175,325,187" href="javascript:glb_map('9');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="211,151,275,165" href="javascript:glb_map('10');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="213,251,259,265" href="javascript:glb_map('11');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="211,273,249,287" href="javascript:glb_map('12');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="213,231,279,243" href="javascript:glb_map('13');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="54,325,130,337" href="javascript:glb_map('14');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="87,197,143,207" href="javascript:glb_map('15');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="227,39,307,53" href="javascript:glb_map('16');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="227,61,281,75" href="javascript:glb_map('17');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="885,207,949,221" href="javascript:glb_map('18');" target="" alt="" onfocus="this.blur();"/>
							<area shape="rect" coords="22,269,86,283" href="javascript:glb_map('19');" target="" alt="" onfocus="this.blur();"/>

						</map>
					</div>
					<div class="glb_tab">
						<ul>
							<li><a href="../company/sub07.jsp">국내 사업장</a></li>
							<li class="barx on"><a href="../company/sub08.jsp">해외 사업장</a></li>
						</ul>
						<ul class="mob_tab_box">
							<li class="mob_tab on"><a href="javascript:void(0);" class="mob_on">해외 사업장</a></li>
							<li><a href="../company/sub08.jsp">국내 사업장</a></li>
						</ul>
					</div>
					<div class="glb_list">
						<div class="glb_box" id="glb_map1">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img11.jpg" alt="위해유라전기장배유한공사(위해1공장 / 위해통합가공물류센터)"/>
								</div>
								<div class="glb_txt">
								<h4><span>위해유라전기장배유한공사(위해1공장 / 위해통합가공물류센터)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2008년 7월 18일</span></li>
										<li><strong>소재지</strong><span>NO.76 Shuangfo Road，Wenquantang Wenquan Town Huancui Area Weihai City, Shandong Province, China</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 47,478㎡, 연면적 38,116㎡</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
							</div>
						</div>
						<div class="glb_box">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img10.jpg" alt="위해유라전기장배유한공사(위해2공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>위해유라전기장배유한공사(위해2공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2001년 12월 27일</span></li>
										<li><strong>소재지</strong><span>NO.2 Huiyou Road，Wenquantang Wenquan Town Huancui Area Weihai City, Shandong Province, China</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 15,197㎡, 연면적 9,078㎡</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
							</div>
						</div>
						<div class="glb_box" id="glb_map2">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img12.jpg" alt="영성세원전기유한공사(영성공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>영성세원전기유한공사(영성공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2004년 7월 12일</span></li>
										<li><strong>소재지</strong><span>NO.8，HeYang east road, The economic development zone, RongCheng City, Shandong, China</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 40,039㎡, 연면적 17,148㎡</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스, 에어백 와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
							</div>
						</div>
						<div class="glb_box" id="glb_map3">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img13.jpg" alt="연태유라전기장배유한공사(연태공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>연태유라전기장배유한공사(연태공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2010년 1월 8일</span></li>
										<li><strong>소재지</strong><span>Qinshuigongyeyuan Muping Area Yantai City, Shandong Province, China</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 20,000㎡, 연면적 7,723㎡</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
							</div>
						</div>
						<div class="glb_box" id="glb_map4">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img14.jpg" alt="하택유라전기장배유한공사(하택공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>하택유라전기장배유한공사(하택공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2010년 12월 3일</span></li>
										<li><strong>소재지</strong><span>South Changjiang Road, West Nanjing Road, Economic Development Zone, Heze City Shangdong Province, China</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 25,388㎡, 연면적 18,164㎡</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
										<li><strong>분공장</strong><span>1, 2, 3공장</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								
							</div>
						</div>
						<div class="glb_box" id="glb_map5">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img15.jpg" alt="SEWON ECS VINA Co., Ltd(베트남공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>SEWON ECS VINA Co., Ltd(베트남공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2007년 12월 7일</span></li>
										<li><strong>소재지</strong><span>Moc Ty, Trung Trac Commune, Van Lam District, Hung Yen Province, Vietnam</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 16,915㎡, 연면적 11,808㎡</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스, 에어백 와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								
							</div>
						</div>
						<div class="glb_box" id="glb_map6">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img16.jpg" alt="북경유라전기장배유한공사(북경공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>북경유라전기장배유한공사(북경공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2002년 10월 28일</span></li>
										<li><strong>소재지</strong><span>B No. 13 Keji Road Miyun Economic Development Beijing, China</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 40,675㎡, 연면적 21,268㎡</span></li>
										<li><strong>주요 거래처</strong><span>북경현대기차공장</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								
							</div>
						</div>
						<div class="glb_box" id="glb_map7">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img17.jpg" alt="락릉유라전기장배유한공사(락릉공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>락릉유라전기장배유한공사(락릉공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2015년 9월 2일</span></li>
										<li><strong>소재지</strong><span>No.166, Tingjin xi Road, Leling City, Shandong Prov., China</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 42,187㎡, 연면적 22,536㎡</span></li>
										<li><strong>주요 거래처</strong><span>북경현대기차창저우공장</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								
							</div>
						</div>
						<div class="glb_box" id="glb_map8">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img18.jpg" alt="사천유라전기유한공사(사천공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>사천유라전기유한공사(사천공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2016년 7월 29일</span></li>
										<li><strong>소재지</strong><span>No. 2-53 South Industrial Park,Economic Development Zone, Linshui, Sichuan, China</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 47,478㎡, 연면적 38,116㎡</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								
							</div>
						</div>
						<div class="glb_box" id="glb_map9">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img19.jpg" alt="YURA Corporation Slovakia, s.r.o(슬로바키아 레드니츠케 로브네공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>YURA Corporation Slovakia, s.r.o(슬로바키아 레드니츠케 로브네공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2004년 12월 17일</span></li>
										<li><strong>소재지</strong><span>Puchovska cesta 413,020 61 lednicke rovne, Slovakia</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 95,769㎡, 연면적 21,771㎡</span></li>
										<li><strong>주요 거래처</strong><span>현대자동차 체코공장, 기아자동차 슬로바키아공장</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
										<li><strong>분공장</strong><span>홀로베츠, 토폴차니, 프리에비차</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3328.4100890295954!2d18.296419116076546!3d49.07294147930904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47148f8c33a6cd53%3A0x82c9befd8006d23c!2zUMO6Y2hvdnNrw6EgY2VzdGEsIDAyMCA2MSBMZWRuaWNrw6kgUm92bmUsIOyKrOuhnOuwlO2CpOyVhA!5e1!3m2!1sko!2skr!4v1542875414190" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
							</div>
						</div>
						<div class="glb_box" id="glb_map10">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img20.jpg" alt="YURA ELTEC Corporation Slovakia, s.r.o(슬로바키아 소보타공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>YURA ELTEC Corporation Slovakia, s.r.o(슬로바키아 소보타공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2008년 6월 24일</span></li>
										<li><strong>소재지</strong><span>Dobsinskeho 4016, 979 01 Rimavska Sobota, Slovakia</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 30,797㎡, 연면적 8,309㎡</span></li>
										<li><strong>주요 거래처</strong><span>현대자동차 체코공장, 기아자동차 슬로바키아공장</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3374.671435227785!2d20.013497416057454!3d48.37880007924332!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473f8d2a60755857%3A0xb5d84c412ec22610!2zUGF2bGEgRG9ixaFpbnNrw6lobywgOTc5IDAxIFJpbWF2c2vDoSBTb2JvdGEtU29iw7R0a2EsIOyKrOuhnOuwlO2CpOyVhA!5e1!3m2!1sko!2skr!4v1542875433136" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
							</div>
						</div>
						<div class="glb_box" id="glb_map11">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img23.jpg" alt="YURA Corporation Leskovac D.O.O(세르비아 라차공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>YURA Corporation RACA D.O.O(세르비아 라차공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2010년 4월 12일</span></li>
										<li><strong>소재지</strong><span>Kralja Petra I 9, 34210 Raca, Serbia</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 41,420㎡, 연면적 9,711㎡</span></li>
										<li><strong>주요 거래처</strong><span>현대자동차 체코공장, 기아자동차 슬로바키아공장</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d455.12572875031196!2d20.980960359505065!3d44.22364843911261!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47572ce7ea29b719%3A0x6b65f78157bf89cd!2zS3JhbGphIFBldHJhIEkgOSwgUmHEjWEsIOyEuOultOu5hOyVhA!5e1!3m2!1sko!2skr!4v1542875874717" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
							</div>
						</div>
						<div class="glb_box" id="glb_map12">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img22.jpg" alt="YURA Corporation Nis D.O.O(세르비아 니시공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>YURA Corporation Nis D.O.O(세르비아 니시공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2011년 4월 14일</span></li>
										<li><strong>소재지</strong><span>Industrijska zona bb, Donje Medurovo, 18254 NIs, Serbia</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 40,840㎡, 연면적 17,673㎡</span></li>
										<li><strong>주요 거래처</strong><span>현대자동차 체코공장, 기아자동차 슬로바키아공장</span></li>
										<li><strong>주요 생산품</strong><span></span>와이어링 하네스</li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3697.0623696063394!2d21.82945226452746!3d43.30976642361329!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4755b82b3aae8dd5%3A0x169e592568b297de!2sYura+Corporation!5e1!3m2!1sko!2skr!4v1542875910643" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
							</div>
						</div>
						<div class="glb_box" id="glb_map13">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img21.jpg" alt="YURA Corporation RACA D.O.O(세르비아 레스코바츠공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>YURA Corporation Leskovac D.O.O(세르비아 레스코바츠공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2012년 2월 14일</span></li>
										<li><strong>소재지</strong><span>Industrijska II, 16210 Leskovac, Serbia</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 39,780㎡, 연면적 18,614㎡</span></li>
										<li><strong>주요 거래처</strong><span>현대자동차 체코공장, 기아자동차 슬로바키아공장</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
							</div>
						</div>
						<div class="glb_box" id="glb_map14">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img24.jpg" alt="YURA Corporation TUNISIA sarl(튀니지공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>YURA Corporation TUNISIA sarl(튀니지공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2007년 6월 13일</span></li>
										<li><strong>소재지</strong><span>AFI industrial zone, road of tunis 3100 Kairouan, Tunisia</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 10,166㎡, 연면적 8,815㎡</span></li>
										<li><strong>주요 거래처</strong><span>현대자동차 체코공장, 기아자동차 슬로바키아공장</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								
							</div>
						</div>
						<div class="glb_box" id="glb_map15">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img25.jpg" alt="YURA Corporation Czech, s.r.o(체코물류센터)"/>
								</div>
								<div class="glb_txt">
								<h4><span>YURA Corporation Czech, s.r.o(체코물류센터)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2008년 4월 16일</span></li>
										<li><strong>소재지</strong><span>Studentska 1554/1, Havirov, Czech</span></li>
										<li><strong>면<span>적</span></strong><span>연면적 4,625㎡</span></li>
										<li><strong>주요 거래처</strong><span>현대자동차 체코공장</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d820.2082647759312!2d18.449521679158824!3d49.77930025383469!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4713f92ad1871695%3A0x1caf1899281a4f1d!2zU3R1ZGVudHNrw6EgMTU1NC8xLCBQb2RsZXPDrSwgNzM2IDAxIEhhdsOtxZlvdiwg7LK07L2U!5e1!3m2!1sko!2skr!4v1542875800788" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
							</div>
						</div>
						<div class="glb_box" id="glb_map16">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img26.jpg" alt="YURA Corporation RUS Ivangorod(러시아 이반고로드공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>YURA Corporation RUS Ivangorod(러시아 이반고로드공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2008년 3월 25일</span></li>
										<li><strong>소재지</strong><span>188490, Russia, Leningrad region, Ivangorod, ul. Gagarina dom. 54/A</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 60,770㎡, 연면적 23,265㎡</span></li>
										<li><strong>주요 거래처</strong><span>현대자동차 러시아공장</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								
							</div>
						</div>
						<div class="glb_box" id="glb_map17">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img27.jpg" alt="YURA Corporation RUS Pskov(러시아 프스코프공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>YURA Corporation RUS Pskov(러시아 프스코프공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2011년 9월 25일</span></li>
										<li><strong>소재지</strong><span>180021, Russia, Pskovskaya oblast, Pskov City , Industrialnaya ul. 9/1</span></li>
										<li><strong>면<span>적</span></strong><span>연면적 4,195㎡</span></li>
										<li><strong>주요 거래처</strong><span>현대자동차 체코공장, 기아자동차 슬로바키아공장</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1562.9137130602724!2d28.372423714157726!3d57.82547037847923!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46c01944e8481001%3A0x491906eb9beca935!2zSW5kdXN0cmlhbCduYXlhIFVsaXRzYSwgOSwgUHNrb3YsIFBza292c2theWEgb2JsYXN0Jywg65-s7Iuc7JWEIDE4MDAyMQ!5e1!3m2!1sko!2skr!4v1542875743485" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
							</div>
						</div>
						<div class="glb_box" id="glb_map18">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img28.jpg" alt="YURA CORPORATION MEXICO S. DE R.L. DE C.V.(멕시코공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>YURA CORPORATION MEXICO S. DE R.L. DE C.V.(멕시코공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2015년 2월 18일</span></li>
										<li><strong>소재지</strong><span>Blvd. San Pedro #150, Parque Industrial Ferropuertos Laguna, Torreon, Coahuila C.P.27400</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 102,634㎡, 연면적 43,096㎡</span></li>
										<li><strong>주요 거래처</strong><span>기아자동차 멕시코공장</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
										<li><strong>분공장</strong><span>몬테레이 물류창고(토지면적 9,880㎡, 연면적 3,975㎡)</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4586.932590395497!2d-103.36404198444127!3d25.47139448376939!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x868fdd2a5e3ad5c1%3A0x7a2d6f9d78cb9e5a!2sBlvd.+San+Pedro+150%2C+Parque+Industrial+Ferropuerto+Laguna%2C+27400+Torre%C3%B3n%2C+Coah.%2C+%EB%A9%95%EC%8B%9C%EC%BD%94!5e1!3m2!1sko!2skr!4v1542875650046" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
							</div>
						</div>
						<div class="glb_box" id="glb_map19">
							<div class="glb_ov">
								<div class="glb_img">
									<img src="../web/images/sub/glb_img29.jpg" alt="YURA Corporation MOROCCO SARLAU(모로코공장)"/>
								</div>
								<div class="glb_txt">
								<h4><span>YURA Corporation MOROCCO SARLAU(모로코공장)</span></h4>
									<ul>
										<li><strong>설립일</strong><span>2016년 4월 6일</span></li>
										<li><strong>소재지</strong><span>50000, Quartier Industriel Marjane II – MEKNES</span></li>
										<li><strong>면<span>적</span></strong><span>토지면적 8,867㎡, 연면적 7,483㎡</span></li>
										<li><strong>주요 거래처</strong><span>기아자동차 슬로바키아공장</span></li>
										<li><strong>주요 생산품</strong><span>와이어링 하네스</span></li>
									</ul>
									<!--<button type="button" onfocus="this.blur();"><span>지도보기</span></button>-->
								</div>
							</div>
							<div class="glb_add">
								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1773.2002026153166!2d-5.544975872278353!3d33.89411112234464!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda045209672d78d%3A0x1c54481f3b6cdb1d!2sTricotage+Du+Haut+Atlas+Sa!5e1!3m2!1sko!2skr!4v1542875634645" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
							</div>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>