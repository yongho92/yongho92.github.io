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
	StringBuilder sql = new StringBuilder();
    PopupManager popMgr = new PopupManager(exec, parameters);
    String seq = parameters.print("seq");
    String now = StringUtils.getToday2();

	sql.setLength(0);
	sql.append("select * from ENG_POPUP where seq='" + seq + "' ");
	parameters.set("query", sql.toString());
	DataEntity popDE = exec.getGeneralSingle(parameters);


    if(popDE.print("DATE1").compareTo(now.substring(0, 10)) > 0 || popDE.print("DATE2").compareTo(now.substring(0, 10)) < 0){
        //out.println(StringUtils.windowClose("기간이 만료된 팝업입니다."));
        //return;
    }
%>
<%@ include file="/inc/eng_user_default_header.jsp"%>
<script>
function fw_domReady(){
    $("#btnClose").click(function(e){
        if($("#cookie_yn").attr("checked")){
            setCookie("pop_<%=popDE.print("SEQ")%>", "y");
        }
        self.close();
    });

    viewPopup('<%=popDE.print("seq")%>');
}

function closePopup(index){
	parent.document.getElementById(index).style.display = "none";
}

function viewPopup(index)
{
    parent.parent.document.getElementById("halla_popup" + index + "_ifr").innerHTML = document.getElementById("popup_content_" + index).outerHTML
}
</script>

<body>

<span id="popup_content_<%=popDE.print("seq")%>">
<div style="border:0;">
<%=popDE.print("CONTENT")%>
</div>

<div>
<table border="0" cellpadding="0" cellspacing="10" style="background:#1f2430; width:610px;">
	<tr>
        <td align="right"><a href="javascript:closePopup('halla_popup<%=popDE.print("seq")%>');"><img src="http://hrd.halla.com/eng/web/images/common/popup_btn_close.jpg" alt="Close" border="0" align="right" /></a><% if(popDE.isEqual("cookie_yn", "Y")){ %><a href="javascript:checkChk('halla_popup<%=popDE.print("seq")%>');" name="chk"><img src="http://hrd.halla.com/eng/web/images/common/popup_btn_close1.jpg" alt="Don't show popup only today" border="0" align="right" /></a><% } %></td>
    </tr>
</table>
</div>
</span>
<!--
<div style="background:#1f2430; padding-top:10px ; text-align:right; "> <a title="1일간 팝업 열지 않기" style="display:inline-block; padding:6px 10px; color:#fff; font-size:13px; background:#2f3545; border:1px solid #151b29; margin:0; text-decoration:none;" href="/index.jsp"><span class="none">1일간 팝업 열지 않기</span></a> <a title="팝업 닫기" class="popup_close" href="/index.jsp"><span class="none">팝업 닫기</span></a>
</div> -->

<%@ include file="/inc/eng_user_default_footer.jsp"%>
<%@ include file="/inc/destroy.jsp"%>