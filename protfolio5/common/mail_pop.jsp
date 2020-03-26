<%@ page
    contentType="text/html; charset=utf-8"
    import="java.util.*,
            biznetpia.common.manager.*,
            biznetpia.fw.log.Log,
            biznetpia.fw.entity.*,
            biznetpia.fw.dao.*,biznetpia.fw.util.*,
            java.io.File,
            net.fckeditor.*"
%><%@ include file="/inc/init.jsp"%>
<%
    dbConnect();
    String now = StringUtils.getToday2();
    StringBuilder sql = new StringBuilder();

    BoardManager boardMgr = new BoardManager(exec, parameters);
    WebzineManager wMgr = new WebzineManager(exec, parameters);

    singleDE01 = boardMgr.getBulletin(parameters.print("pk_seq"));


    if(parameters.print("act").equals("save"))
    {
        SendMail sm = new SendMail(bizProp.getProperty("sendmail.url"), bizProp.getProperty("sendmail.id"), bizProp.getProperty("sendmail.pw"));

        String mail_file = bizProp.getProperty("bulletin.email.path");
        String content = FileUtils.getContent(mail_file);

        sql.setLength(0);
        sql.append("select a.*, \n");
        sql.append("(select page_view from board where board_seq=a.board_seq) view_url \n");
        sql.append("from bulletin a where a.bulletin_seq='" + parameters.print("pk_seq") + "' \n");
        parameters.set("query", sql.toString());
        parameters.set("params", null);
        singleDE01 = exec.getGeneralSingle(parameters);


        // 받는사람에게 메일발송
        Properties prop = new Properties();
        prop.setProperty("url", "http://" + bizProp.getProperty("web.url") + "/");

        String content2 = singleDE01.print("content");
        if(!singleDE01.print("html_yn").equals("y")) content2 = StringUtils.replace(content, "\n", "\n<BR>");

        prop.setProperty("content", content2);
        prop.setProperty("name", parameters.print("send_name"));
        prop.setProperty("category", singleDE01.print("category_text"));
        prop.setProperty("title", singleDE01.print("title"));
        prop.setProperty("writer_name", singleDE01.print("writer_name"));
        prop.setProperty("regi_date", singleDE01.print("regi_date").substring(0, 10));
        prop.setProperty("comment", parameters.print("send_name") + "님이 보내주신 추천 메입니다.");
        prop.setProperty("num", singleDE01.print("seq"));
        prop.setProperty("hit", singleDE01.print("hit"));
        prop.setProperty("tag", singleDE01.print("tag"));

        StringBuffer sb = new StringBuffer();

        String siteUrl = bizProp.getProperty("web.url") + "/";


        prop.setProperty("page_url", "http://" + siteUrl + singleDE01.print("page_view") + "pk_seq=" + singleDE01.print("bulletin_seq") + "&sc_board_seq=" + singleDE01.print("board_seq") + "&sc_num=" + parameters.print("sc_num"));


        prop.setProperty("memo", StringUtils.replace(parameters.print("memo"), "\n", "\n<BR>"));
        content = StringUtils.mailContent(content, prop);


        String title = "[연세대학교 원주캠퍼스] " + parameters.print("send_name") + "님께서 추천메일을 보내셨습니다.";

        try
        {
            sm.send(
                parameters.print("send_email"),
                parameters.print("receive_email"),
                title,
                content
            );
        }
        catch(Exception ex)
        {}


        sendMsg("메일을 발송 하였습니다.");
%>
<script type="text/javascript">
self.close();
</script>
<%
        return;
    }

    parameters.set("menu1", "1");
    parameters.set("menu2", "1");
%>
<%@ include file="/inc/user_default_header.jsp"%>
<%@ include file="/inc/form_header.jsp"%>

    <style>
        .pop_tit { display:block; height:70px; background:#fcfcfc; border-bottom:1px solid #e4e4e4; }
        .pop_tit h1 { display:inline-block; padding:20px 25px; float:left; margin:0; }
        .pop_tit p.close  { display:inline-block; float:right; margin:0;  }
        .pop_tit p.close a { display:inline-block; padding:20px;}
        .pop_cont_wrap { width:320px; height:320px; overflow-x:hidden; overflow-y:auto; margin:0; background:#fff; }
        .pop_cont_wrap .pop_cont { margin:0; line-height:200%; font-size:12px; color:#6f6f6f; padding:10px 15px; }

		.emailbox { display:block; position:relative; margin:0px; width:300px; padding:0;}
		.emailbox fieldset { display:block; width:300px; margin:0; text-align:left;  }
		.emailbox input[type=text] { padding:2px; border:1px solid #bfbfbf; }
		.emailbox label { font-size:12px; color:#343434; display:block; margin:8px 0; }
		.emailbox label span { display:inline-block; width:65px; font-weight:bold; }
		.emailbox input[type=image] { border:none; }

		.emailbox_btn { display:block; position:relative; width:300px; text-align:center; padding-top:10px;;}

    </style>


<script>
function fw_domReady(){
    $("#send_name").focus();
}

function sendEmail(){
    if(!frm.validate("detail")) return;

    if(!confirm("메일을 보내시겠습니까?")) return;

    $("#send_email").val($("#send_email1").val() + "@" + $("#send_email2").val());
    $("#receive_email").val($("#receive_email1").val() + "@" + $("#receive_email2").val());
    frm.submitForm2("_self", "mail_pop.jsp", "save");
    return false;
}
</script>

<input type="hidden" name="send_email" id="send_email" value="" />
<input type="hidden" name="receive_email" id="receive_email" value="" />
<input type="hidden" name="type" id="type" value="<%=parameters.print("sc_type")%>" />


<div class="pop_tit">
  <h1><img src="../web/images/etc2/popup4_tit.gif" !alt="메일보내기" /></h1>
  <p class="close"><a href="javascript:self.close();"><img src="../web/images/common/popup_close.gif" border="0" !alt="닫기" /></a></p>
</div>

<div class="pop_cont_wrap">
	<div class="pop_cont">

   		<div class="emailbox">
			<fieldset>
			<div>
				<label><span>보내는사람</span><input type="text" value="" name="send_name" id="send_name"  style="width:205px;" required="detail" msg="보내는 사람이름을 입력해주세요."/></label>
				<label><span>&nbsp;</span><input type="text" value="" name="send_email1" id="send_email1"  style="width:82px;" required="detail" msg="이메일 아이디를 입력해주세요."/> @ <input type="text" value="" name="send_email2" id="send_email2"  style="width:100px;" required="detail" msg="이메일 도메인을 입력해주세요."/></label>

                <label><span>받는사람</span><input type="text" value="" name="receive_email1" id="receive_email1"  style="width:82px;" required="detail" msg="받는사람 이메일 아이디를 입력해주세요."/> @ <input type="text" value="" name="receive_email2" id="receive_email2" style="width:100px;" required="detail" msg="받는사람 이메일 도메인을 입력해주세요."/></label>

                <label><span>제목</span><%=StringUtils.cutstr(singleDE01.getString("TITLE"), 30, "...")%></label>
                <label><span>내용</span><textarea name="memo" id="memo" style="width:205px;" rows="4" required="detail" msg="메일 내용을 입력해주세요."></textarea></label>
			</div>
			</fieldset>
		</div>
        <div class="emailbox_btn">
        <a href="javascript:sendEmail();"><img src="../web/images/etc2/email_btn1.gif" alt="보내기" /></a>
        <a href="javascript:self.close();"><img src="../web/images/etc2/email_btn2.gif" alt="취소" /></a>
        </div>

	</div>
</div>


<%@ include file="/inc/user_default_footer.jsp"%>