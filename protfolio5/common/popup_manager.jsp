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

    PopupManager popMgr = new PopupManager(exec, parameters);
    if(parameters.isEqual("act", "preview")){
        DataEntity de = popMgr.getPopup(parameters.print("sc_seq"));
        listDR01.addDataEntity(de);
    }

%>
<%@ include file="/inc/user_default_header.jsp"%>
<%
    while(listDR01.hasNext()){
        String value = listDR01.print("SEQ") + ":" + listDR01.print("SCROLL_YN") + ":" +
            listDR01.print("WIDTH") + ":" + listDR01.print("HEIGHT") + ":" +
            listDR01.print("POS_CENTER_YN") + ":" + listDR01.print("POS_LEFT") + ":" + listDR01.print("POS_TOP");
%>
<input type="text" class="popup_metadata" value="<%=value%>" />
<%
    }
%>

<script>
function fw_domReady(){
    var act = "<%=parameters.print("act")%>";
    $(".popup_metadata").each(function(){
        var arr = this.value.split(":");
        var v = getCookie("popup_" + arr[0]);
        if(v != "" && act != "preview") return;

        var seq = arr[0];
        arr[1] = arr[1] == "Y" ? "yes" : "no";
        if(arr[4] == "Y") {

            openPopup("popup.jsp?seq=" + arr[0], "popup_" + arr[0], arr[2], arr[3], arr[1]);

        }
        else openPopup2("popup.jsp?seq=" + arr[0], "popup_" + arr[0], arr[2], arr[3], arr[5], arr[6], arr[1]);


    });
}
</script>


<%@ include file="/inc/user_default_footer.jsp"%>
<%@ include file="/inc/destroy.jsp"%>