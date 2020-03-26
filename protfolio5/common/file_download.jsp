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
    StringBuilder sql = new StringBuilder();
    String seq = parameters.print("seq");
    String fileindex = parameters.print("fileindex");
    if(seq.equals("")){
        errorMsg("잘못된 요청입니다.");
        return;
    }
    //aaa
    dbConnect();

    sql.setLength(0);
    sql.append("select * from series_file where series_seq="+seq);
    parameters.set("query", sql.toString());
    parameters.set("params", null);
    singleDE01 = exec.getGeneralSingle(parameters);

    String nextPage = "";
    if(singleDE01.isEmpty("server_image"+fileindex+"name") && singleDE01.isEmpty("server_expand_image"+fileindex+"name") && singleDE01.isEmpty("server_floor_plan"))
    {
        errorMsg("요청하신 게시물에는 첨부파일이 없습니다.");
        return;
    }

    
    if(parameters.isEqual("filetype", "image"))
    {
        String path = bizProp.getServerPath("etc");
        path = path + "/" + singleDE01.print("server_image"+fileindex+"name");
        if(!new File(path).canRead()){
            errorMsg("요청하신 첨부파일이 서버에 존재하지 않습니다.");
            return;
        }

        parameters.set("server_path", path);
        parameters.set("cf", singleDE01.print("client_image"+fileindex+"name"));

        nextPage = webRoot + "biz.download";
        LOG.println("Download Request Page : " + nextPage);

        exec.commit(parameters);
        exec.connectionClose(parameters);

        request.setAttribute("parameters", parameters);
        request.getRequestDispatcher(nextPage).forward(request, response);
    }
    else if(parameters.isEqual("filetype", "expand_image"))
    {
        String path = bizProp.getServerPath("etc");
        path = path + "/" + singleDE01.print("server_expand_image"+fileindex+"name");
        if(!new File(path).canRead()){
            errorMsg("요청하신 첨부파일이 서버에 존재하지 않습니다.");
            return;
        }

        parameters.set("server_path", path);
        parameters.set("cf", singleDE01.print("client_expand_image"+fileindex+"name"));

        nextPage = webRoot + "biz.download";
        LOG.println("Download Request Page : " + nextPage);

        exec.commit(parameters);
        exec.connectionClose(parameters);

        request.setAttribute("parameters", parameters);
        request.getRequestDispatcher(nextPage).forward(request, response);
    }
    else if(parameters.isEqual("filetype", "floor_plan"))
    {
        String path = bizProp.getServerPath("etc");
        path = path + "/" + singleDE01.print("server_floor_plan");
        if(!new File(path).canRead()){
            errorMsg("요청하신 첨부파일이 서버에 존재하지 않습니다.");
            return;
        }

        parameters.set("server_path", path);
        parameters.set("cf", singleDE01.print("client_floor_plan"));

        nextPage = webRoot + "biz.download";
        LOG.println("Download Request Page : " + nextPage);

        exec.commit(parameters);
        exec.connectionClose(parameters);

        request.setAttribute("parameters", parameters);
        request.getRequestDispatcher(nextPage).forward(request, response);
    }
        


%><%@ include file="/inc/destroy.jsp"%>