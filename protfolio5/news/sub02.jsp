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

    parameters.setDefault("sc_board_seq", 2);

    BoardManager boardMgr = new BoardManager(exec, parameters);

    DataEntity boardDE = boardMgr.getBoard(parameters.print("sc_board_seq"));

    parameters.set("pageSize", 4);
    listDR01 = boardMgr.pageBulletinUser();
    DataRecord categoryDR = boardMgr.listBoardCategory();


    parameters.set("menu1", "4");
    parameters.set("menu2", "2");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function submitPage(page){
    document.frm.page.value = page;
    frm.submitForm3(window, "sub02.jsp");
}

function fw_domReady(){
    $("#btnList").click(function(){
        frm.processParameters();
        frm.submitForm3(window, "sub02.jsp");

        return false;
    });

    $(".btnView").click(function(e){
        frm.setParameter("pk_seq", $(this).attr("seq"));
        frm.submitForm3(window, "sub02_view.jsp");
        return false;
    });

    var cond = "<%=parameters.print("sc_condition")%>";
    if(cond != "") document.frm.tmp_condition.value = cond;
}

function fw_onenterdown1(obj)
{
    if(obj == document.frm.tmp_str) {
        $("#btnList").click();
    }
}
</script>
			<div class="top_title pr_title">
				<div class="top_txt">
					<dl>
						<dt>홍보자료</dt>
						<dd>PR Materials</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="pr_cont">
					<div class="pr_tab">
						<ul>
							<li class="on"><a href="../news/sub02.jsp" class="mob_on">브로슈어</a></li>
							<li class="mob_tab"><a href="../news/sub03.jsp">카달로그</a></li>
							<li class="barx mob_tab"><a href="../news/sub04.jsp">홍보영상</a></li>
						</ul>
						<ul class="mob_tab_box">
							<li class="on"><a href="javascript:void(0);" class="mob_on">브로슈어</a></li>
							<li class="mob_tab"><a href="../news/sub03.jsp">카달로그</a></li>
							<li class="barx mob_tab"><a href="../news/sub04.jsp">홍보영상</a></li>
						</ul>
					</div>
					<div class="pr_list">

<%
    while(listDR01.hasNext())
    {
        String seq2 = listDR01.getString("seq2");
        String []arr = StringUtils.split(seq2, "_");
        String blankStr = "";
        if(arr.length >= 2){
            for(int j=0 ; j<arr.length ; j++) blankStr += "&nbsp;&nbsp;";
            blankStr += "<img src=\"" + imageRoot + "admin/ico_reply.gif\" />";
        }

        String title = blankStr + StringUtils.cutstr(listDR01.getString("TITLE"), 50, "...");
        String num = "";
        String bgcolor = "";

        if(listDR01.print("NOTICE_YN").equals("Y")){
            num = "알림";
            bgcolor = "#e2f3fa";
        }
        else{
            num = listDR01.getRowNum() + "";
            bgcolor = "";
        }

        String before7 = StringUtils.getDateStr(0, 0, -6, now.substring(0, 10));

        if(listDR01.isEqual("SMALL_IMG_PATH", ""))
        {
            listDR01.set("SMALL_IMG_PATH", "/web/images/common/default_catalog_brochure.jpg");
        }
%>
                        <div class="broc_box <%=listDR01.getIndex() == 2 || listDR01.getIndex() == 3 ? "broc_barx" : ""%>">
							<div class="broc_img">
								<img src="<%=listDR01.print("SMALL_IMG_PATH")%>" alt="<%=listDR01.print("title")%>"/>
							</div>
							<div class="broc_txt">
								<dl>
									<dt><%=listDR01.print("title")%></span></dt>
									<dd><%=listDR01.print("content")%></dd>
								</dl>
<%
        if(!listDR01.isEqual("FILE_SEQ", ""))
        {
%>
								<button type="button" onclick="location.href='<%=webRoot%>common/bulletin_download.jsp?seq=<%=listDR01.print("FILE_SEQ")%>' "><span>다운로드</span></button>
<%
        }
%>

							</div>
						</div>

<%
    }

    if(listDR01.size() == 0){
%>
<div style="text-align:center; padding-top:20px; padding-bottom:20px;">
    조회된 결과가 없습니다.
</div>
<%
    }
%>
					</div>
					<div class="num">
						<%@ include file="/inc/user_page_navigator.jsp"%>
					</div>
					<div class="view">
						<p>* PDF파일을 보시려면 Adobe Acrobat Reader를 설치하셔야 합니다.<button type="button" onclick="window.open('https://get.adobe.com/kr/reader/');">뷰어 다운로드</button></p>

					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>