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

        <!-- <div class="title_line  bgchange5">
          <p>HOME <img src="../../web/images/www/ico_arrow.gif"/> <span class="b"><%=boardDE.print("board_nm")%></span></p>
        </div> -->
			<div class="tour">

				<div class="news_view">
                    	<table class="news_view"  style="background-color:#fff;">
                        	<tr>
                            	<th align="left"><%=singleDE01.print("title")%></th>
                                <td class="date" align="right">date : <span class="t_blue"><%=StringUtils.replace(singleDE01.getDate("regi_date"), "-", ".")%></span> <span style=" padding:0 10px;">|</span> hit : <span class="t_blue"><%=singleDE01.print("hit")%></span></td>
                            </tr>
<%
    while(fileDR.hasNext()){
%>
    			<tr>
    				<td class="date" style="text-align:left;"><img src="../web/images/common2/ico_file.gif" !alt=="첨부파일" class="pdr5"/><a href="<%=webRoot%>common/bulletin_download.jsp?seq=<%=fileDR.print("BFILE_SEQ")%>&title=<%=fileDR.print("cf")%>">&nbsp;<%=fileDR.print("cf")%></a>&nbsp;&nbsp;다운로드 <%=fileDR.getInt("cnt_download")%>회</span></td>
    			</tr>
<%
    }
    fileDR.setInitIndex();
%>

                            <tr>
                            	<td class="con">
									<table border="0" cellpadding="0" cellspacing="0" width="100%">
									<tr><td>
									<iframe src="/inc/bulletin_content_ifr.jsp?pk_seq=<%=singleDE01.print("bulletin_seq")%>" frameborder="0" width="100%" MARGINHEIGHT="7"  SCROLLING="no"  ALIGN="left" FRAMEBORDER="0" id="view_ifr" name="view_ifr"></iframe>
									</td></tr>
									</table>

								</td>
                            </tr>
                        </table>
                    </div>


			</div>




<%@ include file="/inc/user_default_footer.jsp"%>