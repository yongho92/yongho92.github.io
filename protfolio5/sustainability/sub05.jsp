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

    StringBuilder sql = new StringBuilder();

    BoardManager boardMgr = new BoardManager(exec, parameters);

    SendMail sm = new SendMail(bizProp.getProperty("sendmail.url"), bizProp.getProperty("sendmail.id"), bizProp.getProperty("sendmail.pw"));

    //jsy@yura.co.kr

    if(parameters.isEqual("act", "save"))
    {

        String mail_file = bizProp.getProperty("default.email.path");

        String title2 = "[유라코퍼레이션] 사이버 제보";
        String content = FileUtils.getContent(mail_file);
        Properties prop = new Properties();

        prop.setProperty("title", parameters.print("title"));
        prop.setProperty("content", StringUtils.nl2br(parameters.print("content")));
        prop.setProperty("regi_date", now);
        prop.setProperty("url", "http://" + bizProp.getProperty("www.web.url"));
        content = StringUtils.mailContent(content, prop);


        sm.send(
            bizProp.getProperty("root.email"),
            "jsy@yura.co.kr",
            title2,
            content
        );


        sm.send(
            bizProp.getProperty("root.email"),
            "gon9918@naver.com",
            title2,
            content
        );

        sm.send(
            bizProp.getProperty("root.email"),
            "gon9918@biznetpia.com",
            title2,
            content
        );


        String seq = exec.nextSequence("tr_bulletin") + "";

        parameters.set("seq", seq);
        parameters.set("sc_board_seq", "9");

        //boardMgr.saveBulletin();

        sendMsg("제보를 하였습니다.");

        sendRedirect("sub04.jsp");
        return;
    }

    parameters.set("menu1", "3");
    parameters.set("menu2", "4");

%>
<%@ include file="/inc/user_header.jsp"%>
<script type="text/javascript">
function fw_domReady(){

    $("#btnSave").click(function(){
        if(!frm.validate()) return false;
        if(!confirm("제보를 하시겠습니까?")) return false;
        frm.setMultipart(true);

        frm.submitForm2("_self", "sub05.jsp", "save", "sub05.jsp");
        return false;
    });

}
</script>

<input type="hidden" id="writer" name="writer" value="익명" />
<input type="hidden" id="writer_name" name="writer_name" value="익명" />

			<div class="top_title et_title">
				<div class="top_txt">
					<dl>
						<dt>윤리경영</dt>
						<dd>Ethical management</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="cy_cont">
					<h3 class="sub_title emp_title"><span>사이버 제보하기</span></h3>
					<p>제보 내용은 6하 원칙에 의거하여 상세히 기술하여 주실것을 부탁드리며, <span>제보하신 내용을 근거로 성심성의껏 조사하겠습니다.</span></p>
					<div class="cy_box">
						<dl>
							<dt>제보자 보호정책</dt>
							<dd>제보로 인한 불이익이 없도록 제보자를 철저하게 보호합니다.</dd>
							<dd>제보한 모든 내용은 제보조사 이외의 다른 용도로는 사용되지 않으며 성심성의껏 조사할 것을 약속합니다</dd>
						</dl>
					</div>
					<div class="cy_box2">
						<h4>제보하기</h4>
						<p>여러분의 소중한 제보는 제3자 비공개 방식으로 최대한 빠른 시일내에 처리됩니다.</p>
						<table>
							<caption>사이버 제보하기</caption>
							<tbody>
								<tr>
									<th class="tit_t">제목</th>
									<td class="tit_t">
											<input type="text" id="title" name="title" class="cy_title" required msg="제목을 입력해주세요.">
											<label for="cy_title" class="labelx">제목</label>
									</td>
								</tr>
								<tr>
									<th>내용</th>
									<td>
										<textarea name="content" id="content" cols="40" rows="8" class="text" style="resize:none;" required msg="내용을 입력해주세요."></textarea>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="cy_btn">
							<a href="#save" id="btnSave" class="btn1">확인</a>
							<a href="sub04.jsp" class="btn2">취소</a>
						</div>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>