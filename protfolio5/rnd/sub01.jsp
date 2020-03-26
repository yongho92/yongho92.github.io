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


    parameters.set("menu1", "2");
    parameters.set("menu2", "1");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
			<div class="top_title rnd_title">
				<div class="top_txt">
					<dl>
						<dt>유라R&D센터</dt>
						<dd>YURA R&D Center</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="rnd">
					<h3 class="sub_title emp_title"><span>자동차 핵심 부품 <strong>선행 기술을 개발</strong>하고 <span>주요 <strong>원천 기술을 확보</strong>해 나아가고 있습니다.</span></span></h3>
					<div class="rnd_box1">
						<div class="rnd_img">
							<img src="../web/images/sub/rnd_img01.jpg" alt="미래형 자동차 기술의 중심 유라코퍼레이션 R&D 연구소" class="web_img"/>
							<img src="../web/images/sub/rnd_img01_t.jpg" alt="미래형 자동차 기술의 중심 유라코퍼레이션 R&D 연구소" class="tab_img"/>
							<img src="../web/images/sub/rnd_img01_m.jpg" alt="미래형 자동차 기술의 중심 유라코퍼레이션 R&D 연구소" class="mob_img"/>
						</div>
						<p>첨단 산업 연구단지인 성남시 판교에 위치한 R&D연구소는 회사 전체 인력의 30%이상인 연구원들이 근무하고 있으며, <span>자체 선행 연구 및 설계를 통하여 제품을 개발하고 있습니다.  또한 전자파시험실 등 약 160여종의 시험설비를 갖춘 자체 시험실을 운영하고 있으며, </span>각종 원재료와 부품 및 제품에 대한 신뢰성 검증을 실시하고 있습니다.</p>
						<div class="rnd_info">
							<table>
								<caption>유라코퍼레이션 R&D 연구소 소재지 및 연구소명</caption>
								<thead>
									<tr>
										<th scope="col">구분</th>
										<th scope="col">소재지</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>유라R&D센터</td>
										<td>경기도 성남시 판교로 308</td>
									</tr>
									<tr>
										<td>생산기술연구소</td>
										<td>경기도 평택시 진위면 하북4길</td>
									</tr>
								</tbody>
							</table>
							<table>
								<caption>유라코퍼레이션 R&D 연구소 연락처 및 면적</caption>
								<thead>
									<tr>
										<th scope="col">연락처</th>
										<th scope="col">면적</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>070-7878-1000</td>
										<td>7240.9 ㎡</td>
									</tr>
									<tr>
										<td>070-7878-2222</td>
										<td>1094.3 ㎡</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="rnd_box2">
				<div class="sub_cont">
					<div class="rnd_main rnd_box">
						<h4><span>주요 연구분야</span></h4>
						<div class="rnd_m">
							<img src="../web/images/sub/rnd_img02.png" alt="주요분야 1.와이어링 하네스:자동차에 사용되는 모든 전장품을 작동하는데 필요한 전원 분배 및 전기 신호를 각 전자제어 모듈에 전달해주는 배선 2.친환경차부품:친환경차(xEV)의 고전압 시스템에 사용되는 자동차 부품 3.전장제어모듈:통신 및 편의 기능을 수행하는 차량 전기/전자 제어 모듈"/>
							<p class="m_txt1">자동차에 사용되는 모든 전장품을 작동하는데 <span>필요한 전원을 공급하고 전기 신호를 </span>각 전자제어 모듈에 전달해주는 배선</p>
							<p class="m_txt2">친환경차(xEV)의 고전압 시스템에 <span>사용되는 자동차 부품</span></p>
							<p class="m_txt3">통신 및 편의 기능을 관장하는<span>차량 전기/전자 제어 모듈</span></p>
						</div>
						<div class="rnd_mob">
							<dl class="rnd_icon1">
								<dt>와이어링 하네스</dt>
								<dd>자동차에 사용되는 모든 전장품을 작동 하는데 필요한 전원을 공급하고 전기 신호를 각 전자제어 모듈에 전달해주는 배선</dd>
							</dl>
							<dl class="rnd_icon2">
								<dt>전장제어 모듈</dt>
								<dd>통신 및 편의 기능을 관장하는 차량 전기/전자 제어 모듈</dd>
							</dl>
							<dl class="rnd_icon3">
								<dt>친환경차 부품</dt>
								<dd>친환경차(xEV)의 고전압 시스템에 사용되는 자동차 부품</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
			<div class="sub_cont">
				<div class="rnd_pos rnd_box">
					<h4><span>연구 프로세스</span></h4>
					<p class="pos_tit">유라코퍼레이션 R&D센터는 개발 대상 제품에 대해 개발 타당성을 검토하고 설계, 품질, 신뢰성 목표를 설정하여 제품 설계를 진행합니다. <span>또한 시뮬레이션 검증과 자체 설계 검증 프로그램 등을 통해 설계 품질을 강화하여 제품의 효율성과 신뢰성, 체계성을 동시에 확보해 나가고 있습니다.</span></p>
					<img src="../web/images/sub/rnd_img03.jpg" alt="연구 프로세스" class="web_img"/>
					<img src="../web/images/sub/rnd_img03_t.jpg" alt="연구 프로세스" class="tab_img"/>
					<div class="pos_box">
						<h5>연구 프로세스 절차</h5>
						<div class="pos_all">
							<div class="pos_list pos_list2">
								<p class="pos1">제품 기획</p>
							</div>
							<div class="pos_list pos_list1">
								<div class="pos_list3">
									<p class="pos2">설계</p>
								</div>
								<div class="pos_list3 pos_list4">
									<p class="pos3">해석/검증</p>
								</div>
							</div>
							<div class="pos_list">
								<p class="pos4">시제품 제작</p>
							</div>
							<div class="pos_list">
								<p class="pos5">시험</p>
							</div>
							<div class="pos_list">
								<p class="pos6">양산</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="rnd_box3">
				<div class="sub_cont">
					<div class="rnd_his rnd_box">
						<h4><span>R&D 연혁</span></h4>
						<ul>
							<li>
								<dl>
									<dt>2018.03</dt>
									<dd>LV 커넥터 부문(독일자동차연합규격) 국제공인시험기관(KOLAS) 인정 취득</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt>2017.02</dt>
									<dd>유라 중국 기술연구소 법인 설립(위해)</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt>2016.06</dt>
									<dd>전기차 완속 충전 제어기 & 급속 충전 제어기 양산</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt>2015.09</dt>
									<dd>ISO 26262 프로세스 인증 획득</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt>2014.06</dt>
									<dd>유라 R&D 유럽분소 신설(독일)</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="let">2012.11</dt>
									<dd>EMC 부문(전자기적합성) 국제공인시험기관(KOLAS) 인정 취득</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="let">2011.12</dt>
									<dd>CMMI ML3 인증 획득</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt>2009.10</dt>
									<dd>스마트 정션블록(SJB) 국내 최초 양산</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt>2008.12</dt>
									<dd>현대 기아자동차 기술5스타 획득</dd>
								</dl>
								<dl>
									<dt>06</dt>
									<dd>유라하네스(1970년 설립) 부설연구소와 통합</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt>2007.02</dt>
									<dd>중국 R&D분소 신설(북경)</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt>2002.10</dt>
									<dd>기업부설연구소 인증 획득(기술연구소)</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="let">1997.12</dt>
									<dd>기업부설연구소 인증 획득(전자개발센터)</dd>
								</dl>
							</li>
						</ul>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>