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

function printStr(str)
{
    document.write(str);
}

function getAgeByIdn(idn, isMan){
    var y = "19" + idn.substring(0, 2);
    var n = parseInt(idn.substring(7, 8));
    if(n == 3 || n == 4 || n == 7 || n == 8) y = "20" + idn.substring(0, 2);
    y = parseInt(y);
    var currentYear = new Date().getYear();

    

    var ret = currentYear - y + 1;
    if(isMan) {
        if(getToday() > y + "-" + idn.substring(2, 4) + "-" + idn.substring(4, 6)) ret = currentYear - y - 1;
        else ret = currentYear - y;
    }
    return ret;
}

function checkValidateEmail(value, errorMsg){
	var strng = value;
	re1 = new RegExp("(@.*@)|(\\.\\.)|(@\\.)|(^\\.)");
	re2 = new RegExp("^.+\\@(\\[?)[a-zA-Z0-9\\-\\.]+\\.([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$");
	if( re1.test(strng) || !re2.test(strng) ) 
	{
		if(errorMsg != null && errorMsg != "") 
		{
			alert(errorMsg);
			obj.focus();
		}
		return false;
	}
	else return true;
}

function isCharInt(str){
	var char_flag = "N";		// 영문사용여부
	var int_flag = "N";		// 숫자사용여부

	for(var i=0; i<str.length; i++){
		var chr = str.substr(i,1);
		if((chr < '0' || chr > '9') && (chr < 'a' || chr > 'z') && (chr < 'A' || chr > 'Z')){
			return false;
		}
		if((chr >= '0' && chr <= '9'))	{
			int_flag = "Y";
		}
		if((chr >= 'a' && chr <= 'z') || (chr >= 'A' && chr <= 'Z')){
			char_flag="Y";
		}
	}

	if(int_flag=="Y"  || char_flag=="Y")
		return true;
	else
		return false;
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

function getToday(){
    var d = new Date();
    
    return d.getYear() + "-" + lpad(d.getMonth()+1, 2, "0") + "-" + lpad(d.getDate(), 2, "0");
}

/**
    0 : 일요일
    6 : 토요일
*/
function getYoilNum(sdate){
    var d = new Date(parseInt(sdate.substring(0, 4)), Number(sdate.substring(5, 7))-1, Number(sdate.substring(8, 10)), 0, 0, 0, 0);
    return d.getDay();
}

function getYoilStr(sdate){
    var yoilNum = getYoilNum(sdate);
    if(yoilNum == 0) return "일";
    else if(yoilNum == 1) return "월";
    else if(yoilNum == 2) return "화";
    else if(yoilNum == 3) return "수";
    else if(yoilNum == 4) return "목";
    else if(yoilNum == 5) return "금";
    else if(yoilNum == 6) return "토";
    return "";
}

function getDateStr(year, month, day, sdate){
    var d = new Date(parseInt(sdate.substring(0, 4)) + year, Number(sdate.substring(5, 7))-1 + month, Number(sdate.substring(8, 10))+day, 0, 0, 0, 0);
    
    return d.getYear() + "-" + lpad(d.getMonth()+1, 2, "0") + "-" + lpad(d.getDate(), 2, "0");
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

function getCheckboxValue(obj){
    return getCheckBoxValue(obj);
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

function isMovieFilename(filename){
	var ex = "mov,asf,wmv,avi";
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
    if(idName == null || idName == "") idName = "myswf_" + new Date().getTime();

    var str = "";
    str += '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" ';
    str += 'codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,1,0,0" ';
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

    str += '<embed src="' + src + '" quality="high" ' + embedStr + ' bgcolor="#000000" wmode=transparent width="' + width + '" height="' + height + '" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />\n';
    str += '</object>';

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
    if(obj.options == null) return;
	while(obj.options.length > 0) obj.options[obj.options.length-1] = null;
}

function addOption(obj, value, text, is_selected){
	var index = obj.options.length;
	obj.options[index] = new Option(text, value);
	if(is_selected) obj.options[index].selected = true;
    return obj.options[index];
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

function showLoadingLayer(buttonObj, loadingStr){
    loadingStr = nvl(loadingStr, "로딩중..");
    if(buttonObj == null){
        $("body").prepend("<div class='bigLoadingLayer'><img src='/web/images/loading_16_16.gif'/><br />\n" + 
            loadingStr + "</div>");
        
        //var height = document.body.scrollHeight;
        //var width = document.body.scrollWidth;

        var height = $(window).height();
        //alert(document.body.scrollTop);
        //alert(height);
        var width = $(window).width();
        var t = height / 2 - 10 + $(window).scrollTop();
        var l = width / 2 - 20;

        $(".bigLoadingLayer").css({
            position : "absolute",
            "top" : t,
            "left" : l
        });
        return;
    }

    var height = nvl($(buttonObj).height(), 20);
    $(buttonObj).hide();
   
    var loadingJ = $("<span class=\"loadingLayer\">" + loadingStr + "</span>");

    loadingJ.height(height);
    $(buttonObj).after(loadingJ);
    buttonObj.loadingObj = loadingJ;

}

function hideLoadingLayer(buttonObj){
    if(buttonObj == null){
        $(".bigLoadingLayer").remove();
        return;
    }

    if(typeof buttonObj == "string") {
        buttonObj = $("#" + buttonObj).get(0);
    }
    var loadingJ = buttonObj.loadingObj;
    if(loadingJ != null) loadingJ.remove();
    $(buttonObj).show();
    buttonObj.loadingObj = null;
}

var isMouseOut = true;
var issshow = false;
function showModalLayer(idName, isShow){
    if(isShow == null) isShow = true;
    
    var j = $("#" + idName);

    if(isShow){
        j.show();        
        
        j.mouseleave(function(){
            $(this).attr("isMouseOut", true);
            isMouseOut = true;
        });
        j.mouseenter(function(){
            $(this).attr("isMouseOut", false);
            isMouseOut = false;
        });
        $("body").click(function(){
            if(j.attr("isMouseOut")) {
                //alert("out");
                j.hide();
                $("body").unbind("click");
                j.attr("isMouseOut", null);
            }
        });
        j.attr("isMouseOut", true);
    }
    else{
        j.hide();
        $("body").unbind("click");
        j.attr("isMouseOut", null);
    }
}

function setDefault(id, value){
    if(value != "") $("#" + id).val(value);
}

function getWMP(url, width, height){
    var str = '<object classid="CLSID:22D6F312-B0F6-11D0-94AB-0080C74C7E95" width="' + width + '" height="' + height + '" id="wmp">\
    <param name="AutoStart" value="1" />\
    <param name="Filename" value="' + url + '" />\
    <param name="ShowControls" value="0" />\
    <param name="AutoSize" value="0" />\
    <param name="DisplaySize" value="0" />\
    <param name="AutoResize" value="0" />\
    <param name="ShowDisplay" value="0" />\
    <param name="ShowTracker" value="0" />\
    <param name="AllowChangeDisplaySize" value="1" />\
    <param name="MovieWindowWidth" value="' + width + '"/>\
    <param name="MovieWindowHeight" value="' + height + '"/>\
    <param name="ShowAudioControls" value="0"/>\
    <param name="ShowGotoBar" value="0"/>\
    <param name="ShowAudioControls" value="0" />\
    <param name="ShowPositionControls" value="0" />\
</object>';
    return str;
}

function printWMP(url, width, height){
    var str = getWMP(url, width, height);
    document.writeln(str);
}

function getXmlText(xml, elementName){
    var index1 = xml.indexOf("<" + elementName + ">");
    var index2 = xml.indexOf("</" + elementName + ">");
    if(index1 >= 0){
        index1 += "<" + elementName + ">".length;
        return xml.substring(index1, index2);
    }

    return "";
}

function getCookie( name ){
    var nameOfCookie = name + "=";
    var x = 0;
    while ( x <= document.cookie.length )
    {
        var y = (x+nameOfCookie.length);
        if ( document.cookie.substring( x, y ) == nameOfCookie ) {
            if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
            endOfCookie = document.cookie.length;
            return unescape( document.cookie.substring( y, endOfCookie ) );
        }
        x = document.cookie.indexOf( " ", x ) + 1;
        if ( x == 0 ) break;
    }
    return "";
}

function setCookie1( name, value, expiredays ){
    var todayDate = new Date();
    todayDate.setDate( todayDate.getDate() + expiredays );
    document.cookie = name + '=' + escape( value ) + '; path=/; expires=' + todayDate.toGMTString() + ';'
}

function checkCheckbox(obj, alertMsg){
    alertMsg = nvl(alertMsg, "");
    var arr = getCheckBoxValue(obj);
    if(arr.length == 0) {
        if(alertMsg != "") alert(alertMsg);
        if(obj.length == null) obj.focus();
        else obj[0].focus();
        return false;
    }

    return true;
}

function printSwfFull(src, width, height , addParams)
{
    document.writeln('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"');
    document.writeln('codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" ');
    document.writeln('width="100%" height="470">');
    //document.writeln('<param name="allowScriptAccess" value="sameDomain" />');
    document.writeln('<param name="movie" value="' + src + '" />');
    document.writeln('<param name="wmode" value="transparent" />');
    document.writeln('<param name="quality" value="high" />');
    //document.writeln('<param name="bgcolor" value="#ffffff" />');

    if(addParams != null)
    {
        for(var i=0 ; i<addParams.length ; i++)
        {
            document.writeln(addParams[i]);
        }
    }

    document.writeln('<embed src="' + src + '" quality="high" bgcolor="#ffffff" wmode=transparent width="100%" height="470" name="menu_navi" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
    document.writeln('</object>');
}

function bluring(){ 
if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG") document.body.focus(); 
} 
document.onfocusin=bluring;