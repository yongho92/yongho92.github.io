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

    parameters.setDefault("sc_board_seq", 7);

    if(parameters.isEqual("sc_category_text", ""))
    {
        parameters.setDefault("sc_category_text", "매뉴얼");
    }

    BoardManager boardMgr = new BoardManager(exec, parameters);

    DataEntity boardDE = boardMgr.getBoard(parameters.print("sc_board_seq"));

    parameters.set("pageSize", 10);
    listDR01 = boardMgr.pageBulletinUser();
    DataRecord categoryDR = boardMgr.listBoardCategory();

    String condStr = "전체";

    if(parameters.isEqual("sc_cond", "2")) condStr = "제목";
    else if(parameters.isEqual("sc_cond", "3")) condStr = "내용";


    parameters.set("menu1", "6");
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

function goList(category)
{
    frm.setParameter("sc_category_text", category);
    frm.setParameter("sc_str", "");
    frm.setParameter("sc_cond", "");
    frm.submitForm3(window, "sub02.jsp");
}
</script>

<input type="hidden" name="tmp_cond" id="tmp_cond" value="1" />

			<div class="top_title pro_title">
				<div class="top_txt">
					<dl>
						<dt>제품 다운로드</dt>
						<dd>Product Download</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="down_cont">
					<div class="cust_tab pro_tab">
						<span class="tab_txt" id="txt"><%=parameters.print("sc_category_text")%></span>
						<ul class="cust_tablist">
							<li <%=parameters.isEqual("sc_category_text", "매뉴얼") ? "class='on'" : ""%>><a href="javascript:;" onclick="goList('매뉴얼');" <%=parameters.isEqual("sc_category_text", "매뉴얼") ? "class='mob_on'" : ""%>>매뉴얼</a></li>

							<li <%=parameters.isEqual("sc_category_text", "프로그램") ? "class='on'" : ""%>><a href="javascript:;" onclick="goList('프로그램');" <%=parameters.isEqual("sc_category_text", "프로그램") ? "class='mob_on'" : ""%>>프로그램</a></li>

							<li <%=parameters.isEqual("sc_category_text", "인증서") ? "class='on'" : ""%>><a href="javascript:;" onclick="goList('인증서');" <%=parameters.isEqual("sc_category_text", "인증서") ? "class='mob_on'" : ""%>>인증서</a></li>

							<li <%=parameters.isEqual("sc_category_text", "업그레이드") ? "class='on'" : ""%>><a href="javascript:;" onclick="goList('업그레이드');" <%=parameters.isEqual("sc_category_text", "업그레이드") ? "class='mob_on'" : ""%>>업그레이드</a></li>

							<li <%=parameters.isEqual("sc_category_text", "동영상") ? "class='on'" : ""%>><a href="javascript:;" onclick="goList('동영상');" <%=parameters.isEqual("sc_category_text", "동영상") ? "class='mob_on'" : ""%>>동영상</a></li>

							<li class="barx <%=parameters.isEqual("sc_category_text", "보조금") ? "on" : ""%>"><a href="javascript:;" onclick="goList('보조금');" <%=parameters.isEqual("sc_category_text", "보조금") ? "class='mob_on'" : ""%>>보조금</a></li>
						</ul>
<!-- 						<ul class="mob_tab_box">
							<li class="<%=parameters.isEqual("sc_category_text", "매뉴얼") ? "on" : ""%>"><a href="javascript:void(0);" <%=parameters.isEqual("sc_category_text", "매뉴얼") ? "class='mob_on on'" : ""%>>매뉴얼</a></li>

							<li class="mob_tab <%=parameters.isEqual("sc_category_text", "프로그램") ? "on" : ""%>"><a href="javascript:void(0);" <%=parameters.isEqual("sc_category_text", "프로그램") ? "class='mob_on on'" : ""%>>프로그램</a></li>

							<li class="mob_tab <%=parameters.isEqual("sc_category_text", "인증서") ? "on" : ""%>"><a href="javascript:void(0);" <%=parameters.isEqual("sc_category_text", "인증서") ? "class='mob_on on'" : ""%>>인증서</a></li>

							<li class="mob_tab <%=parameters.isEqual("sc_category_text", "업그레이드") ? "on" : ""%>"><a href="javascript:void(0);" <%=parameters.isEqual("sc_category_text", "업그레이드") ? "class='mob_on on'" : ""%>>업그레이드</a></li>

							<li class="mob_tab <%=parameters.isEqual("sc_category_text", "동영상") ? "on" : ""%>"><a href="javascript:void(0);" <%=parameters.isEqual("sc_category_text", "동영상") ? "class='mob_on on'" : ""%>>동영상</a></li>

							<li class="barx mob_tab <%=parameters.isEqual("sc_category_text", "보조금") ? "on" : ""%>"><a href="javascript:void(0);" <%=parameters.isEqual("sc_category_text", "보조금") ? "class='mob_on on'" : ""%>>보조금</a></li>
						</ul> -->
					</div>
					<div class="down_txt">
						<p>※ 제품 다운로드는 PC버전에서만 가능합니다.</p>
					</div>
					<div class="pro_down">
						<div class="pro_sear">
							<form id="sub_ser" name="sub_ser" method="post">
							<div class="sub_search">
								<div class="sub_ser">
									<label class="labelx">검색</label>
									<input type="text" id="tmp_str" class="search" name="tmp_str" value="<%=parameters.print("sc_str")%>" placeholder="모델명을 검색하세요.">
									<button type="button" id="btnList">검색</button>
								</div>
							</div>
						</form>
						</div>
						<div class="down_list">

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
            listDR01.set("SMALL_IMG_PATH", "/web/images/common/default_product.jpg");
        }
%>
                            <div class="down_box">
								<div class="pro_top">
									<div class="pro_img">
										<img src="<%=listDR01.print("SMALL_IMG_PATH")%>" alt="<%=listDR01.print("title")%>"/>
									</div>
									<div class="pro_txt">
										<p><%=listDR01.print("title")%></p>
<%
        if(!listDR01.isEqual("FILE_SEQ", ""))
        {
%>
                                        <button type="button" onclick="location.href='<%=webRoot%>common/bulletin_download.jsp?seq=<%=listDR01.print("FILE_SEQ")%>' ">다운로드</button>
<%
        }
%>
									</div>
								</div>
								<div class="pro_none">
									<ul>
										<%=listDR01.print("content")%>
									</ul>
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
					</div>
					<div class="num">
						<%@ include file="/inc/user_page_navigator.jsp"%>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>