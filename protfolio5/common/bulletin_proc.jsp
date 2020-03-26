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
    BoardManager boardMgr = new BoardManager(exec, parameters);
    if(parameters.isEqual("act", "save")){
        boardMgr.saveBulletinUser2(parameters.getDataEntity());

		//if(parameters.isEqual("sc_board_seq", "3")){
            sendMsg("저장되었습니다.");
        //}
    }
    else if(parameters.isEqual("act", "delete")){
        boardMgr.deleteBulletin2(parameters.print("pk_seq"));
        parameters.set("pk_seq", "");
    }

%>
<%@ include file="/inc/redirect.jsp"%>
