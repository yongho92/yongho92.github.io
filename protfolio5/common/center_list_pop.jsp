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

    CenterManager centerMgr = new CenterManager(exec, parameters);
    DataEntity inDE = parameters.getDataEntity();
    inDE.set("sc_condition", "center_nm");
    inDE.set("sc_ps", "10000");

    if(!parameters.isEmpty("sc_str")) listDR01 = centerMgr.pageCenter(inDE.getMap());
%>
<%@ include file="/inc/www_popup_header.jsp"%>
<script>
function fw_domReady(){
    $("#btnList").click(function(e){
        if(!frm.validate()) return false;
        frm.processParameters();
        frm.submitForm3(window, "center_list_pop.jsp");
    });

    $(".btnSelect").click(function(e){
        var seq = $(this).attr("seq");
        var name = $(this).html();

        opener.<%=parameters.print("sc_func", "selectCenter")%>(seq, name);
        self.close();
    });

    $("#tmp_str").focus();
}

function fw_onenterdown1(obj){
    if(obj.name == "tmp_str") $("#btnList").click();
}
</script>
<div class="pop_layer2" style="padding-bottom:0px;">
   <div class="pop_title" style="background:url(''); padding-top:6px; padding-bottom:12px;">
      <h1><img src="<%=imageRoot%>www/join/h1_pop01.gif" !alt="사업단찾기" /></h1>
      <p><a href="javascript:self.close();"><img src="<%=imageRoot%>www/join/btn_x.gif" !alt="닫기" /></a></p>
   </div>
   <div class="search_pop">
        <fieldset>
                <input type="text" class="input_pop" style="width:200px;" name="tmp_str" id="tmp_str" value="<%=parameters.print("sc_str")%>" required msg="사업단 명을 입력하세요." />
                <input type="image" src="<%=imageRoot%>www/join/btn_search.gif" !alt="검색" id="btnList" />
        </fieldset>
      </div><!--search_pop-->

    <div class="roll_layer">
<%
    while(listDR01.hasNext()){
%>
    <div style="padding:2px 5px;"><a href="#" class="btnSelect" seq="<%=listDR01.print("SEQ")%>"><%=listDR01.print("CENTER_NM")%> (<%=listDR01.print("university")%>)</a></div>
<%
    }
%>
    </div><!--roll_layer-->
</div><!--pop_layer-->
<%@ include file="/inc/www_popup_footer.jsp"%>
<%@ include file="/inc/destroy.jsp"%>