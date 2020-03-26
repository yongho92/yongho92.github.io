<%@ page
    contentType="text/html; charset=utf-8"
    import="java.util.*,
            biznetpia.common.manager.*,
            biznetpia.fw.entity.*,
            biznetpia.fw.dao.*,
            biznetpia.fw.log.Log,biznetpia.fw.util.*"
%>
<%@ include file="/inc/init.jsp"%>
<%
    dbConnect();

    BoardManager boardMgr = new BoardManager(exec, parameters);
    DataRecord listDR02 = new DataRecord();
    DataRecord listDR03 = new DataRecord();

    String board_seq = StringUtils.print(request.getParameter("sc_board_seq"));
    String pk_seq = StringUtils.print(request.getParameter("pk_seq"));



    int c = boardMgr.addBulletinHit(parameters.print("pk_seq"));
    if(c == 0){
        errorMsg("해당하는 게시물이 없습니다.");
        return;
    }
    DataRecord fileDR = boardMgr.listBulletinFile(parameters.print("pk_seq"));
    singleDE01 = boardMgr.getBulletin(parameters.print("pk_seq"));

    DataEntity boardDE = boardMgr.getBoard(singleDE01.print("board_seq"));
%>
<%@ include file="/inc/user_default_header.jsp" %>

<script type="text/javascript">

function fw_domReady(){
    window.print();
}
</script>
<body style="text-align:center; padding: 30px 30px 0 30px;" align="center" >
    <div class="notice">
        <div class="noticeboard" style="margin-left:0px;">
            <div class="notice_view_table">
                <table border="0" cellpadding="0" cellspacing="0" summary="공지사항 뷰 게시판입니다.">
                <caption style="overflow:hidden; display:none;">공지사항 뷰 게시판</caption>
                
                    <thead>
                        <tr>
                            <th colspan="2"><%=singleDE01.print("title")%></th>
                        </tr>
                    </thead>
                    
                    <tbody>
                        <tr>
                            <td width="50%" class="last"><%=singleDE01.print("writer_name")%></td>
                            <td width="50%" class="last tar">
                                <span>등록일</span> : <%=singleDE01.getDate("regi_date")%>&nbsp;&nbsp;<span>조회수</span> : <%=singleDE01.print("hit")%>
                                <span class="btn_ara1">
                                    <a href="#p" id="btnPlus2"><img src="../web/images/customercenter/zoom.jpg" alt="확대" /></a>
                                    <a href="#m" id="btnMinus2"><img src="../web/images/customercenter/reduction.jpg" alt="축소" /></a></span>
                                <span class="btn_ara2"><a href="#letterPop" onClick="emailPop('board', '<%=singleDE01.print("bulletin_seq")%>'); return false;"><img src="../web/images/customercenter/mail.jpg" alt="이메일" /></a><a href="#print" onclick="bulletinPop('board', '<%=singleDE01.print("bulletin_seq")%>'); return false;"><img src="../web/images/customercenter/fax.jpg" alt="인쇄" /></a></span>
                            </td>
                        </tr>
                        <tr>
                            <td width="50%" class="last" style="border-bottom:0px; padding: 13px 0 0 30px;">
<%
while(fileDR.hasNext()){
%>
                            <div class="down">download : <span class="t_blue">
                            <a href="/common/bulletin_download.jsp?seq=<%=fileDR.print("BFILE_SEQ")%>&title=<%=fileDR.print("CF")%>"><%=fileDR.print("CF")%></a></span></div><br/>
<%
}
%>
                            </td>
                        </tr>                            
                        <tr>
                            <td colspan="2" class="last last2 view_text">
                                <div id="content_view">
                                    <%=singleDE01.print("content")%>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                    
                
                </table>                    
            </div>
        </div>
    </div>

</body>

<%@ include file="/inc/user_default_footer.jsp"%>