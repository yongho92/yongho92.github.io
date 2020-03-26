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
    dbConnect();

    StringBuilder sql = new StringBuilder();

    String seq = parameters.print("seq");
    if(seq.equals(""))
    {
        errorMsg("잘못된 요청입니다.");
        return;
    }
    
    sql.setLength(0);
    sql.append("SELECT * FROM note_file WHERE seq=" + seq);
    parameters.set("query", sql.toString());
    parameters.set("params", null);
    listDR01 = exec.getGeneralList(parameters);
    String nextPage = "";
    if(listDR01.hasNext())
    {
        nextPage = webRoot + "biz.download" +
                    "?server_filename=" + listDR01.print("SERVER_FILENAME") +
                    "&client_filename=" + listDR01.print("CLIENT_FILENAME") +
                    "&code=note.upload.dir";
    }
    else 
    {
        errorMsg("요청하신 게시물에는 첨부파일이 없습니다.");
        return;
    }

    String path = bizProp.getServerPath("note");
    if(!new File(path + "/" + listDR01.print("SERVER_FILENAME")).canRead())
    {
        //sql.setLength(0);
        //sql.append("DELETE FROM note_file WHERE seq='" + seq + "'");
        //parameters.set("query", sql.toString());
        //parameters.set("params", null);
        //exec.executeUpdate(parameters);
        
        errorMsg("요청하신 첨부파일이 서버에 존재하지 않습니다.");
        return;
    }
    
    parameters.set("server_path", bizProp.getServerPath("note") + "/" + listDR01.print("server_filename"));
    parameters.set("cf", listDR01.print("CLIENT_FILENAME"));

    sql.setLength(0);
    sql.append("UPDATE note_file SET down_count=down_count+1 WHERE seq=" + seq);
    parameters.set("query", sql.toString());
    parameters.set("params", null);
    exec.executeUpdate(parameters);

    nextPage = webRoot + "biz.download";
    LOG.println("Download Request Page : " + nextPage);

    exec.commit(parameters);
    exec.connectionClose(parameters);

    request.setAttribute("parameters", parameters);
    request.getRequestDispatcher(nextPage).forward(request, response);

%><%@ include file="/inc/destroy.jsp"%>