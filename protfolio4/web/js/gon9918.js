function top_menu_link(index){
    left_menu(index);
}

function left_menu(index){
    var url = "";
     
    //alert(index);
    if(index == "0") url = "index.jsp";
    /*else if(index == "1") url = "center/employment_list.jsp";
    else if(index == "11") url = "center/employment_list.jsp"; //center/employment_list.jsp
    else if(index == "111") url = "center/employment_list.jsp";
    else if(index == "112") url = "center/board1_list.jsp";
    else if(index == "113") url = "center/board2_list.jsp";
    else if(index == "114") url = "center/board3_list.jsp";
    else if(index == "115") url = "center/board4_list.jsp";
    else if(index == "12") url = "center/publication.jsp";
    else if(index == "13") url = "center/journal.jsp";
    else if(index == "14") url = "center/statistics.jsp";
    else if(index == "15") url = "center/internal_list.jsp";
    //else if(index == "16") url = "";
    else if(index == "17") url = "center/employment_list.jsp";
    */
    
    else if(index == "1") url = "introduction/notice01.jsp";
    else if(index == "11") url = "center/employment_list_2012.jsp";
    else if(index == "12") url = "center/issue_2012.jsp";
    
	//else if(index == "121") url = "center/publication_2012.jsp";
    //else if(index == "122") url = "center/journal_search_2012.jsp";
    //else if(index == "123") url = "center/promotion_2012.jsp";
	else if(index == "121") url = "center/issue_2012.jsp";
    else if(index == "122") url = "center/book_2012.jsp";
    else if(index == "123") url = "center/promotion_2012.jsp";
	else if(index == "124") url = "center/english_2012.jsp";
	else if(index == "125") url = "center/journal_search_2012.jsp";

    else if(index == "13") url = "center/journal_list_2012.jsp";
    else if(index == "14") url = "center/statistics_2012.jsp";
    else if(index == "15") url = "center/internal_list_2012.jsp";
	else if(index == "16") url = "center/organization_list.jsp";

    else if(index == "18") url = "introduction/notice01.jsp";
    
    
   /*  else if(index == "2") url = "support/support_main.jsp";
    else if(index == "21") url = "support/local_center.jsp";
    else if(index == "22") url = "support/junior_list.jsp";
    else if(index == "23") url = "support/technology.jsp";
    else if(index == "24") url = "support/graduate_list.jsp";
    else if(index == "25") url = "support/organ_list.jsp";
    else if(index == "26") url = "support/research.jsp";
    else if(index == "27") url = "support/policy.jsp";
    else if(index == "28") url = "support/system.jsp";
    else if(index == "281") url = "support/system.jsp";
    else if(index == "282") url = "support/system_attache.jsp";
    else if(index == "29") url = "support/joint.jsp";
    else if(index == "291") url = "support/joint.jsp";
    else if(index == "292") url = "support/joint_yearly.jsp";
    else if(index == "293") url = "support/joint_mentoring.jsp";
    else if(index == "294") url = "support/joint_talented.jsp";
    else if(index == "210") url = "support/cooperation.jsp";
    else if(index == "211") url = "support/mento.jsp";
    
*/
    else if(index == "2") url = "support/support_main_2012.jsp";
    else if(index == "21") url = "support/support_main_2012.jsp";
    else if(index == "211") url = "support/support_main_2012.jsp";
    else if(index == "212") url = "support/edu_schedule_2012.jsp";
    else if(index == "213") url = "support/support_main_board.jsp";
    else if(index == "22") url = "support/junior_list_2012.jsp";
	else if(index == "221") url = "support/junior_list_2012.jsp";
	else if(index == "222") url = "support/graduate_01_2012.jsp";
	else if(index == "223") url = "support/career_2012.jsp";
	else if(index == "224") url = "support/manage_2012.jsp";


    else if(index == "23") url = "support/support_02.jsp";
    else if(index == "24") url = "support/system_2012.jsp";
    else if(index == "25") url = "support/research_2012.jsp";

    else if(index == "26") url = "support/joint_2012.jsp";
    else if(index == "261") url = "support/joint_2012.jsp";
    else if(index == "262") url = "support/joint_yearly_2012.jsp";
    else if(index == "263") url = "support/joint_tab03_2012.jsp";
    else if(index == "27") url = "support/cooperation.jsp";
	else if(index == "28") url = "support/female_talent.jsp";
	else if(index == "29") url = "support/sub_gender.jsp";
	else if(index == "30") url = "../newjob/";
	else if(index == "303") url = "support/group_counseling.jsp";
	else if(index == "304") url = "support/job_counselor_form.jsp";
	else if(index == "305") url = "support/job_counselor.jsp";
	else if(index == "306") url = "support/qc_program.jsp";
	else if(index == "307") url = "support/qc_program_form.jsp";

    else if(index == "309") url = "support/3d_program.jsp";
    else if(index == "310") url = "support/3d_program_form.jsp";




    
    /*
    else if(index == "3") url = "education/edu_main.jsp";
    else if(index == "31") url = "education/edu_intro.jsp";
    else if(index == "311") url = "education/edu_intro.jsp";
    else if(index == "312") url = "education/edu_schedule.jsp";
    else if(index == "313") url = "education/edu_ann_list.jsp";
    else if(index == "314") url = "education/edu_ask_list.jsp";
    
    else if(index == "32") url = "education/junior.jsp";
        
    else if(index == "33") url = "education/job_conduct.jsp";
    else if(index == "331") url = "education/job_conduct.jsp";
    else if(index == "332") url = "education/job_lm01.jsp";
    else if(index == "333") url = "education/manage.jsp";
    else if(index == "334") url = "education/job_sc.jsp";

    else if(index == "34") url = "education/start_consulting.jsp";
    else if(index == "341") url = "education/start_consulting.jsp";
    else if(index == "342") url = "education/start.jsp";
    
    else if(index == "35") url = "education/job_leadership.jsp";
    else if(index == "351") url = "education/job_leadership.jsp";
    else if(index == "352") url = "education/job_koleadership.jsp";

    else if(index == "36") url = "education/job_study01.jsp";
    else if(index == "361") url = "education/job_study01.jsp";
    else if(index == "362") url = "education/job_newtech01.jsp";

    else if(index == "37") url = "education/posting_list.jsp"; //education/posting_list.jsp
    else if(index == "38") url = "education/edu_request_info.jsp"; //education/edu_request_info.jsp
    */

    else if(index == "3") url = "education/edu_intro_2012.jsp";
    else if(index == "31") url = "education/edu_intro_2012.jsp";
    else if(index == "311") url = "education/edu_intro_2012.jsp";
    else if(index == "312") url = "education/edu_schedule.jsp";
    else if(index == "313") url = "education/edu_ann_list.jsp";
    else if(index == "314") url = "education/edu_ask_list.jsp";

    else if(index == "32") url = "education/career_2012.jsp";
    else if(index == "321") url = "education/career_2012.jsp";
    else if(index == "322") url = "education/manage_2012.jsp";

	else if(index == "33") url = "education/job_study01_2012.jsp";
    else if(index == "331") url = "education/job_study01_2012.jsp";
    else if(index == "332") url = "education/job_newtech01_2012.jsp";
    else if(index == "333") url = "education/new_seminar.jsp";







    else if(index == "34") url = "education/graduate_2012.jsp";

    else if(index == "35") url = "education/job_leadership_2012.jsp";
    else if(index == "351") url = "education/job_leadership_2012.jsp";
    else if(index == "352") url = "education/job_koleadership_2012.jsp";
    else if(index == "353") url = "education/global_leadership_2012.jsp";
    else if(index == "354") url = "education/start_consulting_2012.jsp";
    else if(index == "355") url = "education/ip_training.jsp";
    else if(index == "3561") url = "education/s_t.jsp";
    else if(index == "3562") url = "education/organization_edu.jsp";


    else if(index == "356") url = "education/career_management_2012.jsp";

    else if(index == "357") url = "education/skill_01.jsp";
    else if(index == "358") url = "education/management_edu.jsp";


    else if(index == "36") url = "education/job_conduct_2012.jsp";
    else if(index == "361") url = "education/job_conduct_2012.jsp";
    else if(index == "362") url = "education/job_sc_2012.jsp";
	else if(index == "363") url = "education/teacher_training.jsp";
	else if(index == "365") url = "education/job_conduct_2014.jsp";
	else if(index == "366") url = "education/survey_01.jsp";


    else if(index == "37") url = "education/start_2012.jsp";
    else if(index == "371") url = "education/start_2012.jsp";
    else if(index == "372") url = "education/patent_2012.jsp";
    else if(index == "373") url = "education/start_info_2012.jsp";
	else if(index == "374") url = "education/job_clinic_2013.jsp";

    else if(index == "38") url = "education/posting_list_2012.jsp";
    else if(index == "39") url = "education/edu_request_info_2012.jsp";
    
    else if(index == "310") url = "education/start_edu.jsp";
    else if(index == "3101") url = "education/start_edu.jsp";
    else if(index == "3102") url = "education/start_2014.jsp";
    


    /*
    20120508
    else if(index == "4") url = "network/business_map.jsp";
    else if(index == "41") url = "network/business_map.jsp";
    else if(index == "411") url = "network/business_list.jsp";
    else if(index == "42") url = "network/support_group.jsp";
    else if(index == "43") url = "network/cooperation_internal.jsp";
    else if(index == "44") url = "network/connection_group.jsp";
    */

    else if(index == "4") url = "network/connection_group.jsp";
    else if(index == "41") url = "network/connection_group.jsp";

    else if(index == "42") url = "network/manage_guoup_01.jsp";
    else if(index == "43") url = "network/participation_guoup.jsp";
    else if(index == "44") url = "network/business_map.jsp";
    else if(index == "441") url = "network/business_list.jsp";
	else if(index == "45") url = "network/notice01.jsp";


    else if(index == "5") url = "introduction/manager_message.jsp";
    else if(index == "51") url = "introduction/manager_message.jsp";

//    else if(index == "52") url = "introduction/manager_data.jsp";
//    else if(index == "521") url = "introduction/manager_data.jsp";
//    else if(index == "522") url = "introduction/manager_history.jsp";
    
    else if(index == "52") url = "introduction/history.jsp"; //introduction/history.jsp
    else if(index == "521") url = "introduction/history.jsp";
    else if(index == "522") url = "introduction/history_law1_1.jsp";
    //else if(index == "533") url = "introduction/history.jsp"; //
    
    else if(index == "53") url = "introduction/vision.jsp";
    else if(index == "54") url = "introduction/ci_directions.jsp";
    else if(index == "55") url = "introduction/organization_chart.jsp";

    else if(index == "56") url = "introduction/bussiness.jsp";
    else if(index == "561") url = "introduction/bussiness2.jsp";
    else if(index == "562") url = "introduction/bussiness_training.jsp";
    else if(index == "563") url = "introduction/bussiness_mentoring.jsp";
    
    else if(index == "57") url = "center/business_result.jsp";
    else if(index == "58") url = "introduction/map.jsp";
	else if(index == "59") url = "introduction/notice01.jsp";
    else if(index == "510") url = "introduction/policy.jsp";


    else if(index == "6") url = "notice/ci_directions.jsp";       

    else if(index == "61") url = "notice/ci_directions.jsp";
    else if(index == "611") url = "notice/photo_list.jsp";
    else if(index == "612") url = "notice/report_list.jsp";
    else if(index == "613") url = "notice/press_list.jsp";
    else if(index == "614") url = "notice/vod_list.jsp";
    else if(index == "62") url = "notice/enews_list.jsp";
    else if(index == "621") url = "notice/enews_list2.jsp";    

    else if(index == "63") url = "notice/ann_list.jsp?sc_board_seq=1";
    else if(index == "64") url = "notice/mobile.jsp";
	else if(index == "65") url = "notice/education.jsp";

    
    

    else if(index == "7") url = "customer/faq_information.jsp";
    else if(index == "71") url = "customer/faq_information.jsp";
    else if(index == "711") url = "customer/faq_information.jsp";
    else if(index == "712") url = "customer/faq_list.jsp";
    

    else if(index == "72") url = "customer/room_information.jsp";
    else if(index == "721") url = "customer/room_information.jsp";
    else if(index == "722") url = "customer/room_month.jsp";
    else if(index == "723") url = "customer/room_reserve.jsp";
    else if(index == "724") url = "customer/room_check.jsp";
    else if(index == "725") url = "customer/room_stats.jsp";


    else if(index == "eng") 
    {
        location.href = "/eng/";
        return;
    }
    
    else if(index == "8") url = "sitemap/sitemap.jsp";
    else if(index == "81") url = "sitemap/sitemap.jsp";
    
    else if(index == "footer01") url = "introduction/manager_message.jsp";
    else if(index == "footer02")
    {
        openPopup("/www/popup_01.html", "aa", "640", "600");
        return;
    }
    else if(index == "footer03")
    {
        openPopup("/www/popup_02.html", "aa22", "640", "600");
        return;
    }

    if(url != ""){
        location.href = "http://www.wiset.re.kr/www/" + url;
    }
    else{
        alert("준비중입니다.");
        return;
    }
}

var selectedTopMenuIndex = "";
function fw_domReady2(){
    $(".top_menus").mouseover(function(e){
        var index = $(this).attr("index");
        if($(this).attr("src").indexOf("_over") >= 0) return;

        $(this).data("old_src", $(this).attr("src"));
        var i = $(this).attr("src").lastIndexOf(".");
        var ext = getExtend($(this).attr("src"));
        var src = $(this).attr("src").substring(0, i) + "_over" + "." + ext;
        $(this).attr("src", src);

        if(selectedTopMenuIndex != ""){
            $("#sub_menus" + selectedTopMenuIndex).hide();
            src = $(".top_menus").eq(Number(selectedTopMenuIndex)-1).data("old_src");
            $(".top_menus").eq(Number(selectedTopMenuIndex)-1).attr("src", src);
        }

        $("#sub_menus" + index).show();
        selectedTopMenuIndex = index;
    });

    $(".top_menus").mouseout(function(e){
        var oldSrc = $(this).data("old_src");
        //$(this).attr("src", oldSrc);

        var index = $(this).attr("index");
        //$("#sub_menus" + selectedTopMenuIndex).hide();
    });

    if($("#menu1_index").val() != null){
        var arr = $("#menu1_index").val().split("_");
        if(nvl(arr[0], "") != "") {
            $(".top_menus").eq(Number(arr[0])-1).mouseover();
        }
    }

    $("#btnPlus").click(function(){
    fontSizeChange2("bulletinContentLayer", true);
    return false;
    });

    $("#btnMinus").click(function(){
        fontSizeChange2("bulletinContentLayer", false);
        return false;
    });
}


//폰트 사이즈 조절
var fontSize = 12;

function contentViewFontPlus()
{
    fontSize += 2;

	if(fontSize > 24) fontSize = 24;

	var articleBody = document.getElementById("bulletinContentLayer").style.fontSize = fontSize;
}

function contentViewFontMinus()
{
    fontSize -= 2;

	if(fontSize < 12) fontSize = 12;

	var articleBody = document.getElementById("content_view").style.fontSize = fontSize; 
}


function fontSizeChange2(layerId, isPlus){
    var j = $("#" + layerId);
    var o = j.get(0);

    if(j.attr("fontsize") == null) j.attr("fontsize", 13);

    var fontsize = parseInt(j.attr("fontsize"));
    
    if(isPlus){
        if(fontsize >= 25) return;
        fontsize += 3;
    }
    else{
        if(fontsize <= 10) return;
        fontsize -= 3;
    }

    j.css("font-size", fontsize+"px");
    j.attr("fontsize", fontsize);
    

}

function checkLogin(){
    if(sId == ""){
        if(!confirm("로그인이 필요한 서비스입니다. 로그인페이지로 이동하시겠습니까?")) return false;
        location.href = documentRoot + "membership/login.jsp?pre_url=" + escape(jspSelf);
        return false;
    }

    return true;
}

var ajaxIndex = new Date().getTime();
function printTitle(str){
    var root = window.documentRoot;
    var now = new Date();
    var month = now.getMonth()+1;
    var str2 = '<table border="0" cellpadding="0" cellspacing="0" class="tableWidth">\
<tr>\
<td align="left" valign="top" id="contents" width="100%"><table border="0" cellpadding="0" cellspacing="0" class="tableWidth">\
        <tr>\
        <td height="19"></td>\
        </tr>\
        <tr>\
        <td>\
            <table border="0" cellpadding="0" cellspacing="0" class="title tableWidth">\
            <tr>\
            <td align="left" valign="middle" class="menu_txt">' + str + '</td>\
            <td align="right" valign="middle" class="date_txt"><span style="font-weight:bold;">DATE :' + now.getFullYear() + '년 ' + nvl(month, "0") + '월 ' + nvl(now.getDate(), "0") + '일</span></td>\
            </tr>\
            </table>\
        </td>\
        </tr>\
        <tr>\
        <td height="23"></td>\
        </tr>\
        </table></td>\
        </tr>\
        </table>\
    ';

	/*
        var str = '<table width="100%" border="0" cellspacing="0" cellpadding="0">\
          <tr>\
            <td width="28"><img src="' + root + 'web/images/admin/bar_01.gif" width="28" height="30"></td>\
            <td background="' + root + 'web/images/admin/bar_bg.gif" class="bb">' + str + '</td>\
            <td align="right" background="' + root + 'web/images/admin/bar_bg.gif"><img src="' + root + 'web/images/admin/date.gif" width="43" height="13" align="absmiddle"><span class="bb">' + window.today.substring(0, 10) + ' (' + window.todayYoil + ')</span></td>\
            <td width="28"><img src="' + root + 'web/images/admin/bar_02.gif" width="28" height="30"></td>\
          </tr>\
        </table><br />';
    */

	document.writeln(str2);
}

function printTitle2(str){
    var root = window.documentRoot;
    var now = new Date();
    var month = now.getMonth()+1;
    var str2 = '<table border="0" cellpadding="0" cellspacing="0" width="800">\
<tr>\
<td align="left" valign="top" id="contents"><table border="0" cellpadding="0" cellspacing="0"  width="800">\
        <tr>\
        <td height="19"></td>\
        </tr>\
        <tr>\
        <td>\
            <table border="0" cellpadding="0" cellspacing="0" class="title" width="800">\
            <tr>\
            <td align="left" valign="middle" class="menu_txt">' + str + '</td>\
            <td align="right" valign="middle" class="date_txt"><span style="font-weight:bold;">DATE :' + now.getFullYear() + '년 ' + nvl(month, "0") + '월 ' + nvl(now.getDate(), "0") + '일</span></td>\
            </tr>\
            </table>\
        </td>\
        </tr>\
        <tr>\
        <td height="23"></td>\
        </tr>\
        </table>\
    ';
	document.writeln(str2);
}

function openZipcode(gubun){
    openPopup(documentRoot + "common/zipcode_pop.jsp?sc_gubun=" + nvl(gubun, ""), "zip", 347, 240, "yes");
}

function getLoadingImageObj(){
    return $('<img src="' + documentRoot + 'web/images/loading_16_16.gif" />').get(0);
}

function openImageUpload(code, callback, type, old){
	openFileUpload(code, callback, type, old);
}

/**
    callback : 업로드가 완료된 이후 opener 창에 호출해줄 함수명
        webPath : 저장된 웹상의 경로, 
        serverPath : 저장된 서버 절대 경로, 
        subDir : code에 명시된 path 이하의 서브 디렉토리, 
        filename : 서버에 저장된 파일명, 
        realFilename : 유저가 올린 진짜 파일명,
        attachSeq : blog_attach 레코드의 고유번호
    type : image, file, movie
*/
function openFileUpload(code, callback, type, old, seq, tname, sname, maxUploadCnt){
	if(old == null) old = "";
    if(seq == null) seq = "0";
    tname = nvl(tname, "");
    sname = nvl(sname, "");

    if($(".hidden_file").size() >= maxUploadCnt){
        alert("최대 업로드 파일 갯수를 초과했습니다.");
        return;
    }

    openPopup(documentRoot + "common/file_upload_pop.jsp?code=" + code + 
		"&callback=" + callback + 
		"&type=" + type + 
		"&old=" + old + 
        "&pseq=" + seq + 
        "&tname=" + tname + 
        "&sname=" + sname
        , "file_upload", 400, 226);
}

function openSchoolListForAdmin(schoolTypCd, func){
    schoolTypCd = nvl(schoolTypCd, "");
    func = nvl(func, "");
    openPopup(documentRoot + "wiset.adm/common/school_list_pop.jsp?sc_school_typ_cd=" + schoolTypCd + "&sc_func=" + func, "school_list", 500, 500, "yes");
}

function openDepartmentListForAdmin(schoolTypCd, func){
    schoolTypCd = nvl(schoolTypCd, "");
    func = nvl(func, "");
    openPopup(documentRoot + "wiset.adm/common/department_list_pop.jsp?sc_school_typ_cd=" + schoolTypCd + "&sc_func=" + func, "department_list", 500, 500, "yes");
}

function validateFile(idName, maxCnt){
    var validateExt = "doc, docx, ppt, pptx, xls, xlsx, hwp, pdf, gif, jpg, jpeg, zip, txt";
    for(var i=0 ; i<maxCnt ; i++){
        //alert("#" + idName + i);
        var ext = getExtend($("#" + idName + i).val().toLowerCase());
        if(ext != "" && validateExt.indexOf(ext) < 0) {
            alert("유효하지 않은 첨부파일입니다.");
            $("#" + idName + i).focus();
            return false;
        }
    }
    return true;
}

//문자열을 자른후 post값이 있으면 붙이고 없으면 ...을 붙힌다.
function cutStr(str,limit, post)
{
    if(post == null) post = "...";

    if(str.length > limit)
    {
        str = str.substring(0, limit-post.length);
        str = str + post;
    }

    return str;

}

function removeTag(xStr)
{
    var regExp = /<\/?[^>]+>/gi;
    xStr = xStr.replace(regExp,"");

    return xStr;
}

function setStartPage(url) { 
    try { var obj = document.createElement("DIV"); 
    obj.style.behavior = 'url(#default#homepage)'; 
    obj.setHomePage(url); delete obj; return true; } 
    catch (err) { } 
}

function bookMark(url){
    window.external.AddFavorite(url, '한국여성과학기술인지원센터')
}

function bookMark2(url){
    window.external.AddFavorite(url, 'WISET 온라인 멘토링')
}

function show_layer(aa) {
document.getElementById(aa).style.visibility="visible"}
 
function hide_layer(aa) { 
document.getElementById(aa).style.visibility="hidden"}

function show_faq(a,b) { 
  var placeholder = document.getElementById(b);
  
  if (document.getElementById(a).style.display == "block"){
    document.getElementById(a).style.display ="none";
    placeholder.setAttribute("src","../../web/images/www/bbs/btn_faq_state02.gif");
  }else{
    document.getElementById(a).style.display ="block";
    placeholder.setAttribute("src","../../web/images/www/bbs/btn_faq_state01.gif");
  }
  return false;
}


function show_menu(a,b) {
  tp = Number(a);
  bb = "sub_menu" + b;
  aa = tp + 1;

  for(i=1;i<aa;i++) 
  { 
  var tt = "sub_menu0" + i;

  document.getElementById(tt).style.display ="none"; 
  }
  document.getElementById(bb).style.display ="block";
}

function sh_layer(a, b) { 
  document.getElementById(a).style.visibility="visible"
  document.getElementById(b).style.visibility="hidden" }

function select_layer(a,b) {
  tp = Number(a);
  bb = "sub_layer0" + b;
  aa = tp + 1;

  for(i=1;i<aa;i++) 
  { 
  var tt = "sub_layer0" + i;

  document.getElementById(tt).style.visibility ="hidden";
  }
  document.getElementById(bb).style.visibility ="visible";
}

function map_layer(a,b) {
  tp = Number(a);
  bb = "net_area" + b;
  aa = Number(tp) + 1;

  for(i=1;i<aa;i++) 
  { 
    
    var tt = "net_area" + i;

  document.getElementById(tt).style.visibility ="hidden";
  }
  document.getElementById(bb).style.visibility ="visible";
  return false;
}


/*
    관리자 페이지 function 
*/

//관리자 페이지 아이디에 대한 회원 정보 팝업
function openMemberPop(seq){
    if(seq == "")
    {
        alert("아이디가 없습니다.");
        return;
    }
    //alert("회원정보뜨는 팝업!! \n준비중입니다.");
    openPopup(window.documentRoot + "wiset.adm/member/member_detail.jsp?sc_seq=" + seq + "&sc_popup_yn=y", "memberPopup" + seq, "1100", "600", "yes");
}



//멘토링
function mentoring_top_menu_link(index){
        var url = "";
        if(index == "0") url = "index.jsp";
        else if(index == "1") url = "about/mentoring.jsp";


        if(url != ""){
            location.href = window.mentoringRoot + url;
        }
        else{
            alert("준비중입니다.");
            return;
        }
}




ypSlideOutMenu.Registry = []
	ypSlideOutMenu.aniLen = 270
	ypSlideOutMenu.hideDelay = 120
	ypSlideOutMenu.minCPUResolution = 10
	// constructor
	function ypSlideOutMenu(id, dir, left, top, width, height){
		this.ie = document.all ? 1 : 0
		this.ns4 = document.layers ? 1 : 0
		this.dom = document.getElementById ? 1 : 0
		if (this.ie || this.ns4 || this.dom) {
			this.id = id
			this.dir = dir
			this.orientation = dir == "left" || dir == "right" ? "h" : "v"
			this.dirType = dir == "right" || dir == "down" ? "-" : "+"
			this.dim = this.orientation == "h" ? width : height
			this.hideTimer = false
			this.aniTimer = false
			this.open = false
			this.over = false
			this.startTime = 0
			this.gRef = "ypSlideOutMenu_"+id
			eval(this.gRef+"=this")
			ypSlideOutMenu.Registry[id] = this
			var d = document
			var strCSS = '<style type="text/css">';
			strCSS += '#' + this.id + 'Container { visibility:hidden; '
			strCSS += 'left:' + left + 'px; '
			strCSS += 'top:' + top + 'px; '
			strCSS += 'overflow:hidden; z-index:10000; }'
			strCSS += '#' + this.id + 'Container, #' + this.id + 'Content { position:absolute; '
			strCSS += 'width:' + width + 'px; '
			strCSS += 'height:' + height + 'px; '
			strCSS += 'clip:rect(0 ' + width + ' ' + height + ' 0); '
			strCSS += '}'
			strCSS += '</style>'
			d.write(strCSS)
			this.load()
		}
	}
 
	ypSlideOutMenu.prototype.load = function() {
		var d = document
		var lyrId1 = this.id + "Container"
		var lyrId2 = this.id + "Content"
		var obj1 = this.dom ? d.getElementById(lyrId1) : this.ie ? d.all[lyrId1] : d.layers[lyrId1]
		if (obj1) var obj2 = this.ns4 ? obj1.layers[lyrId2] : this.ie ? d.all[lyrId2] : d.getElementById(lyrId2)
		var temp
		if (!obj1 || !obj2) window.setTimeout(this.gRef + ".load()", 100)
		else {
			this.container = obj1
			this.menu = obj2
			this.style = this.ns4 ? this.menu : this.menu.style
			this.homePos = eval("0" + this.dirType + this.dim)
			this.outPos = 0
			this.accelConst = (this.outPos - this.homePos) / ypSlideOutMenu.aniLen / ypSlideOutMenu.aniLen 
			// set event handlers.
			if (this.ns4) this.menu.captureEvents(Event.MOUSEOVER | Event.MOUSEOUT);
			this.menu.onmouseover = new Function("ypSlideOutMenu.showMenu('" + this.id + "')")
			this.menu.onmouseout = new Function("ypSlideOutMenu.hideMenu('" + this.id + "')")
			//set initial state
			this.endSlide()
		}
	}
 
	ypSlideOutMenu.showMenu = function(id) {
		var reg = ypSlideOutMenu.Registry
		var obj = ypSlideOutMenu.Registry[id]
		if (obj.container) {
			obj.over = true
			for (menu in reg) if (id != menu) ypSlideOutMenu.hide(menu)
			if (obj.hideTimer) { reg[id].hideTimer = window.clearTimeout(reg[id].hideTimer) }
			if (!obj.open && !obj.aniTimer) reg[id].startSlide(true)
		}
	}
 
	ypSlideOutMenu.hideMenu = function(id) {
		var obj = ypSlideOutMenu.Registry[id]
		if (obj.container) {
			if (obj.hideTimer) window.clearTimeout(obj.hideTimer)
			obj.hideTimer = window.setTimeout("ypSlideOutMenu.hide('" + id + "')", ypSlideOutMenu.hideDelay);
		}
	}
 
	ypSlideOutMenu.hideAll = function() {
		var reg = ypSlideOutMenu.Registry
		for (menu in reg) {
			ypSlideOutMenu.hide(menu);
			if (menu.hideTimer) window.clearTimeout(menu.hideTimer);
		}
	}
 
	ypSlideOutMenu.hide = function(id) {
		var obj = ypSlideOutMenu.Registry[id]
		obj.over = false
		if (obj.hideTimer) window.clearTimeout(obj.hideTimer)
		obj.hideTimer = 0
		if (obj.open && !obj.aniTimer) obj.startSlide(false)
	}
 
	ypSlideOutMenu.prototype.startSlide = function(open) {
		this[open ? "onactivate" : "ondeactivate"]()
		this.open = open
		if (open) this.setVisibility(true)
		this.startTime = (new Date()).getTime() 
		this.aniTimer = window.setInterval(this.gRef + ".slide()", ypSlideOutMenu.minCPUResolution)
	}
 
	ypSlideOutMenu.prototype.slide = function() {
		var elapsed = (new Date()).getTime() - this.startTime
		if (elapsed > ypSlideOutMenu.aniLen) this.endSlide()
		else {
			var d = Math.round(Math.pow(ypSlideOutMenu.aniLen-elapsed, 2) * this.accelConst)
			if (this.open && this.dirType == "-") d = -d
			else if (this.open && this.dirType == "+") d = -d
			else if (!this.open && this.dirType == "-") d = -this.dim + d
			else d = this.dim + d
			this.moveTo(d)
		}
	}
 
	ypSlideOutMenu.prototype.endSlide = function() {
		this.aniTimer = window.clearTimeout(this.aniTimer)
		this.moveTo(this.open ? this.outPos : this.homePos)
		if (!this.open) this.setVisibility(false)
		if ((this.open && !this.over) || (!this.open && this.over)) {
			this.startSlide(this.over)
		}
	}
 
	ypSlideOutMenu.prototype.setVisibility = function(bShow) { 
		var s = this.ns4 ? this.container : this.container.style
		s.visibility = bShow ? "visible" : "hidden"
	}
 
	ypSlideOutMenu.prototype.moveTo = function(p) { 
		this.style[this.orientation == "h" ? "left" : "top"] = this.ns4 ? p : p + "px"
	}
 
	ypSlideOutMenu.prototype.getPos = function(c) {
		return parseInt(this.style[c])
	}
 
	ypSlideOutMenu.prototype.onactivate = function() { }
	ypSlideOutMenu.prototype.ondeactivate = function() { }
    
    //alert(window.mainYn);

    /*if(window.mainYn == "y")
    {
        if(window.browser == "IE")
        {
            // 서브메뉴의 위치는 여기서 잡아주고 추가도 해줍니다.
            new ypSlideOutMenu("menu1", "down", -130, 1, 260, 280); // left, top, width, height
            new ypSlideOutMenu("menu2", "down", 0, 1, 260, 382);
            new ypSlideOutMenu("menu3", "down", 130, 1, 260, 322);
            new ypSlideOutMenu("menu4", "down", 260, 1, 260, 216);
            new ypSlideOutMenu("menu5", "down", 390, 1, 260, 155);
            new ypSlideOutMenu("menu6", "down", 520, 1, 260, 113);
        }
        else
        {
            new ypSlideOutMenu("menu1", "down", 0, 1, 130, 280); // left, top, width, height
            new ypSlideOutMenu("menu2", "down", 130, 1, 130, 382);
            new ypSlideOutMenu("menu3", "down", 260, 1, 130, 322);
            new ypSlideOutMenu("menu4", "down", 390, 1, 130, 216);
            new ypSlideOutMenu("menu5", "down", 520, 1, 130, 155);
            new ypSlideOutMenu("menu6", "down", 650, 1, 130, 113);
        }
    }
    else
    {*/
        new ypSlideOutMenu("menu1", "down", 43, 0, 130, 148); // left, top, width, height
        new ypSlideOutMenu("menu2", "down", 196, 0, 130, 285);
        new ypSlideOutMenu("menu3", "down", 350, 0, 130, 243);
        new ypSlideOutMenu("menu4", "down", 510, 0, 130, 285);
        new ypSlideOutMenu("menu5", "down", 664, 0, 130, 180);
    //}
	var OpenAct = 0 ;
 
	function chg(k){
		
		delay_chg(1);
		
		for (i = 1; i < 0; i++){
			
			if (i == k){
				tarimg = "smm00"+ i ;
				//objimg = "/media/images/kr/menu_0"+i+".gif" ;
				objimg = "" ;
			} else {
				tarimg = "smm00"+ i ;
				//objimg = "/media/images/kr/menu_0"+i+".gif" ;
				objimg = "" ;
			} 
			document.all[tarimg].src = objimg ;
		}
	}
 
	var closeNav1;
	function delay_chg(stat){
		if (stat == 1) {  clearTimeout(closeNav1); } 
		if (stat == 2) {  closeNav1 = setTimeout ('chg(OpenAct)',1000) } 
	}
 
/*
function allblur() // 클릭시 점선방지를 위한
{ 
    for (i = 0; i < document.links.length; i++) 
    { 
    document.links[i].onfocus = document.links[i].blur; 
    } 
} 
document.onfocusin = allblur;

function bluring(){ 
if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG") document.body.focus(); 
} 
document.onfocusin=bluring; 
*/

function eventPop20110804(){
    //openPopup("/event/20110804/index.jsp", "popup1", "668", "700", "yes");
    //window.open("/event/20110804/index.jsp", null);
}

function eventPop20111026(){
    openPopup("/event/20111026/index.jsp", "popup20111026", "668", "700", "yes");
    //window.open("/event/20110804/index.jsp", null);
}


function pop20120218()
{    
    if(window.webId == "")
    {
        if(!confirm("로그인이 필요한 서비스입니다. 로그인페이지로 이동하시겠습니까?")) return false;
        location.href = documentRoot + "www/mypage/login.jsp?pre_url=/www/education/edu_ann_view.jsp?pk_seq=6764";
        return false;
    }

    openPopup("http://www.wiset.re.kr/mentoring/center/expo_application.jsp", "aa12", "760", "610", "yes"); 
}


function pop20120720()
{    
    //alert("2012 지혜의 기부 강연회 참가신청 모집이 완료 되었습니다.\n대기자 신청은 8/9 (목) 오후 부터 가능하시며,\n대기자에서 참가자로 선정되신분들에게는 8/14 (화) 개별 안내드리겠습니다.");
    //return;
    openPopup("http://www.wiset.re.kr/event/20120720/application.jsp", "app20120720", "556", "600", "yes"); 
}


function openPop(page,nam,wid,hit, exClass, afterEx){ 

		var winl = (screen.width - wid) / 2;
		var wint = (screen.height - hit) / 2;
		var windo=eval('window.open("'+page+'","'+nam+'","status=yes,toolbar=no,resizable=no,scrollbars=yes, menubar=no,width='+wid+',height='+hit+',top='+wint+',left='+winl+'")');

	}



function daumZipcode(openZipcodeId, openAddr1Id, openAddr2Id) {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById(openZipcodeId).value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById(openAddr1Id).value = fullAddr;

            // 커서를 상세주소 필드로 이동한다.
            document.getElementById(openAddr2Id).focus();
        }
    }).open();
}


function daumZipcode2(openZipcodeId, openAddr1Id) {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById(openZipcodeId).value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById(openAddr1Id).value = fullAddr;
        }
    }).open();
}