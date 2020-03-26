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
    MemberManager memMgr = new MemberManager(exec, parameters);
    if(parameters.isEqual("act", "id_search")){
        DataEntity memDE = memMgr.getMember(parameters.print("name"), parameters.print("email"));
        if(memDE.isEmpty("mem_seq")) {
            errorMsg("일치하는 회원정보가 없습니다.");
            return;
        }

        out.println(StringUtils.windowClose("귀하의 아이디는 " + memDE.print("id") + " 입니다."));
        return;
    }
%>
<%@ include file="/inc/www_popup_header.jsp"%>


<script>
function fw_domReady(){
    $("#btnOk").click(function(e){
        if(!frm.validate()) return false;
        frm.submitForm2("_self", "id_search_pop.jsp", "id_search");
        return false;
    });

    $("#name").focus();
}
</script>
<link rel="stylesheet" type="text/css" href="<%=webRoot%>web/css/www_wiset.css" />
<link rel="stylesheet" type="text/css" href="<%=webRoot%>web/css/www_mypage.css" />
<link rel="stylesheet" type="text/css" href="<%=webRoot%>web/css/www_bbs.css" />
<link rel="stylesheet" type="text/css" href="<%=webRoot%>web/css/www_mypage2.css" />

<div class="pop_layer1" style="padding-bottom:0px;">
   <div class="pop_title" style="background:url(''); padding-top:6px; padding-bottom:12px;">
      <h1><img src="/web/images/www/mypage/title_pop01.gif" !alt="아이디찾기" /></h1>
      <p><a href="javascript:self.close();"><img src="/web/images/www/mypage/btn_pop_close.gif" !alt="닫기" /></a></p>
   </div>
   <div class="search_pop" style="padding-top:0;">
           <ul>
            <li><p>이름</p><input type="text" class="input_login" style="width:156px;" id="name" name="name" value="" required msg="이름을 입력하세요." /></li>
            <li><p>이메일</p><input type="text" class="input_login" style="width:156px;" name="email" value="" required msg="이메일주소를 입력하세요." email/></li>
         </ul>
         <span>* 회사, 학교, 개인 이메일 중 하나만 적어주세요</span><br />
         <span>* <strong>문의번호 02) 3277-4856</strong></span>
      </div><!--search_pop-->
           <p class="ac mgt10"><input type="image" src="/web/images/www/mypage/btn_pop_ok.gif" !alt="확인" id="btnOk"/></p>
</div>

</div>
<%@ include file="/inc/www_popup_footer.jsp"%>
<%@ include file="/inc/destroy.jsp"%>