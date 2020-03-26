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

    BoardManager boardMgr = new BoardManager(exec, parameters);
    DataRecord listDR02 = new DataRecord();
    DataRecord listDR03 = new DataRecord();

    String board_seq = StringUtils.print(request.getParameter("sc_board_seq"));
    String pk_seq = StringUtils.print(request.getParameter("pk_seq"));

    DataEntity boardDE = boardMgr.getBoard(parameters.print("sc_board_seq"));

    int c = boardMgr.addBulletinHit(parameters.print("pk_seq"));
    if(c == 0){
        errorMsg("해당하는 게시물이 없습니다.");
        return;
    }

    singleDE01 = boardMgr.getBulletin(parameters.print("pk_seq"));

    DataEntity pre01 = boardMgr.getPreBulletin();
    DataEntity next01 = boardMgr.getNextBulletin();

    parameters.set("menu1", "5");
    parameters.set("menu2", "4");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady(){
    var frm = document.frm;
    $("#btnList").click(function(){
        frm.submitForm3(window, "sub10.jsp");
        return false;
    });
}

function goView(seq)
{
    frm.setParameter("pk_seq", seq);
    frm.submitForm3(window, "sub10_view.jsp");
}
</script>
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
					<div class="ment_view">
						<div class="view_tit">
							<strong><%=singleDE01.print("category_text")%></strong>
							<h3><%=singleDE01.print("title")%><span>채용기간 <%=singleDE01.print("tmp_field1")%> ~ <%=singleDE01.print("tmp_field2")%></span></h3>

						</div>

						<div class="view_img">
							<%
    String content = singleDE01.print("content");
    if(!singleDE01.print("html_yn").equals("Y")) content = StringUtils.nl2br(content);
    String path = bizProp.getWebPath("bulletin");
    listDR03.setInitIndex();
    while(listDR03.hasNext())
    {
        //out.println(listDR03.print("file_typ_cd"));
        if(listDR03.print("file_typ_cd").equals("img") || listDR03.print("file_typ_cd").equals("mov")) {}
        else continue;

        if(listDR03.print("file_typ_cd").equals("img"))
        {
            String img = listDR03.print("sf");
            //if(!img.equals("")) img = "<P ALIGN=CENTER><IMG NAME='bulletin_img" + listDR03.print("seq") + "' SRC='" + path + "/" + img + "' BORDER=0></P>";
            if(!img.equals("")) img = "<P ALIGN=CENTER><IMG NAME='bulletin_img" + listDR03.print("bfile_seq") + "' SRC='" + listDR03.print("web_path") + "' BORDER=0></P>";
            else img = "";
%>
        <%=img%>
<%
        }
    }

    listDR03.setInitIndex();
    while(listDR03.hasNext())
    {
        if(listDR03.print("file_typ_cd").equals("mov"))
        {
            String mov = listDR03.print("sf").trim();
            if(!mov.equals("")) mov = "<P ALIGN=CENTER><SCRIPT>printStr(\"<EMBED SRC='" + listDR03.print("web_path") + "'></EMBED>\");</SCRIPT></P>";
            else mov = "";
%>
            <%=mov%>
<%
        }
    }
%>
          <br /><%=content%><br />
						</div>
						<div class="next_txt">


							<p class="txt_bor"><span class="t_next">다음글</span>
<%
    if(next01.isEqual("bulletin_seq", ""))
    {
%>
                            다음글이 없습니다.
<%
    }
    else
    {
%>
                            <a href="javascript:goView('<%=next01.print("bulletin_seq")%>');"><%=next01.print("title")%></a>
<%
    }
%>
                            </p>

							<p><span class="t_prev">이전글 </span>
<%
    if(pre01.isEqual("bulletin_seq", ""))
    {
%>
                            이전글이 없습니다.
<%
    }
    else
    {
%>
                            <a href="javascript:goView('<%=pre01.print("bulletin_seq")%>');"><%=pre01.print("title")%></a>
<%
    }
%>
                            </p>

						</div>
						<div class="view_list">
							<a href="#list" id="btnList"><span>목록</span></a>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>