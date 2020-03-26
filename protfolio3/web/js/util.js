function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}


function getCheckBoxByValue(obj, value){
    if(obj.length == null){
        if(obj.value == value) return obj;
    }
    else{
        for(var i=0 ; i<obj.length ; i++){
            if(obj[i].value == value) return obj[i];
        }
    }

    return null;
}

function getStrBytes(val){
    var temp_estr = escape(val);
    var s_index   = 0;
    var e_index   = 0;
    var temp_str  = "";
    var cnt       = 0;

    while ((e_index = temp_estr.indexOf("%u", s_index)) >= 0)  {
        temp_str += temp_estr.substring(s_index, e_index);
        s_index = e_index + 6;
        cnt ++;
    }

    temp_str += temp_estr.substring(s_index);
    temp_str = unescape(temp_str);

    return ((cnt * 2) + temp_str.length);
}

function getDateStr(year, month, day, sdate){
    var d = new Date(parseInt(sdate.substring(0, 4)) + year, Number(sdate.substring(5, 7))-1 + month, Number(sdate.substring(8, 10))+day, 0, 0, 0, 0);
    
    return d.getFullYear() + "-" + lpad(d.getMonth()+1, 2, "0") + "-" + lpad(d.getDate(), 2, "0");
}

function checkSSN(idn1, idn2) 
{
	var strng = idn1 + "-" + idn2;
	if(idn2 == null) strng = idn1;

	re = /^[0-9]{6}-?[0-9]{7}$/;
	if (!re.test(strng)) return false;

	strng_new = strng.replace("-","");
	var year   = parseInt(strng_new.substr(0,2),10);
	var month  = parseInt(strng_new.substr(2,2),10);
	var day    = parseInt(strng_new.substr(4,2),10);
	var gender = parseInt(strng_new.charAt(6)  ,10);
	if ( month<1 || month>12 || gender<1 || gender>4 ) return false;

	var arrayOfLasts = new Array(31,28,31,30,31,30,31,31,30,31,30,31);
	if(month==2) {
		year += (gender<3 ? 1900 : 2000);
		if(leapyear(year)) arrayOfLasts[1] = 29;
	}
	if(day<1 || day>arrayOfLasts[month-1]) return false;

	var tmp = 0;
	for(var n=0; n<12; n++) tmp += (n%8+2) * parseInt(strng_new.charAt(n),10);
	tmp = (11-(tmp%11))%10;
	if (tmp != strng_new.charAt(12)) return false;
	return true;
}

function replace(str, gubun, rep){
	return str.split(gubun).join(rep);
}

function openPopup(url, name, width, height, scrollbars, resizable)
{
	if(scrollbars == null) scrollbars = "no";
	if(resizable == null) resizable = "no";

	var top = window.screen.height/2 - height/2 - 20;
    var left = window.screen.width/2 - width/2;

	var w = window.open(
							url, 
							name, 
							"width=" + width + ",height=" + height + ", scrollbars=" + scrollbars + ", status=yes, resizable=" + resizable + 
							", top=" + top + ", left=" + left
							);
	if(w != null) w.focus();
	return w;
}

function openPopup2(url, name, width, height, top, left, scrollbars, resizable)
{
	if(scrollbars == null) scrollbars = "no";
	if(resizable == null) resizable = "no";
	var w = window.open(
							url, 
							name, 
							"width=" + width + 
							",height=" + height + 
							", scrollbars=" + scrollbars + 
							", status=yes, resizable=" + resizable + 
							", top=" + top + 
							", left=" + left
							);
	if(w != null) w.focus();
	return w;
}

function parseNumber(num){
	num = new String(num);
	num = remove(num, ",");
	if (num.length==0 || isNaN(num)) return 0;
	return Number(num);
}

function remove(str, gubun){
	return str.split(gubun).join("");
}

function getRadioValue(obj){
	if(obj == null) return null;

    if(obj.length == undefined) {
		if(obj.checked) return obj.value;
		else return null;
	}

	for(var i=0 ; i<obj.length ; i++){
		if(obj[i].checked) return obj[i].value;
	}

	return null;
}

function setRadioValue(obj, value){
    if(obj == null) return;

    if(obj.length == undefined){
        if(obj.value == value) obj.checked = true;
    }
    else{
        for(var i=0 ; i<obj.length ; i++){
            if(obj[i].value == value) {
                obj[i].checked = true;
                return;
            }
        }
    }
}

function checkAll2(obj, isChecked){
	if(obj == null) return;
	if(obj.length == undefined){
        if(isChecked != null) obj.checked = isChecked;
		else obj.checked = !obj.checked;
	}
	else{
		for(var i=0 ; i<obj.length ; i++){
            if(isChecked != null) obj[i].checked = isChecked;
			else obj[i].checked = !obj[i].checked;
		}
	}
}

function getCheckBoxValue(obj){
	var ret = new Array();
	if(obj == null) return ret;

	if(obj.length == undefined) {
		if(obj.checked) ret[0] = obj.value;
	}
	else{
		var j=0;
		for(var i=0 ; i<obj.length ; i++) {
			if(obj[i].checked) ret[j++] = obj[i].value;
		}
	}

	return ret;
}

function setVisible2(name, is_show){
	var display = "none";
	if(is_show) display = "inline";

	var obj;
	if(document.getElementById(name) == null){
		if(document.frm[name] == null){
			if(document.images[name] == null){
				alert("ERROR : Method setVisible2(), NAME is " + name + " and is_show is " + is_show);
				return;
			}
			else obj = document.images[name];
		}
		else obj = frm[name];
	}
	else obj = document.getElementById(name);
	
	obj.style.display = display;
}

function copyForClipboard(str, alertMsg){
    window.clipboardData.setData("Text", str);

    alertMsg = nvl(alertMsg, "");
    if(alertMsg.length > 0) alert(alertMsg);
}

function makeComma(checkText)
{
	checkText = new String(parseNumber(checkText));
	var len = checkText.length;
	var str = checkText;
	if(len < 4)
	{
	}
	else if (len == 4)
	{
		str = checkText.substr(0,1) + "," + checkText.substr(1,len);
	}
	else if(len == 5)
	{
		str = checkText.substr(0,2) + "," + checkText.substr(2,len);
	}
	else if(len == 6)
	{
		str = checkText.substr(0,3) + "," + checkText.substr(3,len);
	}
	else if(len == 7)
	{
		str = checkText.substr(0,1) + "," + checkText.substr(1,3) + "," + checkText.substr(4,len);
	}
	else if(len == 8)
	{
		str = checkText.substr(0,2) + "," + checkText.substr(2,3) + "," + checkText.substr(5,len);
	}
	else if(len == 9)
	{
		str = checkText.substr(0,3) + "," + checkText.substr(3,3) + "," + checkText.substr(6,len);
	}
	else if(len == 10)
	{
		str = checkText.substr(0,1) + "," + checkText.substr(1,3) + "," + checkText.substr(4,3) + "," + checkText.substr(7,len);
	}
	else if(len == 11)
	{
		str = checkText.substr(0,2) + "," + checkText.substr(2,3) + "," + checkText.substr(5,3) + "," + checkText.substr(8,len);
	}
	else if(len == 12)
	{
		str = checkText.substr(0,3) + "," + checkText.substr(3,3) + "," + checkText.substr(6,3) + "," + checkText.substr(9,len);
	}
	else if(len > 12)
	{
		alert("Invalidate Number");
	}

    return str;
}

function isImageFilename(filename){
	var ex = "gif,jpg,jpeg,png,bmp";
    var extend = getExtend(filename).toLowerCase();

    if(ex.indexOf(extend) >= 0) return true;
    else return false;
}

function getExtend(filename){
    var i = filename.lastIndexOf(".");
    if(i < 0) return "";

    return filename.substring(i+1);
}

function printSwf(src, width, height , addParams, idName){
    var str = "";
    str += '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" ';
    str += 'codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" ';
    str += 'width="' + width + '" height="' + height + '" id="' + idName + '"> ';
    //str += '<param name="allowScriptAccess" value="sameDomain" />\n';
    str += '<param name="movie" value="' + src + '" />\n';
    str += '<param name="wmode" value="transparent" />\n';
    str += '<param name="quality" value="high" />\n';
    str += '<param name="bgcolor" value="#000000" />\n';

    var embedStr = "";
    if(addParams != null){
        
        for(var i=0 ; i<addParams.length ; i++) {
            var str2 = '<param name="' + addParams[i].name + '" value="' + addParams[i].value + '" />\n';
            embedStr += addParams[i].name + '="' + addParams[i].value + '" ';
            str += str2;
        }
    }

    str += '<embed src="' + src + '" quality="high" ' + embedStr + ' bgcolor="#000000" wmode=transparent width="' + width + 
        '" height="' + height + '" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />\n';
    str += '</object>\n';

    document.writeln(str);
}

function leapyear(year) {
	if (((year%4 == 0) && (year%100 != 0)) || (year%400 == 0)) return true;
	else return false;
}

function getLastDay(month, year){
	var days;
	month = month-1;
	switch (month){
		case 0 : days=31; break;
		case 1 : if (leapyear(year)) days=29;
					else days=28;
					break;
		case 2 : days=31; break; 
		case 3 : days=30; break;
		case 4 : days=31;  break;
		case 5 : days=30;  break;
		case 6 : days=31;  break;
		case 7 : days=31;  break;
		case 8 : days=30;  break;
		case 9 : days=31;  break;
		case 10 : days=30;  break;
		case 11 : days=31;  break;
	}
	return days;
}

function initCombo(obj){
	while(obj.options.length > 0) obj.options[obj.options.length-1] = null;
}

function addOption(obj, value, text, is_selected){
	var index = obj.options.length;
	obj.options[index] = new Option(text, value);
	if(is_selected) obj.options[index].selected = true;
}

function lpad(str, leng, repChar) {
    str = new String(str);
	for(var i=str.length; i<leng; i++) str = repChar + str;
    return str;
}

function joinArray(arr, separator){
    if(arr == null) return "";

    var str = "";
    for(var i=0 ; i<arr.length ; i++){
        if(i != arr.length-1) str += arr[i] + separator;
        else str += arr[i];
    }

    return str;
}

function hideLoadingLayer(buttonObj){
    var loadingJ = buttonObj.loadingJ;
    loadingJ.remove();
    $(buttonObj).show();

}

function showLoadingLayer(buttonObj, loadingStr){
    loadingStr = nvl(loadingStr, "로딩중..")
    var height = $(buttonObj).height();
    $(buttonObj).hide();

    var loadingJ = $("<span class=\"loadingLayer\">" + loadingStr + "</span>");
    loadingJ.height(height);
    $(buttonObj).after(loadingJ);
    buttonObj.loadingObj = loadingJ;
}

function hideLoadingLayer(buttonObj){
    var loadingJ = buttonObj.loadingObj;
    if(loadingJ != null) loadingJ.remove();
    $(buttonObj).show();
    buttonObj.loadingObj = null;
}

var isMouseOut = true;
function showModalLayer(idName, isShow){
    if(isShow == null) isShow = true;
    
    var j = $("#" + idName);

    if(isShow){
        j.show();
        
        j.mouseleave(function(){
            isMouseOut = true;
        });
        j.mouseenter(function(){
            isMouseOut = false;
        });
        $("body").click(function(){
            if(isMouseOut) {
                //alert("out");
                if($("#btnMyCafeArrow") != null){
                    $("#btnMyCafeArrow").attr("src", "/web/images/common/btn_arrow.gif");
                }
                j.hide();
                $("body").unbind("click");
            }
        });
    }
    else{
        j.hide();
        
        if($("#btnMyCafeArrow") != null){
            $("#btnMyCafeArrow").attr("src", "/web/images/common/btn_arrow.gif");
        }

        $("body").unbind("click");
    }
}

function setDefault(id, value){
    if(value != "") $("#" + id).val(value);
}

function fw_domReady2(){
}

function printTitle(title){
    var root = window.documentRoot;
	var str = '<table width="100%" border="0" cellspacing="0" cellpadding="0">\
        <tr>\
        <td height="41" align="left" class="typo_lnb"><img src="' + documentRoot + 'web/images/admin/title_dot.gif" /> ' + title + '</td>\
        </tr>\
        <tr>\
        <td height="1" bgcolor="e8e8e8"></td>\
        </tr>\
        </table><br />';
	//document.writeln(str);

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
            <td height="41" align="left" class="typo_lnb">' + title + '</td>\
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

/**
    buttonType : 1 - 확인, 2 - 확인/취소, 3 - 예/아니오/취소
*/
function openDailog(idName, width, height, buttonType, buttonCallback){
    var buttonObj = {};
    if(buttonType == 1){
        buttonObj = {
			"확인":function(){
				buttonCallback("확인");
				$(this).dialog("close");
			}
		};
    }
    else if(buttonType == 2){
        buttonObj = {
			"취소":function(){
				buttonCallback("취소");
				$(this).dialog("close");
			},
			"확인":function(){
				buttonCallback("확인");
				$(this).dialog("close");
			}
		};
    }
    $("#" + idName).dialog({
		autoOpen: false,
		modal:true,
		"width" : width,
		"height" : height,
		resizable:false,
		dialogClass : "confirm",
		show : "",
		hide : "explode",
		buttons : buttonObj
	});
}



function showBackgroundGray(isShow){
    if($("#backgroundPopup").get(0) == null){
        var height = $(window).height();
        var width = $(window).width();
        //alert(height + ", " + $(window).outerHeight());
        var backgroundElement = $("<div id='backgroundPopup'></div>")
            .css({
                "display" : "none",
                "position" : "absolute" ,
                //"height" : height + "px" ,
                //"width"  : width + "px" ,
                "height" : "100%" ,
                "width"  : "100%" ,
                "top"  : "0px" ,
                "left" : "0px" ,
                "background" : "#000000" ,
                "z-index" : "10" ,
                "opacity": "0.4"
            });

        $('body').prepend(backgroundElement);
    }
    if(isShow) $("#backgroundPopup").show();
    else $("#backgroundPopup").hide();
}

/**
    버튼을 사라지게 하고 로딩중 을 표시해준다.
    더블클릭을 방지하고 작업이 진행중임을 유저에게 알려주는 효과가 있음.
*/
function showLoadingLayer(buttonObj){
    var height = $(buttonObj).height();
    $(buttonObj).hide();

    var loadingJ = $("<span class=\"loadingLayer\">로딩중..</span>");
    $(buttonObj).height(height);
    $(buttonObj).after(loadingJ);
}

function openZipCode(){
    openPopup(documentRoot + "common/zipcode_pop.php", "zipcode", 370, 360, "no");
}

function openAdminMemberPointLog(memberSeq){
    openPopup(documentRoot + "gcn.adm/member/member_point_pop.php?sc_member_seq=" + memberSeq, "member_point", 600, 700, "yes");
}

function pstTwitter(msg,url) {

    var href = "http://twitter.com/home?status=" + encodeURIComponent(msg) + " " + encodeURIComponent(url);
    var a = window.open(href, 'twitter', '');
    if ( a ) {
        a.focus();
    }
}
function pstMe2Day(msg,url,tag) {

    var href = "http://me2day.net/posts/new?new_post[body]=" + encodeURIComponent(msg) + " " + encodeURIComponent(url) + "&new_post[tags]=" + encodeURIComponent(tag);
    var a = window.open(href, 'me2Day', '');
    if ( a ) {
        a.focus();
    }
}
function pstFaceBook(msg,url) {
    
    var ShareUrl;     // 공유 주소
    var DocTitle;     // 공유 제목
    var DocSummary;   // 공유 내용 간략 설명
    var DocImage;     // 공유 썸네일 ( 80x80 사이즈 추천 )

    ShareUrl    = url;
    DocTitle    = msg;
    DocSummary  = msg;
    DocImage    = "http://oxygenwow.benefitkorea.co.kr/HFOW_like.jpg"  

    newwindow = window.open('http://www.facebook.com/sharer.php?s=100&p[url]='+encodeURIComponent(ShareUrl)+'&p[title]='+encodeURIComponent(DocTitle)+"&p[summary]="+encodeURIComponent('')+"&p[images][0]="+encodeURIComponent(DocImage),'facebookpopup', 'toolbar=0, status=0, width=626, height=436');

    if (window.focus) {newwindow.focus();}
    //var href = "http://www.facebook.com/sharer.php?u=" + url + "&t=" + encodeURIComponent(msg);
    //var a = window.open(href, 'facebook', '');
    //if ( a ) {
    //    a.focus();
    //}
}

function pstFaceBook2(msg,url,type) {
    
    var ShareUrl;     // 공유 주소
    var DocTitle;     // 공유 제목
    var DocSummary;   // 공유 내용 간략 설명
    var DocImage;     // 공유 썸네일 ( 80x80 사이즈 추천 )

    ShareUrl    = url;
    DocTitle    = msg;
    DocSummary  = msg;
    
    if(type == "1")
    {
        DocImage    = "http://oxygenwow.benefitkorea.co.kr/HFOW_realskin.jpg";
    }
    else
    {
        DocImage    = "http://oxygenwow.benefitkorea.co.kr/HFOW_flawless.jpg";  
    }

    newwindow = window.open('http://www.facebook.com/sharer.php?s=100&p[url]='+encodeURIComponent(ShareUrl)+'&p[title]='+encodeURIComponent(DocTitle)+"&p[summary]="+encodeURIComponent('')+"&p[images][0]="+encodeURIComponent(DocImage),'facebookpopup', 'toolbar=0, status=0, width=626, height=436');

    if (window.focus) {newwindow.focus();}
    //var href = "http://www.facebook.com/sharer.php?u=" + url + "&t=" + encodeURIComponent(msg);
    //var a = window.open(href, 'facebook', '');
    //if ( a ) {
    //    a.focus();
    //}
}

function pstYozmDaum(link,prefix,parameter) {

    var href = "http://yozm.daum.net/api/popup/prePost?sourceid=54&link=" + encodeURIComponent(link) + "&prefix=" + encodeURIComponent(prefix) + "&parameter=" + encodeURIComponent(parameter);
    var a = window.open(href, 'yozm', 'width=466, height=356');
    if ( a ) {
        a.focus();
    }
}