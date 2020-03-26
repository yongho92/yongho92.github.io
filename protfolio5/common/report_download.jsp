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

    StringBuilder sql = new StringBuilder();
    sql.setLength(0);
    sql.append("select * from bulletin where bulletin_seq='" + parameters.print("seq") + "' \n");
    parameters.set("query", sql.toString());
    parameters.set("params", null);
    singleDE01 = exec.getGeneralSingle(parameters);


    String nextPage = "";
    if(singleDE01.isEmpty("bulletin_seq")){
        errorMsg("요청하신 첨부파일이 없습니다.");
        return;
    }

    /*
    nextPage = webRoot + "biz.download" +
                "?sf=" + singleDE01.print("sf") +
                "&cf=" + singleDE01.print("cf") +
                "&code=bulletin";
    */

    String path = bizProp.getServerPath("bulletin");
    path = path + "/" + singleDE01.print("small_img");
    if(!new File(path).canRead()){
        errorMsg("요청하신 첨부파일이 서버에 존재하지 않습니다.");
        return;
    }

    parameters.set("server_path", path);
    parameters.set("cf", singleDE01.print("small_img"));


    nextPage = webRoot + "biz.download";
    LOG.println("Download Request Page : " + nextPage);

    exec.commit(parameters);
    exec.connectionClose(parameters);

    request.setAttribute("parameters", parameters);
    request.getRequestDispatcher(nextPage).forward(request, response);

%><%@ include file="/inc/destroy.jsp"%>