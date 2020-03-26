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
    String seq = parameters.print("seq");
    String now = StringUtils.getToday2();

    StringBuilder sql = new StringBuilder();

    sql.setLength(0);
    sql.append("select * from popup where display_homepage_yn='Y' and (date1 <= '" + StringUtils.getToday() + "' and date2>='" + StringUtils.getToday() + "') order by seq desc \n");

    //out.println(sql.toString());
    parameters.set("query", sql.toString());
    parameters.set("params", null);
    listDR01 = exec.getGeneralList(parameters);


%>
<%@ include file="/inc/user_default_header.jsp"%>
<script>
function fw_domReady()
{

    parent.document.getElementById("popup_zone").innerHTML = document.getElementById("popup_zone_ifr").outerHTML

}
</script>

<div id="popup_zone_ifr">
<%
    String sb = "";
    String sb1 = "";
    int height1 = 0;

    while(listDR01.hasNext())
    {
        height1 = Integer.parseInt(listDR01.print("height")) + 50;

//        sb1 = listDR01.print("seq") + "$:;" + listDR01.print("width") + "$:;" + height1 + "$:;" + listDR01.print("pos_top") + "$:;" + listDR01.print("pos_left") + "$:;" + listDR01.print("pos_center_yn") + "$:;" + listDR01.print("scroll_yn") + "$:;" + listDR01.print("cookie_yn") + "$:;;;";
//
//        sb = sb + sb1;
%>
		<div style='position:absolute; display:inline; left:<%=listDR01.print("pos_left")%>; top:<%=listDR01.print("pos_top")%>; z-index:2000; width:<%=listDR01.print("width")%>; height:<%=height1%>;' id='halla_popup<%=listDR01.print("seq")%>'><div id='halla_popup<%=listDR01.print("seq")%>_ifr'><%=listDR01.print("content")%></div></div>
<%
    }
%>
</div>
<%@ include file="/inc/user_default_footer.jsp"%>
<%@ include file="/inc/destroy_test.jsp"%>