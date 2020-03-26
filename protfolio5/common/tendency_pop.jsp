<%@ page
    contentType="text/html; charset=utf-8"
    import="java.util.*,
            biznetpia.common.manager.*,
            biznetpia.fw.log.Log,
            biznetpia.fw.entity.*,
            biznetpia.fw.dao.*,biznetpia.fw.util.*,
            java.io.File,
            net.fckeditor.*"
%><%@ include file="/inc/init.jsp"%>
<%@ include file="/inc/www_popup_header.jsp"%>
<div class="pop_layer3">
   <div class="pop_title2">
  <h1><img src="<%=imageRoot%>www/join/h1_pop04.gif" !alt="나의성향 알아보기" /></h1>
  <p><a href="javascript:self.close();"><img src="<%=imageRoot%>www/join/btn_x.gif" !alt="닫기" /></a></p>
</div>

<table cellspacing="0" cellpadding="0" width="100%" summary="나의성향" class="tb_pop01">
  <colgroup>
        <col width="20%"/><col/>
        </colgroup>
        <tr>
          <th>현실형</th>
          <td>
            <ul>
              <li>분명하고 질서정연, 체계적인 것 좋아함</li>
              <li>기계조작, 기술에 흥미</li>
              <li>사교성 < 손재능, 기계적</li>
            </ul>
          </td>
        </tr>
        <tr class="gray">
          <th>탐구형</th>
          <td>
            <ul>
              <li>관찰적, 상징적, 체계적</li>
              <li>물리,생물,문화적,창조적 탐구활동에 흥미</li>
              <li>대인관계 < 학술적</li>
            </ul>
          </td>
        </tr>
        <tr>
          <th>예술형</th>
          <td>
            <ul>
              <li>예술적 창조와 표현, 변화, 다양성 선호</li>
              <li>자유롭고 상징적인 활동에 흥미</li>
              <li>사무적 < 혁신적</li>
            </ul>
          </td>
        </tr>
        <tr class="gray">
          <th>사회형</th>
          <td>
            <ul>
              <li>타인의 문제를 듣고 이해하고 도와줌</li>
              <li>치료, 봉사 활동에 흥미</li>
              <li>기계적 < 대인관계</li>
            </ul>
          </td>
        </tr>
        <tr>
          <th>진취형</th>
          <td>
            <ul>
              <li>조직의 목적과 경제적 이익을 위해 타인을 지도계획, 통제관리</li>
              <li>명예, 권위, 인정받는 것에 흥미</li>
              <li>과학적 < 설득적, 영업능력</li>
            </ul>
          </td>
        </tr>
        <tr class="gray">
          <th>관습형</th>
          <td>
            <ul>
              <li>정해진 원칙과 계획에 따라 자료 기록,정리,조직</li>
              <li>사무적, 계산적 활동에 흥미</li>
              <li>예술적 < 비즈니스 실무</li>
            </ul>
          </td>
        </tr>
    </table>
    
</div><!--pop_layer-->

<%@ include file="/inc/www_popup_footer.jsp"%>
<%@ include file="/inc/destroy.jsp"%>