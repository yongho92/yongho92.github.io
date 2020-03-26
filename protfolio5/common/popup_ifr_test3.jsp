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
    PopupManager popMgr = new PopupManager(exec, parameters);
    String seq = parameters.print("seq");
    String now = StringUtils.getToday2();

    StringBuilder sql = new StringBuilder();

    sql.setLength(0);
    sql.append("select * from popup where display_homepage_yn='Y' and (date1 <= '" + StringUtils.getToday() + "' and date2>='" + StringUtils.getToday() + "') order by seq desc \n");

    //out.println(sql.toString());
    parameters.set("query", sql.toString());
    parameters.set("params", null);
    listDR01 = exec.getGeneralList(parameters);


%>
<%@ include file="/inc/user_default_header.jsp"%>
<SCRIPT>
function fw_domReady()
{

    var arr = document.getElementById("popup_data").innerHTML.split("$:;;;");
	//alert(arr.length-1);
	var popupContent = "";
	var popupContent2 = "";
	var top = 0;
	var left = 0;
    for(var i=0 ; i<arr.length-1 && document.getElementById("popup_data").innerHTML.length>0 ; i++)
    {
        //alert("팝업아 떠라!");
        var arr2 = arr[i].split("$:;");
        var src = "popup.jsp?seq=" + arr2[0];
        var popupName = "halla_popup" + arr2[0];
        var width = arr2[1];
        var height = arr2[2];
        var scrollYn = arr2[6];
        if(scrollYn == "Y") scrollYn = "yes";
        else scrollYn = "no";

        
        /*var cookieYn = arr2[7];
        if(cookieYn == "Y") height = parseInt(height) + 50;
        else height = height;*/
        
		var winHeight = parent.parent.document.body.clientHeight; // 현재창의 높이
		var winWidth = parent.parent.document.body.clientWidth; // 현재창의 너비

		var popX = (winWidth/2) - 300;
		var popY = (winHeight/2); 
	
		//alert(winWidth + "/"+ winHeight);
		if(arr2[5] == "Y") 
		{
			top = popY + "px";
			left = popX + "px";
		}
		else
		{
			top = arr2[3] + "px";
			left = arr2[4] + "px";
		}

        if(getCookie("halla_popup" + arr2[0]) == "done") continue;
		
		//alert(src + "|" + popupName + "|" + width + "|" + height + "|" + top + "|" + left + "|" + scrollYn);
        /*if(arr2[5] == "y") openPopup(src, popupName, width, height, scrollYn);
        else openPopup2(src, popupName, width, height, top, left, scrollYn);*/

		
		//var popup_content = "<div style='position:absolute; left:" + left + "px; top:" + top + "px; z-index:2000; width:" + width + "; height:" + height + ";' id='" + popupName + "'><iframe src='/common/" + src + "' name='popup' width='" + width + "' height='" + height + "' scrolling='" + scrollYn + "' border='0'></iframe></div>";
		var popup_content = "<div style='position:absolute; display:inline; left:" + left + "; top:" + top + "; z-index:2000; width:" + width + "; height:" + height + ";' id='" + popupName + "'><div id='" + popupName + "_ifr'></div></div>";
		
		popupContent = popupContent + popup_content;
		
		//popupContent2 = popupContent2 + src + "$:;";

		

		//alert(popupContent);

		parent.document.getElementById("popup_zone").innerHTML = popupContent;

		
				
    }

	var url = src + "&d=" + ajaxIndex++;
		$.get(url, function(data){
			//alert(data);
			$("#" + popupName + "_ifr").html(data);
		});
	
}

</script>
<iframe name="ifr_popup2" src="" width="0" height="0" style="display:none;"></iframe>

<%
    String sb = "";
    String sb1 = "";
    int height1 = 0;

    while(listDR01.hasNext())
    {
        /*
		if(listDR01.isEqual("cookie_yn", "Y"))
        {
            height1 = Integer.parseInt(listDR01.print("height")) + 50;
        }
        else
        {
            height1 = Integer.parseInt(listDR01.print("height"));
        }
		*/
		height1 = Integer.parseInt(listDR01.print("height")) + 50;

        sb1 = listDR01.print("seq") + "$:;" + listDR01.print("width") + "$:;" + height1 + "$:;" + listDR01.print("pos_top") + "$:;" + listDR01.print("pos_left") + "$:;" + listDR01.print("pos_center_yn") + "$:;" + listDR01.print("scroll_yn") + "$:;" + listDR01.print("cookie_yn") + "$:;;;";

        sb = sb + sb1;
    }
%>

<XMP ID="popup_data" STYLE="display:none"><%=StringUtils.remove(sb, " ")%></XMP>
<div id="separator" STYLE="DISPLAY:NONE"><%=separator%></div>

<%@ include file="/inc/user_default_footer.jsp"%>
<%@ include file="/inc/destroy_test.jsp"%>