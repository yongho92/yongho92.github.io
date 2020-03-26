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

    parameters.setDefault("sc_board_seq", 4);

    BoardManager boardMgr = new BoardManager(exec, parameters);

    DataEntity boardDE = boardMgr.getBoard(parameters.print("sc_board_seq"));

    parameters.set("pageSize", 3);
    listDR01 = boardMgr.pageBulletinUser();
    DataRecord categoryDR = boardMgr.listBoardCategory();


    if(parameters.isEqual("pk_seq", ""))
    {
        String seq2 = "";
        DataRecord listDR02 = boardMgr.listBulletinLastest("4", 1);
        while(listDR02.hasNext())
        {
            seq2 = listDR02.print("bulletin_seq");
        }

        singleDE01 = boardMgr.getBulletin(seq2);
    }
    else
    {
        singleDE01 = boardMgr.getBulletin(parameters.print("pk_seq"));
    }

    String condStr = "전체";

    if(parameters.isEqual("sc_cond", "2")) condStr = "제목";
    else if(parameters.isEqual("sc_cond", "3")) condStr = "내용";

    parameters.set("menu1", "4");
    parameters.set("menu2", "2");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function submitPage(page){
    document.frm.page.value = page;
    frm.submitForm3(window, "sub04.jsp");
}

function fw_domReady(){
    $("#btnList").click(function(){
        frm.processParameters();
        frm.submitForm3(window, "sub04.jsp");

        return false;
    });

    $(".btnView").click(function(e){
        if($(".video_main").css("display") == "none")
        {
            $("#img_view" + $(this).attr("seq")).html($("#list_view_layer" + $(this).attr("seq")).html());

            var myVideo = document.getElementById("main_visual_video_web_list" + $(this).attr("seq"));

            if (myVideo.paused) { myVideo.play(); } else { myVideo.pause(); }
        }
        else
        {
            frm.setParameter("pk_seq", $(this).attr("seq"));
            frm.submitForm3(window, "sub04.jsp");
            return ;
        }
    });

    var cond = "<%=parameters.print("sc_condition")%>";
    if(cond != "") document.frm.tmp_condition.value = cond;
}

function fw_onenterdown1(obj)
{
    if(obj == document.frm.tmp_str) {
        $("#btnList").click();
    }
}

function viewYoutube(seq)
{
	$(".main_img").hide();


	$(".video_mimg").html($("#view_layer" + seq).html());

    var myVideo = document.getElementById("main_visual_video_web" + seq);

    if (myVideo.paused) { myVideo.play(); } else { myVideo.pause(); }

}


</script>

<input type="hidden" name="tmp_cond" id="tmp_cond" value="<%=StringUtils.nvl(parameters.print("sc_cond"), "2")%>" />

			<div class="top_title pr_title">
				<div class="top_txt">
					<dl>
						<dt>홍보자료</dt>
						<dd>PR Materials</dd>
					</dl>
				</div>
			</div>
			<%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="pr_cont">
					<div class="pr_tab">
						<ul>
							<li class=""><a href="../news/sub02.jsp" class="mob_on">브로슈어</a></li>
							<li class="mob_tab"><a href="../news/sub03.jsp">카달로그</a></li>
							<li class="barx mob_tab on"><a href="../news/sub04.jsp">홍보영상</a></li>
						</ul>
						<ul class="mob_tab_box">
							<li class="on"><a href="javascript:void(0);" class="mob_on">홍보영상</a></li>
							<li class="mob_tab"><a href="../news/sub02.jsp">브로슈어</a></li>
							<li class="barx mob_tab"><a href="../news/sub03.jsp">카달로그</a></li>
						</ul>
					</div>
					<div class="video">


                        <div class="video_main">
<%
    if(!singleDE01.isEqual("bulletin_seq", ""))
    {
        if(singleDE01.isEqual("SMALL_IMG_PATH", ""))
        {
            singleDE01.set("SMALL_IMG_PATH", "/web/images/common/default_movie_big.jpg");
        }
%>
							<div class="video_mimg">
								<div class="main_img">
									<a href="javascript:viewYoutube('<%=singleDE01.print("bulletin_seq")%>');"><img src="<%=singleDE01.print("SMALL_IMG_PATH")%>" alt="유라코퍼레이션 홍보영상(국문)"/></a>
								</div>

                                <span id="view_layer<%=singleDE01.print("bulletin_seq")%>" style="display:none;">

<%
        if(!singleDE01.isEqual("file_sf", ""))
        {
%>
                                <video id="main_visual_video_web<%=singleDE01.print("bulletin_seq")%>" class="main_visual_video_web" controls="" width="100%" height="100%" style="object-fit:fill;">
								<source src="<%=singleDE01.print("file_sf")%>" type="video/mp4">
							</video>
<%
        }
%>
                                <!-- <iframe width='100%' height='699' src='https://www.youtube.com/embed/<%=StringUtils.replace(StringUtils.replace(singleDE01.print("url1"), "https://youtu.be/", ""), "https://www.youtube.com/embed/", "")%>?autoplay=1&rel=0&amp;controls=0&amp;showinfo=0' frameborder='0' allowfullscreen class='main_tariler_youtube' title='youtube iframe'></iframe> -->


                                </span>

							</div>
							<div class="video_mtxt">
								<p><%=singleDE01.print("title")%></p>
								<span><%=singleDE01.print("tmp_field1")%></span>
							</div>
<%
    }
%>
						</div>


						<div class="video_box">
							<div class="news_sect">
								<form id="sub_ser" name="sub_ser" method="post" class="sub_ser_box">
									<div class="sub_search">
										<div class="n_sear selectbox">
											<dl class="dropdown">
											<dt><a href="javascript:void(0);"><span>전체</span></a></dt>
											<dd>
													<ul class="dropdown2" style="display: none;">
														<li><a href="javascript:void(0);">전체</a></li>
														<li><a href="javascript:void(0);">제목</a></li>
														<li><a href="javascript:void(0);">내용</a></li>
													</ul>
												</dd>
											</dl>
										</div>
										<div class="sub_ser">
										<label class="labelx">검색</label>
										<input type="text" id="tmp_str" class="search" name="tmp_str" value="" autocomplete="off">
										<button type="button" id="btnList">검색</button>
									</div>
									</div>
								</form>
								<div class="all_txt">
									<p>총 <span><%=listDR01.getTotalCount()%></span>건</p>
								</div>
							</div>
							<div class="video_list">
<%
    while(listDR01.hasNext())
    {
        String seq2 = listDR01.getString("seq2");
        String []arr = StringUtils.split(seq2, "_");
        String blankStr = "";
        if(arr.length >= 2){
            for(int j=0 ; j<arr.length ; j++) blankStr += "&nbsp;&nbsp;";
            blankStr += "<img src=\"" + imageRoot + "admin/ico_reply.gif\" />";
        }

        String title = blankStr + StringUtils.cutstr(listDR01.getString("TITLE"), 50, "...");
        String num = "";
        String bgcolor = "";

        if(listDR01.print("NOTICE_YN").equals("Y")){
            num = "알림";
            bgcolor = "#e2f3fa";
        }
        else{
            num = listDR01.getRowNum() + "";
            bgcolor = "";
        }

        String before7 = StringUtils.getDateStr(0, 0, -6, now.substring(0, 10));

        String listClass1 = "";

        if(listDR01.getIndex() == 0) listClass1 = "marx";
        else if(listDR01.getIndex() == 1) listClass1 = "";
        else if(listDR01.getIndex() == 2) listClass1 = "tab_mar";

        else if(listDR01.getIndex() == 3) listClass1 = "marx";
        else if(listDR01.getIndex() == 4) listClass1 = "";
        else if(listDR01.getIndex() == 5) listClass1 = "tab_mar";

        if(listDR01.isEqual("SMALL_IMG_PATH", ""))
        {
            listDR01.set("SMALL_IMG_PATH", "/web/images/common/default_movie_small.jpg");
        }
%>
								<div class="v_list <%=listClass1%>">
									<div class="v_img img_view<%=listDR01.print("BULLETIN_SEQ")%>" id="img_view<%=listDR01.print("BULLETIN_SEQ")%>">
										<a href="#view" class="btnView" seq="<%=listDR01.print("BULLETIN_SEQ")%>"><img src="<%=listDR01.print("SMALL_IMG_PATH")%>" alt="<%=listDR01.print("title")%>"/></a>
									</div>
									<div class="v_txt">
										<p><a href="#view" class="btnView" seq="<%=listDR01.print("BULLETIN_SEQ")%>" ><%=listDR01.print("title")%></a><span><%=listDR01.print("tmp_field1")%></span></p>

									</div>
								</div>

                                <span id="list_view_layer<%=listDR01.print("bulletin_seq")%>" style="display:none;">
<%
        if(!listDR01.isEqual("file_sf", ""))
        {
%>
                                <video id="main_visual_video_web_list<%=listDR01.print("bulletin_seq")%>" class="main_visual_video_web" controls="" width="100%" height="100%" style="object-fit:fill;">
								<source src="<%=listDR01.print("file_sf")%>" type="video/mp4">
							</video>
<%
        }
%>
                                <!-- <iframe width='100%' height='300' src='https://www.youtube.com/embed/<%=StringUtils.replace(StringUtils.replace(listDR01.print("url1"), "https://youtu.be/", ""), "https://www.youtube.com/embed/", "")%>?autoplay=1&rel=0&amp;controls=0&amp;showinfo=0' frameborder='0' allowfullscreen class='main_tariler_youtube' title='youtube iframe'></iframe> -->


                                </span>
<%
    }

    if(listDR01.size() == 0){
%>
<div style="text-align:center; padding-top:20px;">
    조회된 결과가 없습니다.
</div>
<%
    }
%>
							</div>
						</div>
					</div>
					<div class="num num_show">
						<%@ include file="/inc/user_page_navigator.jsp"%>
					</div>
				</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>