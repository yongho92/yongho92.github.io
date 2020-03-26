jQuery.browser = {};
(function () {
    jQuery.browser.msie = false;
    jQuery.browser.version = 0;
    if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
        jQuery.browser.msie = true;
        jQuery.browser.version = RegExp.$1;
    }
})();

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

    str += '<embed src="' + src + '" quality="high" ' + embedStr + ' bgcolor="#000000" wmode=transparent width="' + width + '" height="' + height + '" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />\n';
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
                j.hide();
                $("body").unbind("click");
            }
        });
    }
    else{
        j.hide();
        $("body").unbind("click");
    }
}

function setDefault(id, value){
    if(value != "") $("#" + id).val(value);
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
	document.writeln(str);
}

function daumZipcode() {
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
            document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('addr1').value = fullAddr;

            // 커서를 상세주소 필드로 이동한다.
            document.getElementById('addr2').focus();
        }
    }).open();
}

function daumZipcodeCustom(zipcode, addr1, addr2) {
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
            document.getElementById(zipcode).value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById(addr1).value = fullAddr;

            // 커서를 상세주소 필드로 이동한다.
            document.getElementById(addr2).focus();
        }
    }).open();
}

function daumZipcodeCustom2(zipcode, addr1) {
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
            document.getElementById(zipcode).value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById(addr1).value = fullAddr;

        }
    }).open();
}