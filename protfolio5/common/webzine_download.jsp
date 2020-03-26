<%@ page
    contentType="text/html; charset=utf-8"
    import="java.util.*,
            java.io.*,
            biznetpia.fw.entity.*,
            biznetpia.common.manager.*,
            biznetpia.fw.dao.*,
            biznetpia.fw.log.Log,
            biznetpia.fw.util.*"
%><%@ include file="/inc/init.jsp"%><%
       
    String seq = parameters.print("seq");
    if(seq.equals("")){
        errorMsg("잘못된 요청입니다.");
        return;
    }
    //aaa
    dbConnect();
    WebzineManager wMgr = new WebzineManager(exec, parameters);
    singleDE01 = wMgr.getWebzine(seq);
    
    String nextPage = "";
    if(singleDE01.isEmpty("pdf_server_filename")){
        errorMsg("요청하신 첨부파일이 없습니다.");
        return;
    }

    /*
    nextPage = webRoot + "biz.download" +
                "?sf=" + singleDE01.print("sf") +
                "&cf=" + singleDE01.print("cf") +
                "&code=bulletin";
    */
    
    String path = bizProp.getServerPath("webzine");
    if(!new File(path + "/" + singleDE01.print("pdf_server_filename")).canRead()){
        errorMsg("요청하신 첨부파일이 서버에 존재하지 않습니다.");
        return;
    }

    parameters.set("server_path", path + "/" + singleDE01.print("pdf_server_filename"));
    parameters.set("cf", singleDE01.print("pdf_client_filename"));
    
    wMgr.addDownloadCnt(seq);
    

    nextPage = webRoot + "biz.download";
    LOG.println("Download Request Page : " + nextPage);

    //웹진 다운로드 포인트
    PointManager pointMgr = new PointManager(exec, parameters);
    if(!sessionEntity.isEmpty("id"))
    {
        pointMgr.insertPoint("053", sessionEntity.print("id"), parameters.getRemoteAddr(), "g");
    }

    exec.commit(parameters);
    exec.connectionClose(parameters);

    request.setAttribute("parameters", parameters);
    request.getRequestDispatcher(nextPage).forward(request, response);

%><%@ include file="/inc/destroy.jsp"%>