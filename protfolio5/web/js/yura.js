function printTitle(str){
    var root = window.documentRoot;
    var now = new Date();
    var month = now.getMonth()+1;
    var str2 = '<table border="0" cellpadding="0" cellspacing="0" class="tableWidth">\
<tr>\
<td align="left" valign="top" id="contents"><table border="0" cellpadding="0" cellspacing="0" class="tableWidth">\
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

	/*var str = '<table width="100%" border="0" cellspacing="0" cellpadding="0">\
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
            <td align="right" valign="middle" class="date_txt"><span style="font-weight:bold;">DATE :' + now.getYear() + '년 ' + nvl(month, "0") + '월 ' + nvl(now.getDate(), "0") + '일</span></td>\
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