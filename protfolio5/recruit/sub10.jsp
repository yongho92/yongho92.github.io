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

    parameters.setDefault("sc_board_seq", 5);

    BoardManager boardMgr = new BoardManager(exec, parameters);

    DataEntity boardDE = boardMgr.getBoard(parameters.print("sc_board_seq"));

    parameters.set("pageSize", 10);
    listDR01 = boardMgr.pageBulletinUser();
    DataRecord categoryDR = boardMgr.listBoardCategory();

    String condStr = "전체";

    if(parameters.isEqual("sc_cond", "2")) condStr = "제목";
    else if(parameters.isEqual("sc_cond", "3")) condStr = "내용";


    parameters.set("menu1", "5");
    parameters.set("menu2", "4");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function submitPage(page){
    document.frm.page.value = page;
    frm.submitForm3(window, "sub10.jsp");
}

function fw_domReady(){
    $("#btnList").click(function(){
        frm.processParameters();
        frm.submitForm3(window, "sub10.jsp");

        return;
    });

    $(".btnView").click(function(e){
        frm.setParameter("pk_seq", $(this).attr("seq"));
        frm.submitForm3(window, "sub10_view.jsp");
        return;
    });

    var cond = "<%=parameters.print("sc_condition")%>";
    if(cond != "") document.frm.tmp_condition.value = cond;
}

function goList(category)
{
    frm.setParameter("sc_category_text", category);
    frm.setParameter("sc_str", "");
    frm.setParameter("sc_cond", "");
    frm.submitForm3(window, "sub10.jsp");
}

function fw_onenterdown1(obj)
{
    if(obj == document.frm.tmp_str) {
        $("#btnList").click();
    }
}
</script>

<input type="hidden" name="tmp_cond" id="tmp_cond" value="<%=StringUtils.nvl(parameters.print("sc_cond"), "1")%>" />
<input type="hidden" name="tmp_category_text" id="tmp_category_text" value="" />

			<div class="top_title ment_title">
				<div class="top_txt">
					<dl>
						<dt>채용공고</dt>
						<dd>RECRUIT MENT</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="rec_ment">
					 <div class="ment_tab">
						<span class="tab_txt" id="txt"><%=parameters.print("sc_category_text", "전체")%></span>
						<ul class="ment_web">
							<li class="" id="rec1"><a href="javascript:;" onclick="goList('');" <%=parameters.isEqual("sc_category_text", "") ? "class='on'" : ""%>>전체</a></li>
							<li id="rec2"><a href="javascript:;" onclick="goList('신입');" <%=parameters.isEqual("sc_category_text", "신입") ? "class='on'" : ""%>>신입</a></li>
							<li id="rec3"><a href="javascript:;" onclick="goList('경력');" <%=parameters.isEqual("sc_category_text", "경력") ? "class='on'" : ""%>>경력</a></li>
							<li id="rec4" class="backn"><a href="javascript:;" onclick="goList('현재직');" <%=parameters.isEqual("sc_category_text", "현재직") ? "class='on'" : ""%>>현재직</a></li>
						</ul>
						<!--<ul class="mob_tab_box">
							<li <%=parameters.isEqual("sc_category_text", "") ? "class='mob_tab on'" : ""%>><a href="javascript:void(0);"  <%=parameters.isEqual("sc_category_text", "") ? "class='mob_on'" : ""%>>전체</a></li>

							<li <%=parameters.isEqual("sc_category_text", "신입") ? "class='mob_tab on'" : ""%>><a href="javascript:void(0);"  <%=parameters.isEqual("sc_category_text", "신입") ? "class='mob_on'" : ""%>>신입</a></li>

							<li <%=parameters.isEqual("sc_category_text", "경력") ? "class='mob_tab on'" : ""%>><a href="javascript:void(0);" <%=parameters.isEqual("sc_category_text", "경력") ? "class='mob_on'" : ""%>>경력</a></li>

							<li <%=parameters.isEqual("sc_category_text", "현재직") ? "class='mob_tab on'" : ""%>><a href="javascript:void(0);"  <%=parameters.isEqual("sc_category_text", "현재직") ? "class='mob_on'" : ""%>>현재직</a></li>
						</ul> -->
					</div>
					<div class="ment_box">
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
								<p>총 <span><%=listDR01.getTotalCount()%></span>건의 채용공고가 있습니다.</p>
							</div>
						</div>
						<div class="ment_list">
							<table>
								<caption>채용공고 게시판</caption>
								<thead>
									<tr>
										<th class="m_title1">채용구분</th>
										<th class="m_title2">채용분야</th>
										<th class="m_title3">채용기간</th>
										<th class="m_title4">채용현황</th>
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

        //<p>채용마감</p>
        //<p class="on"><span>지원하기</span></p>

        String statusStr = "<p>채용마감</p>";
        int nowDate = Integer.parseInt(StringUtils.replace(now.substring(0, 10), "-", ""));
        int date1 = Integer.parseInt(StringUtils.replace(listDR01.print("tmp_field1"), "-", ""));
        int date2 = Integer.parseInt(StringUtils.replace(listDR01.print("tmp_field2"), "-", ""));

        if(date1 <= nowDate && date2 >= nowDate) statusStr = "<p class='on btnView' seq='" + listDR01.print("bulletin_seq") + "'><span>지원하기</span></p>";

%>
									<tr>
										<td class="dn"><%=listDR01.print("category_text")%></td>
										<td class="left"><a href="#view<%=listDR01.print("BULLETIN_SEQ")%>" class="btnView" seq="<%=listDR01.print("BULLETIN_SEQ")%>"><%=listDR01.print("title")%></a>
											<div class="mob_pres">
												<span><%=listDR01.print("category_text")%></span>
												<span>｜</span>
												<span><%=listDR01.print("tmp_field1")%> ~ <%=listDR01.print("tmp_field2")%></span>
											</div>
										</td>
										<td class="dn"><%=listDR01.print("tmp_field1")%> ~ <%=listDR01.print("tmp_field2")%></td>
										<td>

                                        <%=statusStr%>

                                        </td>
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
			</div>
<%@ include file="/inc/user_footer.jsp"%>