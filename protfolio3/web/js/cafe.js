//레프트 메뉴
function cafeLeftMenuLayer(){
    
    if($("#leftMenuLayerYn1").val() == "open"){
        $("#leftMenuLayer1").hide();
        $("#leftMenuLayer2").show();
        $("#leftMenuLayerImg1").attr("src", "/web/images/common/btn_member03.gif");
        $("#leftMenuLayerYn1").val("close");
    }
    else{
        $("#leftMenuLayer1").show();
        $("#leftMenuLayer2").hide();
        $("#leftMenuLayerImg1").attr("src", "/web/images/common/btn_member02.gif");
        $("#leftMenuLayerYn1").val("open");
    }
}

function showLeftMenuLayer(idName){
    if($("#" + idName).css("display") == "block"){
		$("#" + idName).css("display", "none");
		$("#btn" + idName).attr("src", "/web/images/common/btn_close.gif");
	}
    else{
		$("#" + idName).css("display", "block");
		$("#btn" + idName).attr("src", "/web/images/common/btn_open.gif");
	}
}

function fw_domReady2(){
    $("#lnb_id").css("background", "url('/web/images/common/s_id.gif') no-repeat");
    $("#lnb_pw").css("background", "url('/web/images/common/s_pass.gif') no-repeat");

	$("#btnTotalSearch").click(function(){
        if($("#search_word").val() == ""){
            alert("검색할 단어를 입력하세요.");
            $("#search_word").focus();
            return false;
        }
        //alert("search");
        location.href = "cafe_bulletin_list.php?sc_str=" + $("#search_word").val() + "&sc_cafe_seq=" + $("#sc_cafe_seq").val();
        return false;
    });

	$("#search_word").keyup(function(e){
        if(e.which == 13) $("#btnTotalSearch").click();
    });

    if($("#btnCafeLogin").get(0) != null){
        //alert(parent.location.href);
        $("#btnCafeLogin").click(function(){
            parent.location.href = documentRoot + "login.php?pre_url=" + parent.location.href;
            //openLogin();
        });
    }

    $("#leftMenuLoad").click(function(){        
        $.get(window.documentRoot + "ajax/visit_list_ajax.php?sc_cafe_seq=" + $("#sc_cafe_seq").val(), function(data){
            $("#leftMenuLayer1").html(data);
            $("#leftMenuLayerYn1").val("close");
            cafeLeftMenuLayer();
        });

        $.get(window.documentRoot + "ajax/visit_list_cnt_ajax.php?sc_cafe_seq=" + $("#sc_cafe_seq").val(), function(data){
            $("#leftMenuLayerCnt2").html(data);
        });
    });
	
	$("#btnLeftCafeJoin").click(function(){
		if(memberId == ""){
			openLogin();
			return;
		}

		location.href = documentRoot + "cafe_join.php?sc_cafe_seq=" + cafeSeq;
	});

    //쪽지함
    $("#btnNotePop").click(function(){
        if(memberId == ""){
            openLogin();
            return;
        }

        openPopup("http://" + wwwUrl + "/note/r_note_pop.php", "notePop", "705", "500", "yes");
    });

    $(".btnIndexCafe").click(function(){
        
        if($("#cafe_list_layer").css("display") != "none"){
            showModalLayer("cafe_list_layer", false);
            $("#btnMyCafeArrow").attr("src", "/web/images/common/btn_arrow.gif");
            return;
        }

        $.get(window.documentRoot + "ajax/my_cafe_list_ajax.php?sc_member_id=" + memberId, function(data){
            $("#cafe_list_layer").html(data);
            //$("#groupLayer").show();
            $("#btnMyCafeArrow").attr("src", "/web/images/common/btn_arrow_top.gif");
            showModalLayer("cafe_list_layer");
        });     

    });

    $("#btnIndexCafeTop").click(function(){

        if($("#cafe_list_layer_top").css("display") != "none"){
            showModalLayer("cafe_list_layer_top", false);
            $("#btnMyCafeArrowTop").attr("src", "/web/images/common/menu_right1.gif");
            return;
        }

        $.get(window.documentRoot + "ajax/top_my_cafe_list_ajax.php?sc_member_id=" + memberId, function(data){
            $("#cafe_list_layer_top").html(data);
            //$("#groupLayer").show();
            $("#btnMyCafeArrowTop").attr("src", "/web/images/common/menu_right1_top.gif");
            showModalLayer("cafe_list_layer_top");
        });
    });
    
    $("#btnLnbLogin").click(function(){
        if($("#lnb_id").val() == "") $("#lnb_id").val("");
        if($("#lnb_pw").val() == "") $("#lnb_pw").val("");

        if($("#lnb_id").val() == ""){
            alert("아이디를 입력하세요.");
            $("#lnb_id").css("background", "");
            $("#lnb_id").focus();
            return false;
        }

        if($("#lnb_pw").val() == ""){
            alert("비밀번호를 입력하세요.");
            $("#lnb_pw").css("background", "");
            $("#lnb_pw").focus();
            return false;
        }

        if($("#pre_url").get(0) == null){
            $("#frm").append('<input type="hidden" id="pre_url" name="pre_url" value="" />');
        }
        $("#pre_url").val(myUrl);
        
        $("#act").val("lnb_login");
        frm.submitForm2("_self", loginUrl, "lnb_login");

        return false;
    });
	
	$("#lnb_id").focus(function(e){
        //if(this.value == "아이디") this.value = "";
        $("#lnb_id").css("background", "");
    });

    $("#lnb_id").blur(function(e){
        if($("#lnb_id").val() == ""){
            $("#lnb_id").css("background", "url('/web/images/common/s_id.gif') no-repeat");
        }
    });

    $("#lnb_pw").focus(function(e){
        //if(this.value == "비밀번호") this.value = "";
        $("#lnb_pw").css("background", "");
    });

    $("#lnb_pw").blur(function(e){
        if($("#lnb_pw").val() == ""){
            $("#lnb_pw").css("background", "url('/web/images/common/s_pass.gif') no-repeat");
        }
    });

    $("#lnb_id, #lnb_pw").keyup(function(e){
        if(e.keyCode == "13") $("#btnLnbLogin").click();
    });

    if($("#btnLnbLogin").get(0) != null){
        if(nvl($.cookie("save_id"), "") != ""){
            $("#lnb_id").val($.cookie("save_id"));
            $("#lnb_id").css("background", "");
            $("#lnb_id_save_yn").attr("checked", true);
            $("#lnb_pw").val("");
        }
    }

    $("#leftMenuLoad").click();

    if($("#tmp_main_str") != null){
        $("#tmp_main_str").focus();
    }

    $("#lnb_id").val("test");
    $("#lnb_id").css("background", "");
    $("#lnb_pw").val("1111");
    $("#lnb_pw").css("background", "");
}

// 로그인 팝업 함수
function openLogin(){
	openPopup("http://" + wwwUrl + "/member/login_pop.php?result_url=http://" + cafeUrl + "/opener_reload.php", "openLogin", "590", "354");
}

var ajaxIndex = new Date();
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
function openFileUpload(code, callback, type, old, seq, cafeSeq){
	if(old == null) old = "";
    if(seq == null) seq = "0";

    openPopup(documentRoot + "common/file_upload_pop.php?code=" + code + 
		"&callback=" + callback + 
		"&type=" + type + 
		"&old=" + old + 
        "&cafe_bulletin_seq=" + seq + "&cafe_seq=" + cafeSeq, "file_upload", 400, 226);
}

//복사
function copyBulletinViewAddr(addr){
    copyForClipboard(addr, "이 게시물의 주소가 복사되었습니다.\n게시판이나 메신저 창에서 Ctrl+V를 눌러보세요.");
}




function inputCheck(check_string)
{
        var char_ASCII = check_string.charCodeAt(check_string.length-1); 
         
        //숫자 
        if (char_ASCII >= 48 && char_ASCII <= 57 ) 
        {
                return 1; 
        }
        //영어 
        else if ((char_ASCII>=65 && char_ASCII<=90) || (char_ASCII>=97 && char_ASCII<=122)) 
        {
                return 2; 
        }
        //특수기호 
        else if ((char_ASCII>=33 && char_ASCII<=47) 
                        || (char_ASCII>=58 && char_ASCII<=64) 
                        || (char_ASCII>=91 && char_ASCII<=96) 
                        || (char_ASCII>=123 && char_ASCII<=126)) 
                return 4; 
        //한글 
        else if ((char_ASCII >= 12592) || (char_ASCII <= 12687)) 
                return 3; 
        else 
                return 0; 
} 

/**
    내용 영역의 폰트사이즈 + - 버튼 클릭시 이벤트 처리
*/
function fontSizeChange(layerId, isPlus){
    var j = $("#" + layerId);
    var o = j.get(0);

    if(j.attr("fontsize") == null) j.attr("fontsize", 12);

    var fontsize = parseInt(j.attr("fontsize"));
    
    if(isPlus){
        if(fontsize >= 24) return;
        fontsize += 3;
    }
    else{
        if(fontsize <= 9) return;
        fontsize -= 3;
    }

    j.css("font-size", fontsize+"px");
    j.attr("fontsize", fontsize);
    

}

function openNotePop(sId){
    if(sId == ""){
        if(!confirm("로그인 후 이용 가능합니다.\n로그인 하시겠습니까?")) return;
        openLogin();
        return;
    }
    openPopup(noteUrl + "r_note_pop.php", "note", 703, 500, "yes");
}

function openNotePop2(sId){
    if(sId == ""){
        if(!confirm("로그인 후 이용 가능합니다.\n로그인 하시겠습니까?")) return;
        openLogin();
        return;
    }
    openPopup(noteUrl + "r_note_pop.php", "note", 703, 500, "yes");
}

function openNoteSend(sId, recieveId){
    if(sId == ""){
        if(!confirm("로그인 후 이용 가능합니다.\n로그인 하시겠습니까?")) return;
        openLogin();
        return;
    }
    openPopup(noteUrl + "send_note_pop.php?sc_receive_id=" + recieveId, "note_send", 703, 500, "yes");
}

function cafeMemberInfoPop(cafeSeq, sId, memberId){
    if(sId == ""){
        if(!confirm("로그인 후 이용 가능합니다.\n로그인 하시겠습니까?")) return;
        openLogin();
        return;
    }
    openPopup(documentRoot + "popup/cafe_member_info_pop.php?sc_cafe_seq=" + cafeSeq + "&sc_member_id=" + memberId, "memberInfoPop", 412, 360);
}

function openMemberInfoLayer(sId, memberId, cafeSeq, pkSeq){
    if(sId == ""){
        if(!confirm("로그인 후 이용 가능합니다.\n로그인 하시겠습니까?")) return;
        openLogin();
        return;
    }

    $.get(window.documentRoot + "ajax/cafe_member_info_layer.php?sc_member_id=" + memberId + "&sc_cafe_seq=" + cafeSeq, function(data){
            $("#memberInfoLayer" + pkSeq).html(data);
            showModalLayer("memberInfoLayer" + pkSeq);
        });
}

function openMailSend(sId, memberId, cafeSeq){
    if(sId == ""){
        if(!confirm("로그인 후 이용 가능합니다.\n로그인 하시겠습니까?")) return;
        openLogin();
        return;
    }

    openPopup(documentRoot + "popup/cafe_mail_pop.php?sc_member_id=" + memberId + "&sc_cafe_seq=" + cafeSeq, "mail_send", 460, 460);
}

function cafeMemberOut(cafeSeq, memberId){
    if(!confirm("카페에서 탈퇴하시겠습니까? \n카페 탈퇴시 게시물은 자동으로 삭제되지 않습니다.")) return;
    
    frm.member_out_cafe_seq.value = cafeSeq;
    frm.member_out_id.value = memberId;
    frm.submitForm2("_self", "cafe_member_out_proc.php", "member_out");
}

function cafeOut(cafeSeq, memberId){
    if(!confirm("카페 폐쇄신청을 하시겠습니까? \n폐쇄된 카페는 복구 되지 않습니다.")) return;
    
    frm.member_out_cafe_seq.value = cafeSeq;
    frm.member_out_id.value = memberId;
    frm.submitForm2("_self", "cafe_member_out_proc.php", "cafe_out");
}

function openScrap(cafeSeq, sId, bulletinSeq){
    if(sId == ""){
        if(!confirm("로그인 후 이용 가능합니다.\n로그인 하시겠습니까?")) return;
        openLogin();
        return;
    }

    openPopup("common/bulletin_scrap_for_blog_pop.php?sc_cafe_seq=" + cafeSeq + "&sc_bulletin_seq=" + bulletinSeq, 
        "scrap", 465, 662, "yes");
}

function openScrap2(cafeSeq, sId, bulletinSeq){
    if(sId == ""){
        if(!confirm("로그인 후 이용 가능합니다.\n로그인 하시겠습니까?")) return;
        openLogin();
        return;
    }

    openPopup("common/bulletin_scrap_for_cafe_pop.php?sc_cafe_seq=" + cafeSeq + "&sc_bulletin_seq=" + bulletinSeq, 
        "scrap2", 465, 662, "yes");
}

function reportComment(bulletinSeq, seq){
	alert("준비중입니다.");
	return;
}

function copyToClipboard(addr){
    copyForClipboard(addr, "이 게시물의 주소가 복사되었습니다.\n게시판이나 메신저 창에서 Ctrl+V를 눌러보세요.");
}

function openFindIdPw(){
    openPopup("http://" + wwwUrl + "/member/find_info_pop.php", "find_info", 501, 420);
}

function openFindPw(){
    openPopup("http://" + wwwUrl + "/member/find_pass_pop.php", "find_id", 501, 247);
}

function openFindId(){
    openPopup("http://" + wwwUrl + "/member/find_id_pop.php", "find_pass", 501, 217);
}

function setStartPage(url) { 
    try { var obj = document.createElement("DIV"); 
    obj.style.behavior = 'url(#default#homepage)'; 
    obj.setHomePage(url); delete obj; return true; } 
    catch (err) { } 
}

function bookMark(url){
    window.external.AddFavorite(url, '엔피오 카페솔루션')
}

function reportPop(url, type, seq){
    if(window.memberId == ""){
        if(!confirm("로그인 후 이용 가능합니다.\n로그인 하시겠습니까?")) return;
        openLogin();
        return;
    }

    openPopup("http://" + wwwDomain + "/member/report_pop.php?url=" + escape(url) + "&report_type=" + type + "&report_seq=" + seq, "reportPop", 460, 460);
}

//상단 좌측 스크립트
function left_top_link(index){
    alert("준비중입니다.");
    return;

    var url = "";
    if(index == "1") url = "";
    else if(index == "2") url = "";
    else if(index == "3") url = "";

    top.location.href = url;
}

function emailPop(){
    openPopup("http://" + wwwDomain + "/etc/email_etc.php", "emailEtc", "300", "220");
}



