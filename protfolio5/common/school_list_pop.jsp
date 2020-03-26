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
<%
    dbConnect();
    String now = StringUtils.getToday2();

    EtcManager etcMgr = new EtcManager(exec, parameters);
    DataEntity inDE = parameters.getDataEntity();
    inDE.set("sc_ps", "10000");

    if(!parameters.isEmpty("sc_name")) listDR01 = etcMgr.pageSchool(inDE);
%>
<%@ include file="/inc/www_popup_header.jsp"%>
<script>
function fw_domReady(){
    $("#btnList").click(function(e){
        if(!frm.validate()) return false;
        frm.processParameters();
        frm.submitForm3(window, "school_list_pop.jsp");
    });

    $(".btnSelect").click(function(e){
        var seq = $(this).attr("seq");
        var name = $(this).html();

        opener.<%=parameters.print("sc_func", "selectSchool")%>(seq, name);
        self.close();
    });

    $("#tmp_name").focus();
}

function fw_onenterdown1(obj){
    if(obj.name == "tmp_name") $("#btnList").click();
}
</script>
<div class="pop_layer2" style="padding-bottom:0px;">
   <div class="pop_title" style="background:url(''); padding-top:6px; padding-bottom:12px;">
      <h1><img src="<%=imageRoot%>www/join/h1_pop02.gif" !alt="학교찾기" /></h1>
      <p><a href="javascript:self.close();"><img src="<%=imageRoot%>www/join/btn_x.gif" !alt="닫기" /></a></p>
   </div>
   <div class="search_pop">
        <fieldset>
                <input type="text" class="input_pop2" style="width:200px;" name="tmp_name" id="tmp_name" value="<%=parameters.print("sc_name")%>" value="상월" required msg="학교명을 입력하세요" />
                <input type="image" src="<%=imageRoot%>www/join/btn_search.gif" !alt="검색" id="btnList"/>
        </fieldset>
      </div><!--search_pop-->

    <div class="roll_layer">
      <table cellspacing="0" cellpadding="0" width="100%" summary="학교찾기" class="tb_pop01">
        <colgroup>
            <col/>
            </colgroup>
<%
    while(listDR01.hasNext()){
%>
            <tr>
              <td><a href="#" class="btnSelect" seq="<%=listDR01.print("SEQ")%>" type="<%=listDR01.print("SCHOOL_TYP_CD")%>"><%=listDR01.print("NAME")%></a></td>
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
              <td><a href="#">천안 상월  중학교</a></td>
            </tr>
            -->
            </table>
    </div><!--roll_layer-->
</div><!--pop_layer-->


<%@ include file="/inc/www_popup_footer.jsp"%>
<%@ include file="/inc/destroy.jsp"%>