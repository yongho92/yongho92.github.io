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

    parameters.setDefault("sc_board_seq", 6);

    BoardManager boardMgr = new BoardManager(exec, parameters);

    DataEntity boardDE = boardMgr.getBoard(parameters.print("sc_board_seq"));

    parameters.set("pageSize", 10);
    listDR01 = boardMgr.pageBulletinUser();
    DataRecord categoryDR = boardMgr.listBoardCategory();

    String condStr = "전체";

    if(parameters.isEqual("sc_cond", "2")) condStr = "제목";
    else if(parameters.isEqual("sc_cond", "3")) condStr = "내용";


    parameters.set("menu1", "6");
    parameters.set("menu2", "1");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function submitPage(page){
    document.frm.page.value = page;
    frm.submitForm3(window, "sub01.jsp");
}

function fw_domReady(){
    $("#btnList").click(function(){
        frm.processParameters();
        frm.submitForm3(window, "sub01.jsp");

        return false;
    });

    $(".btnView").click(function(e){
        frm.setParameter("pk_seq", $(this).attr("seq"));
        frm.submitForm3(window, "sub01_view.jsp");
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

function goList(category)
{
    frm.setParameter("sc_category_text", category);
    frm.setParameter("sc_str", "");
    frm.setParameter("sc_cond", "");
    frm.submitForm3(window, "sub01.jsp");
}
</script>
			<div class="top_title faq_title">
				<div class="top_txt">
					<dl>
						<dt>자주 묻는 질문</dt>
						<dd>FAQ</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="cust_cont">
					<div class="cust_tab">
						<span class="tab_txt" id="txt"><%=parameters.print("sc_category_text", "전체")%></span>
						<ul class="cust_tablist">
							<li <%=parameters.isEqual("sc_category_text", "") ? "class='on'" : ""%>><a href="javascript:;" onclick="goList('');" <%=parameters.isEqual("sc_category_text", "") ? "class='mob_on'" : ""%>>전체</a></li>

							<li <%=parameters.isEqual("sc_category_text", "제품") ? "class='on'" : ""%>><a href="javascript:;" onclick="goList('제품');" <%=parameters.isEqual("sc_category_text", "제품") ? "class='mob_on'" : ""%>>제품</a></li>

							<li <%=parameters.isEqual("sc_category_text", "채용") ? "class='on'" : ""%>><a href="javascript:;" onclick="goList('채용');" <%=parameters.isEqual("sc_category_text", "채용") ? "class='mob_on'" : ""%>>채용</a></li>

							<li <%=parameters.isEqual("sc_category_text", "윤리경영") ? "class='on'" : ""%>><a href="javascript:;" onclick="goList('윤리경영');" <%=parameters.isEqual("sc_category_text", "윤리경영") ? "class='mob_on'" : ""%>>윤리경영</a></li>

							<li class="barx <%=parameters.isEqual("sc_category_text", "기타") ? "on" : ""%>"><a href="javascript:;" onclick="goList('기타');" <%=parameters.isEqual("sc_category_text", "기타") ? "class='mob_on'" : ""%>>기타</a></li>
						</ul>
<!-- 						<ul class="mob_tab_box">
							<li <%=parameters.isEqual("sc_category_text", "") ? "class='on'" : ""%>><a href="#" <%=parameters.isEqual("sc_category_text", "") ? "class='mob_on on'" : ""%>>전체</a></li>
							<li class="mob_tab <%=parameters.isEqual("sc_category_text", "제품") ? "on" : ""%>"><a href="#" <%=parameters.isEqual("sc_category_text", "") ? "class='mob_on on'" : ""%>>제품</a></li>
							<li class="mob_tab <%=parameters.isEqual("sc_category_text", "채용") ? "on" : ""%>"><a href="#" <%=parameters.isEqual("sc_category_text", "") ? "class='mob_on on'" : ""%>>채용</a></li>
							<li class="mob_tab <%=parameters.isEqual("sc_category_text", "윤리경영") ? "on" : ""%>"><a href="#" <%=parameters.isEqual("sc_category_text", "") ? "class='mob_on on'" : ""%>>윤리경영</a></li>
							<li class="barx mob_tab <%=parameters.isEqual("sc_category_text", "기타") ? "on" : ""%>"><a href="#" <%=parameters.isEqual("sc_category_text", "") ? "class='mob_on on'" : ""%>>기타</a></li>
						</ul> -->
					</div>
					<div class="faq">

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
%>

						<div class="faq_box">
							<div class="faq_q">
								<span>[<%=listDR01.print("category_text")%>]</span>
								<p><%=listDR01.print("title")%></p>
							</div>
							<div class="faq_a">
								<p><%=listDR01.print("content")%></p>
							</div>
						</div>
<%
    }

    if(listDR01.size() == 0){
%>
<div style="text-align:center; padding-top:20px;">
    조회된 결과가 없습니다.
</div>
<%
    }
%>
					</div>
					<div class="num">
						<%@ include file="/inc/user_page_navigator.jsp"%>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>