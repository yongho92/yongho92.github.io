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

    parameters.setDefault("sc_board_seq", 1);

    BoardManager boardMgr = new BoardManager(exec, parameters);

    parameters.set("sc_category_text", "");

    if(parameters.isEqual("sc_str", ""))
    {
        parameters.set("sc_str", parameters.print("sc_search_str"));
    }

    String condStr = "전체";

    if(parameters.isEqual("sc_cond", "2")) condStr = "제목";
    else if(parameters.isEqual("sc_cond", "3")) condStr = "내용";

    int pageSize2 = 0;

    if(parameters.isEqual("sc_type", ""))
    {
        pageSize2 = 2;
    }
    else
    {
        pageSize2 = 5;
    }

    //parameters.set("sc_str", "");

    parameters.set("sc_board_seq", 8);
    parameters.set("sc_multi_board_seq", "");
    parameters.set("pageSize", pageSize2);
    DataRecord dr01 = boardMgr.pageBulletinUser();

    if(parameters.isEqual("sc_type", "1"))
    {
        listDR01 = boardMgr.pageBulletinUser();
    }


    parameters.set("sc_board_seq", "");
    parameters.set("sc_multi_board_seq", "'1', '2', '3', '4'");
    parameters.set("pageSize", pageSize2);
    DataRecord dr02 = boardMgr.pageBulletinUser();

    if(parameters.isEqual("sc_type", "2"))
    {
        listDR01 = boardMgr.pageBulletinUser();
    }


    parameters.set("sc_board_seq", 5);
    parameters.set("sc_multi_board_seq", "");
    parameters.set("pageSize", pageSize2);
    DataRecord dr03 = boardMgr.pageBulletinUser();

    if(parameters.isEqual("sc_type", "3"))
    {
        listDR01 = boardMgr.pageBulletinUser();
    }


    parameters.set("sc_board_seq", "");
    parameters.set("sc_multi_board_seq", "'6', '7'");
    parameters.set("pageSize", pageSize2);
    DataRecord dr04 = boardMgr.pageBulletinUser();

    if(parameters.isEqual("sc_type", "4"))
    {
        listDR01 = boardMgr.pageBulletinUser();
    }


    int total1 = 0;
    int total2 = 0;
    int total3 = 0;
    int total4 = 0;

    if(parameters.isEqual("sc_type", "") || parameters.isEqual("sc_type", "1"))
    {
        total1 = dr01.getTotalCount();
    }

    if(parameters.isEqual("sc_type", "") || parameters.isEqual("sc_type", "2"))
    {
        total2 = dr02.getTotalCount();
    }

    if(parameters.isEqual("sc_type", "") || parameters.isEqual("sc_type", "3"))
    {
        total3 = dr03.getTotalCount();
    }

    if(parameters.isEqual("sc_type", "") || parameters.isEqual("sc_type", "4"))
    {
        total4 = dr04.getTotalCount();
    }

    int totalCnt = 0;

    totalCnt = total1 + total2 + total3 + total4;

    String pageUrl = "";

    parameters.set("menu1", "9");
	parameters.set("menu2", "1");

%>
<%@ include file="/inc/user_header.jsp"%>
<script>
function fw_domReady()
{
    $("#btnList").click(function(){
        frm.processParameters();
        frm.submitForm3(window, "search.jsp");

        return;
    });
}

function submitPage(page){
    document.frm.page.value = page;
    frm.submitForm3(window, "search.jsp");
}

function goType(type)
{
    frm.setParameter("sc_type", type);
    frm.submitForm3(window, "search.jsp");
}

function copyToClipboard2(element) {
    var $temp = $("<input>");
  $("body").append($temp);
  $temp.val($(element).text()).select();
 document.execCommand("copy");
  $temp.remove();
  alert("링크를 클립보드에 복사했습니다.");
}
</script>

<input type="hidden" name="tmp_cond" id="tmp_cond" value="<%=StringUtils.nvl(parameters.print("sc_cond"), "1")%>" />

            <div class="top_title sear_title">
            <div class="top_txt">
                <dl>
                    <dt>검색</dt>
					<dd>Search</dd>
                </dl>
            </div>
            </div>
            <%@ include file="/inc/user_left.jsp"%>
			<div class="sub_cont">
				<div class="sear_cont">
					<div class="sear_box">
						<form id="sub_ser" name="sub_ser" method="post" class="sub_ser_box">
							<div class="sub_search">
								<div class="n_sear selectbox">
									<dl class="dropdown">
									<dt><a href="javascript:void(0);"><span><%=condStr%></span></a></dt>
									<dd>
											<ul class="dropdown2">
												<li><a href="javascript:void(0);" >전체</a></li>
												<li><a href="javascript:void(0);">제목</a></li>
												<li><a href="javascript:void(0);">내용</a></li>
											</ul>
										</dd>
									</dl>
								</div>
								<div class="sub_ser">
								<label class="labelx">검색</label>
								<input type="text" id="tmp_str" class="search" name="tmp_str" value="<%=parameters.print("sc_str")%>"/>
									<button type="button" id="btnList">검색</button>
							</div>
							</div>
						</form>
					</div>
					<div class="sear_tab pr_tab">
						<p><strong>'<%=parameters.print("sc_str")%>'</strong> 에대한  <span><%=totalCnt%></span>건의 검색결과가 있습니다.</p>
						<span class="tab_txt" id="txt">전체</span>
						<ul class="sear_1122">
							<li><a href="javascript:goType('');" <%=parameters.isEqual("sc_type", "") ? "class='on'" : ""%>>전체</a></li>
							<li><a href="javascript:goType('1');" <%=parameters.isEqual("sc_type", "1") ? "class='on'" : ""%>>회사소개</a></li>
							<li><a href="javascript:goType('2');" <%=parameters.isEqual("sc_type", "2") ? "class='on'" : ""%>>홍보센터</a></li>
							<li><a href="javascript:goType('3');" <%=parameters.isEqual("sc_type", "3") ? "class='on'" : ""%>>인재채용</a></li>
							<li><a href="javascript:goType('4');" <%=parameters.isEqual("sc_type", "4") ? "class='on'" : ""%>>고객센터</a></li>
						</ul>
					</div>
					<div class="sear_list">

<%
    if((parameters.isEqual("sc_type", "") || parameters.isEqual("sc_type", "1")) && total1 > 0)
    {
%>

                        <div class="searlist_box">
							<div class="sear_tit">
								<h5>회사소개(<%=total1%>건)</h5>
								<a href="javascript:goType('1');" title="검색결과 더보기">더보기</a>
							</div>
							<div class="sear_all">
<%
        while(dr01.hasNext())
        {
            pageUrl = webRoot + "company/sub04.jsp";
            if(dr01.isEqual("sc_category_text", "2000")) pageUrl = webRoot + "company/sub05.jsp";
            else if(dr01.isEqual("sc_category_text", "2010")) pageUrl = webRoot + "company/sub06.jsp";
%>
								<div class="sear_res">
									<div class="sear_l">
										<ul>
											<li>회사소개 > 연혁</li>
											<li class="maro"><a href="<%=pageUrl%>"><%=dr01.print("title")%></a></li>
										</ul>
									</div>
									<div class="sear_r">
										<a href="<%=pageUrl%>" class="btn btn1" title="회사소개 연혁 자세히보기"><span>자세히 보기</span></a>
										<a href="javascript:copyToClipboard('#p_<%=dr01.print("bulletin_seq")%>')" class="btn btn2" title="url복사"><span>URL 복사</span></a>
									</div>
								</div>
                                <p id="p_<%=dr01.print("bulletin_seq")%>" style="display:none;">http://<%=webDomain%><%=pageUrl%></p>
<%
        }
%>

							</div>
						</div>

<%
    }

    if((parameters.isEqual("sc_type", "") || parameters.isEqual("sc_type", "2"))  && total2 > 0)
    {
%>

						<div class="searlist_box">
							<div class="sear_tit">
								<h5>홍보센터 (<%=total2%>건)</h5>
								<a href="javascript:goType('2');" title="검색결과 더보기">더보기</a>
							</div>
								<div class="sear_all">
<%
        while(dr02.hasNext())
        {
            pageUrl = webRoot + "news/sub01.jsp";
            if(dr02.isEqual("board_seq", "2")) pageUrl = webRoot + "news/sub02.jsp";
            else if(dr02.isEqual("board_seq", "3")) pageUrl = webRoot + "news/sub03.jsp";
            else if(dr02.isEqual("board_seq", "4")) pageUrl = webRoot + "news/sub04.jsp";

            if(dr02.isEqual("board_seq", "1"))
            {
%>

                                    <div class="sear_res">
									<div class="sear_l">
										<ul>
											<li>홍보센터 > 유라소식</li>
											<li class="maro"><a href="<%=dr02.print("url1")%>" target="_blank"><%=dr02.print("title")%></a></li>
										</ul>
									</div>
									<div class="sear_r">
										<a href="<%=dr02.print("url1")%>" target="_blank" class="btn btn1" title="자세히보기"><span>자세히 보기</span></a>
										<a href="javascript:copyToClipboard('#p_<%=dr01.print("bulletin_seq")%>')" class="btn btn2" title="url복사"><span>URL 복사</span></a>
									</div>
								</div>
                                <p id="p_<%=dr02.print("bulletin_seq")%>" style="display:none;"><%=dr02.print("url1")%></p>
<%
            }

            if(dr02.isEqual("board_seq", "2"))
            {
                if(dr02.isEqual("SMALL_IMG_PATH", ""))
                {
                    dr02.set("SMALL_IMG_PATH", "/web/images/common/default_catalog_brochure.jpg");
                }
%>

									<div class="sear_res">
										<div class="sear_l">
											<div class="sear_img">
												<img src="<%=dr02.print("SMALL_IMG_PATH")%>" alt="<%=dr02.print("title")%>"/>
											</div>
											<ul>
												<li>홍보센터 > 홍보자료 > 브로슈어</li>
												<li class="maro"><a href="<%=webRoot%>common/bulletin_download.jsp?seq=<%=dr02.print("FILE_SEQ")%>"><%=dr02.print("title")%></a></li>
												<li class=""><%=dr02.print("content")%></li>
											</ul>
										</div>
										<div class="sear_r">
											<a href="<%=webRoot%>common/bulletin_download.jsp?seq=<%=dr02.print("FILE_SEQ")%>" class="btn btn2 btn3" title="다운로드"><span>다운로드</span></a>
										</div>
									</div>
<%
            }

            if(dr02.isEqual("board_seq", "3"))
            {
                if(dr02.isEqual("SMALL_IMG_PATH", ""))
                {
                    dr02.set("SMALL_IMG_PATH", "/web/images/common/default_catalog_brochure.jpg");
                }
%>
									<div class="sear_res">
										<div class="sear_l">
											<div class="sear_img">
												<img src="<%=dr02.print("SMALL_IMG_PATH")%>" alt="<%=dr02.print("title")%>"/>
											</div>
											<ul>
												<li>홍보센터 > 홍보자료 > 카달로그</li>
												<li class="maro"><a href="<%=webRoot%>common/bulletin_download.jsp?seq=<%=dr02.print("FILE_SEQ")%>"><%=dr02.print("title")%></a></li>
												<li class=""><%=dr02.print("content")%></li>
											</ul>
										</div>
										<div class="sear_r">
											<a href="<%=webRoot%>common/bulletin_download.jsp?seq=<%=dr02.print("FILE_SEQ")%>" class="btn btn2 btn3" title="다운로드"><span>다운로드</span></a>
										</div>
									</div>
<%
            }

            if(dr02.isEqual("board_seq", "4"))
            {
                if(dr02.isEqual("SMALL_IMG_PATH", ""))
                {
                    dr02.set("SMALL_IMG_PATH", "/web/images/common/default_catalog_brochure.jpg");
                }
%>
                                     <div class="sear_res">
										<div class="sear_l">
											<div class="sear_img sear_img1">
												<img src="<%=dr02.print("SMALL_IMG_PATH")%>" alt="<%=dr02.print("title")%>"/>
											</div>
											<ul>
												<li>홍보센터 > 홍보자료 > 홍보영상</li>
												<li class="maro"><a href="<%=pageUrl%>?pk_seq=<%=dr02.print("bulletin_seq")%>"><%=dr02.print("title")%></a></li>
											</ul>
										</div>
										<div class="sear_r">
											<a href="<%=pageUrl%>?pk_seq=<%=dr02.print("bulletin_seq")%>" class="btn btn1" title="자세히보기"><span>자세히 보기</span></a>
											<a href="javascript:copyToClipboard('#p_<%=dr02.print("bulletin_seq")%>')" class="btn btn2" title="url복사"><span>URL 복사</span></a>
										</div>
									</div>
                                    <p id="p_<%=dr02.print("bulletin_seq")%>" style="display:none;">http://<%=webDomain%><%=pageUrl%>?pk_seq=<%=dr02.print("bulletin_seq")%></p>
<%
            }
        }
%>


								</div>
							</div>

<%
    }

    if((parameters.isEqual("sc_type", "") || parameters.isEqual("sc_type", "3"))  && total3 > 0)
    {
%>

						<div class="searlist_box">
							<div class="sear_tit">
								<h5>인재채용 (<%=total3%>건)</h5>
								<a href="javascript:goType('3');" title="검색결과 더보기">더보기</a>
							</div>
                            <div class="sear_all">

<%
        while(dr03.hasNext())
        {
            pageUrl = webRoot + "recruit/sub10_view.jsp?sc_board_seq=5&pk_seq=" + dr03.print("bulletin_seq");
%>

								<div class="sear_res">
									<div class="sear_l">
										<ul>
											<li>인재채용 > 채용공고</li>
											<li class="maro"><a href="<%=pageUrl%>">[<%=dr03.print("category_text")%>] <%=dr03.print("title")%></a></li>
											<li class=""><%=dr03.print("tmp_field1")%> ~ <%=dr03.print("tmp_field2")%></li>
										</ul>
									</div>
									<div class="sear_r">
										<a href="<%=pageUrl%>" class="btn btn1" title="자세히보기"><span>자세히 보기</span></a>
										<a href="javascript:copyToClipboard('#p_<%=dr03.print("bulletin_seq")%>')" class="btn btn2" title="url복사"><span>URL 복사</span></a>
									</div>
								</div>
                                <p id="p_<%=dr03.print("bulletin_seq")%>" style="display:none;">http://<%=webDomain%><%=pageUrl%></p>

<%
        }
%>

                            </div>
						</div>

<%
    }

    if((parameters.isEqual("sc_type", "") || parameters.isEqual("sc_type", "4"))  && total4 > 0)
    {
%>

							<div class="searlist_box">
								<div class="sear_tit">
								<h5>고객센터 (<%=total4%>건)</h5>
								<a href="javascript:goType('4');" title="검색결과 더보기">더보기</a>
								</div>
								<div class="sear_all">

<%
        while(dr04.hasNext())
        {
            pageUrl = webRoot + "customer/sub01.jsp?pk_seq=" + dr04.print("bulletin_seq");
            if(dr04.isEqual("board_seq", "7")) pageUrl = webRoot + "news/sub02.jsp";

            if(dr04.isEqual("board_seq", "6"))
            {
%>
									<div class="sear_res">
										<div class="sear_l">
											<ul>
												<li>고객센터 > 자주 묻는 질문</li>
												<li class="maro"><a href="<%=pageUrl%>">[<%=dr04.print("category_text")%>] <%=dr04.print("title")%></a></li>
											</ul>
										</div>
										<div class="sear_r">
											<a href="<%=pageUrl%>" class="btn btn1" title="자세히보기">자세히 보기</a>
											<a href="javascript:copyToClipboard('#p_<%=dr04.print("bulletin_seq")%>')" class="btn btn2" title="url복사"><span>URL 복사</span></a>
										</div>
									</div>

                                    <p id="p_<%=dr04.print("bulletin_seq")%>" style="display:none;">http://<%=webDomain%><%=pageUrl%></p>
<%
            }

            if(dr04.isEqual("board_seq", "7"))
            {
%>

									<div class="sear_res">
										<div class="sear_l">
											<div class="sear_img">
												<img src="../web/images/sub/ser_img04.jpg" alt="DTG-A 모델"/>
											</div>
											<ul>
												<li>고객센터  > 제품 다운로드 > 메뉴얼</li>
												<li class="maro"><a href="<%=webRoot%>common/bulletin_download.jsp?seq=<%=dr04.print("FILE_SEQ")%>">DTG-A 모델</a></li>
											</ul>
										</div>
										<div class="sear_r">
											<a href="<%=webRoot%>common/bulletin_download.jsp?seq=<%=dr04.print("FILE_SEQ")%>" class="btn btn2 btn3" title="다운로드"><span>다운로드</span></a>
										</div>
									</div>
<%
            }
        }
    }
%>

								</div>

<%
    if(!parameters.isEqual("sc_type", ""))
    {
%>
                        <div class="num">
                        <%@ include file="/inc/user_page_navigator.jsp"%>


						</div>
<%
    }
%>

<%
    if(totalCnt == 0)
    {
%>
                        <div style="text-align:center;">조회된 검색 결과가 없습니다.</div>
<%
    }
%>


							</div>


						</div>
					</div>
			</div>
<%@ include file="/inc/user_footer.jsp"%>