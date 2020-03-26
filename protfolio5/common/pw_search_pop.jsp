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
    if(parameters.isEqual("act", "pw_search")){
        DataEntity memDE = memMgr.getMember(parameters.print("id"));
        if(memDE.isEmpty("mem_seq")) {
            errorMsg("일치하는 회원정보가 없습니다.");
            return;
        }

        if(!memDE.isEqual("mem_nm", parameters.print("name")) || !memDE.isEqual("email", parameters.print("email"))){
            errorMsg("일치하는 회원정보가 없습니다.");
            return;
        }

        String originalPw = StringUtils.random(100000, 999999) + "";
        String pw = originalPw;
        memMgr.updateMemberPw(memDE.print("mem_seq"), pw);

        out.println(StringUtils.windowClose("귀하의 임시 비밀번호는 " + originalPw + " 입니다. 로그인 후 마이페이지에서 비밀번호를 변경하시기 바랍니다."));
        return;
    }
%>
<%@ include file="/inc/www_popup_header.jsp"%>
<script>
function fw_domReady(){
    $("#btnOk").click(function(e){
        if(!frm.validate()) return false;
        frm.submitForm2("_self", "pw_search_pop.jsp", "pw_search");
        return false;
    });
}
</script>

<div class="pop_layer2" style="padding-bottom:0px;">
   <div class="pop_title" style="background:url(''); padding-top:6px; padding-bottom:12px;">
      <h1><img src="../../web/images/www/mypage/title_pop02.gif" !alt="비밀번호찾기" /></h1>
      <p><a href="javascript:self.close();"><img src="../../web/images/www/mypage/btn_pop_close.gif" !alt="닫기" /></a></p>
   </div>
   <div class="search_pop" style="padding-top:0;">
           <ul>
            <li><p>아이디</p><input type="text" class="input_login" style="width:156px;" name="id" value="" required msg="아이디를 입력하세요" /></li>
            <li><p>이름</p><input type="text" class="input_login" style="width:156px;" name="name" value="" required msg="이름을 입력하세요." /></li>
            <li><p>이메일</p><input type="text" class="input_login" style="width:156px;" name="email" value="" required msg="이메일을 입력하세요." email /></li>
         </ul>
         <span>* 회사, 학교, 개인 이메일 중 하나만 적어주세요</span>
      </div><!--search_pop-->
           <p class="ac mgt10"><input type="image" src="../../web/images/www/mypage/btn_pop_ok.gif" !alt="확인" id="btnOk"/></p>
</div>
<%@ include file="/inc/www_popup_footer.jsp"%>
<%@ include file="/inc/destroy.jsp"%>