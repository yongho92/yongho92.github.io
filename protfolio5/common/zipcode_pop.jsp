<%@ page
    contentType="text/html; charset=utf-8"
    import="java.util.*,
            biznetpia.common.manager.*,
            biznetpia.fw.log.Log,
            biznetpia.fw.entity.*,
            biznetpia.fw.dao.*,
            biznetpia.fw.util.*,
            java.io.File,
            net.fckeditor.*"
%><%@ include file="/inc/init.jsp"%>
<%
    dbConnect();
    CommonManager cMgr = new CommonManager(exec, parameters);
    if(!parameters.isEmpty("sc_word")) listDR01 = cMgr.listZipcode();
%>
<%@ include file="/inc/www_popup_header.jsp"%>

<script type="text/javascript">
function fw_domReady(){
    $("#btnList").click(function(){
        $("#page").val("1");
        frm.processParameters();
        frm.submitForm3(window, "zipcode_pop.jsp");
        showLoadingLayer(this);
    });

    $("#tmp_word").focus();
}

function fw_onenterdown1(obj){
    if(obj.name == "tmp_word") $("#btnList").click();
}

function selectZip(code1, code2, addr1){
    opener.<%=parameters.print("sc_func", "selectZip")%>(code1, code2, addr1, "<%=parameters.print("sc_gubun")%>");
    self.close();
}
</script>
<link rel="stylesheet" type="text/css" href="../../web/css/www_wiset.css" />
<link rel="stylesheet" type="text/css" href="../../web/css/www_mypage.css" />
<link rel="stylesheet" type="text/css" href="../../web/css/www_bbs.css" />
<link rel="stylesheet" type="text/css" href="../../web/css/www_mypage2.css" />

<div class="pop_layer3">
   <div class="pop_title2">
      <h1><img src="../../web/images/www/join/h1_pop03.gif" !alt="우편번호 찾기" /></h1>
      <p><a href="javascript:self.close();"><img src="../../web/images/www/join/btn_x.gif" !alt="닫기" /></a></p>
   </div>
   <div class="search_pop">
        <fieldset>
                <input type="text" class="input_pop2" style="width:200px;" name="tmp_word" id="tmp_word" required msg="검색어를 입력하세요." value="<%=parameters.print("sc_word")%>"/>
                <input type="image" src="../../web/images/www/join/btn_search.gif" !alt="검색" id="btnList"/>
        </fieldset>
      </div><!--search_pop-->

    <div class="roll_layer">
      <table cellspacing="0" cellpadding="0" width="100%" summary="학교찾기" class="tb_pop01">
        <colgroup>
            <col/>
            </colgroup>
<%
    while(listDR01.hasNext()){
        String sido = listDR01.print("sido");
		String gugun = listDR01.print("gugun");
		String dong = listDR01.print("dong");
		String ri = listDR01.print("ri");
		String st_bunji = listDR01.print("st_bunji").trim();
		String ed_bunji = listDR01.print("ed_bunji").trim();

		String str1 = sido + " " + gugun + " " + dong + " " + ri + " ";
		if(st_bunji.length() > 0) str1 += st_bunji + " ~ " + ed_bunji;

        String str2 = sido + " " + gugun + " " + dong + " " + ri + " ";

        String arr[] = StringUtils.split(listDR01.print("zipcode"), "-");
%>
            <tr>
              <td><a href="javascript:selectZip('<%=arr[0]%>', '<%=arr[1]%>', '<%=str2%>')">(<%=listDR01.print("zipcode")%>) <%=str1%></a></td>
            </tr>
<%
    }
%>
<%
    if(listDR01.size() == 0){
%>
            <tr>
            <td align="center">조회된 자료가 없습니다.</td>
            </tr>
<%
    }
%>
            <!--
            <tr>
              <td><a href="#">천안 상월  123-526</a></td>
            </tr>
            <tr>
              <td><a href="#">천안 상월  123-526</a></td>
            </tr>
            <tr>
              <td><a href="#">천안 상월  123-526</a></td>
            </tr>
            <tr>
              <td><a href="#">천안 상월  123-526</a></td>
            </tr>
            <tr>
              <td><a href="#">천안 상월  123-526</a></td>
            </tr>
            <tr>
              <td><a href="#">천안 상월  123-526</a></td>
            </tr>
            <tr>
              <td><a href="#">천안 상월  123-526</a></td>
            </tr>
            <tr>
              <td><a href="#">천안 상월  123-526</a></td>
            </tr>
            <tr>
              <td><a href="#">천안 상월  123-526</a></td>
            </tr>
            -->
            <tr><td height="5"></td></tr>
            </table>
    </div><!--roll_layer-->
</div><!--pop_layer-->



<%@ include file="/inc/www_popup_footer.jsp"%>
<%@ include file="/inc/destroy.jsp"%>
