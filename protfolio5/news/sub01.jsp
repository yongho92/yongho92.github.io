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

    parameters.setDefault("sc_board_seq", 1);

    BoardManager boardMgr = new BoardManager(exec, parameters);

    DataEntity boardDE = boardMgr.getBoard(parameters.print("sc_board_seq"));

    parameters.set("pageSize", 10);
    listDR01 = boardMgr.pageBulletinUser();
    DataRecord categoryDR = boardMgr.listBoardCategory();

    String condStr = "전체";

    if(parameters.isEqual("sc_cond", "2")) condStr = "제목";
    else if(parameters.isEqual("sc_cond", "3")) condStr = "내용";

    parameters.set("menu1", "4");
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
</script>

<input type="hidden" name="tmp_cond" id="tmp_cond" value="<%=StringUtils.nvl(parameters.print("sc_cond"), "1")%>" />

			<div class="top_title">
				<div class="top_txt">
					<dl>
						<dt>유라소식</dt>
						<dd>NEWS</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="news_box">
					<div class="news_sect">
						<form id="sub_ser" name="sub_ser" method="post" class="sub_ser_box">
							<div class="sub_search">
								<div class="n_sear selectbox">
									<dl class="dropdown">
										<dt><a href="javascript:void(0);"><span><%=condStr%></span></a></dt>
										<dd>
											<ul class="dropdown2">
												<li><a href="javascript:void(0);">전체</a></li>
												<li><a href="javascript:void(0);">제목</a></li>
                                                <li><a href="javascript:void(0);">내용</a></li>
											</ul>
										</dd>
									</dl>
								</div>
								<div class="sub_ser">
									<label class="labelx">검색</label>
									<input type="text" id="tmp_str" class="search" name="tmp_str" value="<%=parameters.print("sc_str")%>"/>
									<button type="button" id="btnList">검색</button>
								</div>
							</div>
						</form>
						<div class="all_txt">
							<p>총 <span><%=listDR01.getTotalCount()%></span>개의 소식이 있습니다.</p>
						</div>
					</div>
					<div class="news_list">
						<table>
							<caption>유라소식</caption>
							<thead>
								<tr>
									<th class="title01" scope="col">번호</th>
									<th class="title02" scope="col">매체명</th>
									<th class="title03" scope="col">제목</th>
									<th class="title04" scope="col">작성일</th>
								</tr>
							</thead>
							<tbody>
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
								<tr>
									<td class="dn"><%=num%></td>
									<td class="dn"><%=listDR01.print("tmp_field1")%></td>
									<td class="left">
<%
        if(!listDR01.isEqual("url1", ""))
        {
%>
                                    <a href="<%=listDR01.print("url1")%>" target="_blank">
<%
        }
%>
                                    <%=listDR01.print("title")%>
<%
        if(!listDR01.isEqual("url1", ""))
        {
%>
                                    </a>
<%
        }
%>
										<div class="mob_pres">
											<span><%=listDR01.print("tmp_field1")%></span>
											<span>｜</span>
											<span><%=listDR01.getDate("regi_date")%></span>
										</div>
									</td>
									<td class="dn"><%=listDR01.getDate("regi_date")%></td>
								</tr>
<%
    }

    if(listDR01.size() == 0){
%>
<tr>
<td colspan="4" >
    조회된 결과가 없습니다.
</td>
</tr>
<%
    }
%>
							</tbody>
						</table>
						<div class="num">
                        <%@ include file="/inc/user_page_navigator.jsp"%>


						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>