<%
    /**
        _next_page 페이지로 리다이렉션.
        포워딩 시켜주는것 같은 효과를 주기위해 'pk_*', 'sc_*' 인 파라미터값은 그대로 유지시켜준다.
    */
%>
<%@ page
    contentType="text/html; charset=ksc5601"
    import="java.util.*,
            biznetpia.fw.log.Log,
            biznetpia.fw.entity.*,
            biznetpia.fw.dao.*,biznetpia.fw.util.*"
%>
<%@ include file="/inc/init.jsp"%>
<%
    String nextPage = StringUtils.print((String)request.getAttribute("_next_page"));
%>
<script src="<%=jsRoot%>script.js"></script>

<SCRIPT>
function init()
{
    var msg = document.getElementById("message").innerHTML;
    if(document.frm.isReceived.value == "false")
    {
        alert(msg);
        history.back();
    }
    else
    {
        if(msg != "") alert(msg);

        submitForm3(window, "<%=webRoot%>" + document.frm["_next_page"].value.substring(1));

        /*
        frm.action = frm.document_root.value + frm["_next_page"].value.substring(1);
        //frm.action = frm.document_root.value + frm["_next_page"].value;
        frm.submit();
        */
    }
}

</SCRIPT>

<HTML>
<BODY ONLOAD="init();">

<FORM NAME="frm" METHOD="POST" style="display:none">
<XMP ID="message" STYLE="display:none"><%=StringUtils.print((String)request.getAttribute("message"))%></XMP>
<INPUT TYPE=TEXT NAME="isReceived" VALUE="<%=StringUtils.print((String)request.getAttribute("isReceived"))%>">


<INPUT TYPE=TEXT NAME="document_root" VALUE="<%=webRoot%>"><BR>
<INPUT TYPE=TEXT NAME="_next_page" VALUE="<%=nextPage%>"><BR>
<INPUT TYPE=TEXT NAME="pageSize" VALUE="<%=parameters.print("pageSize")%>">
<INPUT TYPE=TEXT NAME="page" VALUE="<%=parameters.print("page")%>">
<%
    String names[] = parameters.getParameterNames();

    if(names.length == 0)
    {
        names = new String[100];
        Enumeration en = request.getParameterNames();
        int i=0;
        while(en.hasMoreElements())
        {
            if(i >= 100) break;
            names[i++] = (String)en.nextElement();
        }
    }

    String key = null;
    for(int i=0 ; i<names.length ; i++)
    {
        key = StringUtils.print(names[i]);
        //System.out.println(key + " : " + parameters.print(key));
        if(key.indexOf("sc_") == 0 || key.indexOf("pk_") == 0){}
        else continue;

        if(parameters.print(key).equals("")) continue;


%>
<%=key%> : <INPUT TYPE=TEXT NAME="<%=key%>" VALUE="<%=parameters.print(key)%>"><BR>
<%
    }

%>

</form>
</body>
</html>


<%@ include file="/inc/destroy.jsp"%>