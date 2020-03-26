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

    // image, etc
    String type = parameters.print("type");

    String code = parameters.print("code");
    String callback = parameters.print("callback");
    String oldFilename = parameters.print("old");
    String postSeq = parameters.print("pseq");
    String now = StringUtils.getToday2();
    String subDir = "";
    String webPath = "";
    String serverPath = "";

    String titleImg = "photo_title.gif";
    if(!type.equals("image")) titleImg = "file_title.gif";
    
    if(type.length() == 0 || code.length() == 0 || callback.length() == 0){
        errorMsg("파라미터가 불충분합니다.");
        return;
    }

    webPath = bizProp.getWebPath(code);
    String path = bizProp.getServerPath(code);
    LOG.println("path : " + path);
    if(path.length() == 0){
        out.println(webPath + ", " + path + ", 잘못된 코드값입니다.");
        //out.println(StringUtils.windowClose(webPath + ", " + path + ", 잘못된 코드값입니다."));
        return;
    }    

    String tableName = parameters.print("tname");
    String seqFieldName = parameters.print("sname");
    
    tableName = "cafe_bulletin_file";
    seqFieldName = "bulletin_seq";
    

    String act = parameters.print("act");

    if(act.equals("upload")){
        File f = (File)parameters.get("attach");
        if(f == null){
            errorMsg("첨부파일이 없습니다.");
            return;
        }

        if(code.equals("profile") && f.length() / 1024 > 500){
            errorMsg("500K 미만의 파일만 등록할 수 있습니다.");
            return;
        }
        
        String extend = StringUtils.getExtend(f.getName().toLowerCase());
        //String realFilename = StringUtils.toKorean(f.getName());
        String realFilename = StringUtils.encoding(f.getName(), "8859_1", "utf-8");
        String filename = f.getName();

        if(oldFilename.length() > 0 && new File(path + "/" + oldFilename).exists()) {
            new File(path + "/" + oldFilename).delete();
        }
        long seq = exec.nextSequence(tableName);
        
        // image 인경우 rename 시킨다.
        if(type.equals("image") || type.equals("file")){

            subDir = now.substring(0, 4) + "/" + now.substring(5, 7) + "/" + now.substring(8, 10);
            path = path + "/" + subDir;

            File f2 = new File(path);
            if(!f2.exists()) f2.mkdirs();
            
            filename = StringUtils.getToday("yyyyMMddHHmmss") + "_" + seq + "." + extend;
            String d = path + "/" + filename;
            FileUtils.copyFileOnly(f.getAbsolutePath(), d);

            webPath = webPath + "/" + subDir + "/" + filename;
            serverPath = d;
        }

        StringBuffer sql = new StringBuffer();
        sql.append("INSERT INTO cafe_bulletin_file (\n");
        sql.append("    seq, code, sf, cf, PATH, \n");
        sql.append("    web_path, regi_date, TYPE, bulletin_seq, sub_dir, \n");
        sql.append("DOWN_COUNT\n");
        sql.append(") values(\n");
        sql.append("    ?, ?, ?, ?, ?, \n");
        sql.append("    ?, ?, ?, ?, ?, \n");
        sql.append("    ? \n");
        sql.append(")");
        Object[] params = {
            new Long(seq), code, filename, realFilename, path + "/" + filename, 
            webPath, now, type, StringUtils.nvl(postSeq, "0"), subDir, 0
        };
        parameters.set("query", sql.toString());
        parameters.set("params", params);
        exec.executeUpdate(parameters);

        DataEntity ret = new DataEntity();
        ret.set("webPath", webPath);
        ret.set("serverPath", serverPath);
        ret.set("filename", filename);
        ret.set("subDir", subDir);
        ret.set("realFilename", realFilename);
        ret.set("attachSeq", seq);
%>
<script>
    opener.<%=parameters.print("callback")%>(
        '<%=ret.print("webPath")%>', 
        '<%=ret.print("serverPath")%>', 
        '<%=ret.print("subDir")%>', 
        '<%=ret.print("filename")%>', 
        '<%=ret.print("realFilename")%>',
        '<%=ret.print("attachSeq")%>'
    );
    self.close();
</script>
<%
        return;
    }
%>
<%@ include file="/inc/user_popup_header.jsp"%>
<script type="text/javascript">
function fw_domReady(){
    $("#btnOk").click(function(){

        if($("#attach").val() == ""){
            alert("첨부파일을 입력하세요.");
            $("#attach").focus();
            return;
        }

        if($("#type").val() == "image"){
            if(!isImageFilename($("#attach").val())){
                alert("올바른 이미지 파일이 아닙니다.");
                $("#attach").focus();
                return;
            }
        }
        frm.setMultipart(true);

        frm.submitForm2("_self", "file_upload_pop.jsp", "upload");
        showLoadingLayer(this);
    });

    $("#btnClose").click(function(){
        window.close();
    });
}
</script>

<input type="hidden" id="type" name="type" value="<%=parameters.print("type")%>" />
<input type="hidden" id="code" name="code" value="<%=parameters.print("code")%>" />
<input type="hidden" id="callback" name="callback" value="<%=parameters.print("callback")%>" />
<input type="hidden" id="old" name="old" value="<%=parameters.print("old")%>" />
<input type="hidden" id="pseq" name="pseq" value="<%=parameters.print("cafe_bulletin_seq")%>" />

<input type="hidden" id="tname" name="tname" value="<%=parameters.print("tname")%>" />
<input type="hidden" id="sname" name="sname" value="<%=parameters.print("sname")%>" />
<input type="hidden" id="cafe_bulletin_seq" name="cafe_bulletin_seq" value="<%=parameters.print("cafe_bulletin_seq")%>" />

<table width="400" height="226" border="0" cellspacing="0" cellpadding="0" background="<%=imageRoot%>admin/bg2.gif">
  <tr>
    <td height="36">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" valign="top"><table width="400" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20" rowspan="7"></td>
        <td height="27" align="left" valign="top">
            <img src="<%=imageRoot%>admin/<%=titleImg%>" /> 
        </td>
        <td rowspan="7" width="20"></tr>
      <tr>
        <td height="1" bgcolor="#64b13a"></td>
      </tr>
      <tr>
        <td height="12"></td>
      </tr>
      <tr>
        <td height="60" bgcolor="#efefef"><table width="360" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="center">    
                <input type="file" name="attach" id="attach" style="width:256px;" />
            </td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="26"></td>
      </tr>
      <tr>
        <td height="1" bgcolor="#d3d3d3"></td>
      </tr>
      <tr>
        <td><table width="360" height="43" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="179" align="right" valign="middle"><a href="#" id="btnOk"><img src="<%=imageRoot%>admin/btn_ok.gif" border="0" /></a></td>
            <td width="2"></td>
            <td width="179" align="left" valign="middle"><a href="#" id="btnClose"><img src="<%=imageRoot%>admin/btn_close.gif" border="0" /></a></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>


<%@ include file="/inc/user_popup_footer.jsp"%>
<%@ include file="/inc/destroy.jsp"%>