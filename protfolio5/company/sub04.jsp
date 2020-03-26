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

    //연혁
    parameters.setDefault("sc_board_seq", 8);
    parameters.setDefault("sc_category_text", "2010");

    BoardManager boardMgr = new BoardManager(exec, parameters);

    DataEntity boardDE = boardMgr.getBoard(parameters.print("sc_board_seq"));


    DataRecord categoryDR = boardMgr.listBoardCategory();

    DataRecord tmpField1DR = boardMgr.listBulletinTmpfield1(parameters.print("sc_category_text"), parameters.print("sc_board_seq"));


    parameters.set("menu1", "1");
    parameters.set("menu2", "4");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{

}
</script>
            <div class="top_title his_title">
            <div class="top_txt">
                <dl>
                    <dt>연혁</dt>
					<dd>History</dd>
                </dl>
            </div>
            </div>
            <%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="his_cont">
					<h3 class="sub_title emp_title"><span><span class="black2"><span class="black">유라코퍼레이션</span>은 <strong>오늘을 발판으로 내일을 향해</strong> 나아가고 있습니다.</span></h3>
					<div class="his_tab ">
						<ul>
							<li><a href="../company/sub04.jsp" class="on">2010's</a></li>
							<li><a href="../company/sub05.jsp">2000's</a></li>
							<li class="bgx"><a href="../company/sub06.jsp">1990's</a></li>
						</ul>
						<ul class="mob_tab_box">
							<li class="mob_tab on"><a href="javascript:void(0);" class="mob_on">2010년대</a></li>
							<li><a href="../company/sub05.jsp">2000년대</a></li>
							<li><a href="../company/sub06.jsp">1990년대</a></li>
						</ul>
					</div>
					<div class="his_list">
						<p class="tit"><span>2010's</span></p>
						<%
    while(tmpField1DR.hasNext())
    {
        String className = "his_r"; //his_l

        if(tmpField1DR.getIndex() % 2 == 1)
        {
            className = "his_l";
        }

        parameters.set("sc_tmp_field1", tmpField1DR.print("tmp_field1"));
        parameters.set("pageSize", 100);
        listDR01 = boardMgr.pageBulletinUser();
%>
                        <div class="his_box ">
							<div class="his <%=className%>">
							<dl>
                                <dt><%=tmpField1DR.print("tmp_field1")%></dt>

<%
        while(listDR01.hasNext())
        {
%>
								<dd><span><strong><%=listDR01.print("tmp_field2")%></strong> <%=listDR01.print("title")%></span>

<%
            if(!listDR01.isEqual("small_img", ""))
            {
%>
									<div class="his_img">
										<img src="<%=listDR01.print("SMALL_IMG_PATH")%>" alt="<%=listDR01.print("tmp_field2")%> <%=listDR01.print("title")%>"/>
									</div>
<%
            }
%>


								</dd>
<%
        }
%>



							</dl>

							</div>
						</div>
<%
    }
%>





					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>