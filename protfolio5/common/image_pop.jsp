<%@ page
    contentType="text/html; charset=euc-kr"
    import="java.util.*,
            biznetpia.fw.log.Log,
            biznetpia.fw.entity.*,
            biznetpia.fw.dao.*,
            biznetpia.fw.util.*"
%>
<%@ include file="/inc/init.jsp"%>
<%
    String src = parameters.print("src");
    String imgAttr = "";
    if(!parameters.isEmpty("width")) imgAttr = "width='" + parameters.print("width") + "'";
    if(!parameters.isEmpty("height")) imgAttr += " height='" + parameters.print("height") + "'";
%>
<%@ include file="/inc/user_default_header.jsp"%>
<script type="text/javascript">
function fw_init()
{
    var width = document.images["img1"].width;
    if(width > 1024) width = 1024 + 10;
    else width = width + 30;

    var height = document.images["img1"].height;
    if(height > 768) height = 768;
    else height += 60;
    window.resizeTo(width, height);

    if(width > 1024)
    {
        document.images["img1"].width = width;
    }
}
</script>

<%@ include file="/inc/form_header.jsp"%>

<a href="javascript:self.close();" title="´Ý±â"><img name="img1" src="<%=src%>" border="0" <%=imgAttr%> /></a>
<%@ include file="/inc/destroy.jsp"%>