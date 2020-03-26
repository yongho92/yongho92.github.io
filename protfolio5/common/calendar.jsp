<%@ page contentType="text/html; charset=utf-8"%>
<%
  	String fieldvalue = request.getParameter("fieldvalue");
    if(fieldvalue == null) fieldvalue = "";
%>
<html>
<head>
<title>Calendar</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<script type="text/javascript" src="/web/js/jquery-1.3.2.min.js"></script>
<style type="text/css">
.calcaption {  font-family: "돋움", "돋움체", "Arial"; font-size: 9pt;color: #FFFFFF; background-color: #F5F5F5; border: 1px #000066 solid}
.calender {  background-color: #FFFFFF; width: 200px; clip:   rect()}
.calborder {  border: 1px #FFFFFF solid; border-color: #FFFFFF solid}
.caldropdowns {  font-family: "Arial", "Helvetica", "sans-serif"; font-size: 9pt; color: #000000; background-color: #FFFFFF; width: auto; clip:  rect()}
.calbutts {  font-family: "돋움", "돋움체", "Arial"; font-size: 9pt;color: #000000; background-color: #DFE4EA; width: auto; clip:  rect(); cursor: hand; border-style: none}
.calinsideborder { border: 1px #DFE4EA inset; clip:   rect()}
.caldays { font-family: "Arial"; font-size: 9pt;color: #000000; background-color: #E8F3F4; }
.toyo { cursor: hand;font-family: "돋움", "돋움체", "Arial"; font-size: 9pt;  color: #0000FF; background-color: #DCE7F3}
.calwknd { cursor: hand;font-family: "돋움", "돋움체", "Arial"; font-size: 9pt; color: #CC0000; background-color: #DCE7F3}
.calwkdy { cursor: hand;font-family: "돋움", "돋움체", "Arial"; font-size: 9pt;  color: #000000; background-color: #FFFFFF }
.calinsidesettings { clip:  rect(); width: 200px}
</style>
<script LANGUAGE="JavaScript1.3">
var now     = new Date();
var WinDate = new Date();
var firstyear=1900;
var lastyear=now.getFullYear()+5;
var colour="#cccccc";
var coltoday="#FF0000";
var currWinDate="";

var day   = now.getDate();
var month = now.getMonth();
var year  = now.getFullYear();
var daycell=new Array();
var cellday=new Array();
var n;

function message(cell)
{
	if(jQuery.browser.msie) window.returnValue = cellday[cell];
    else opener.setClickedCalendar(cellday[cell]);
	window.close();
}

function calendar()
{
	currWinDate = "<%=fieldvalue%>";
	if ( (currWinDate.substring(0,2) == '19' || currWinDate.substring(0,2) == '20') &&
	     (currWinDate.substring(5,7) <= '12' && currWinDate.substring(5,7) > '00') &&
	     (currWinDate.substring(8,10) <= '31' && currWinDate.substring(8,10)  > '00'))
	{
	WinDate.setFullYear(currWinDate.substring(0,4));
	WinDate.setMonth(currWinDate.substring(5,7)-1);
	WinDate.setDate(currWinDate.substring(8,10));
	day   = WinDate.getDate();
	month = WinDate.getMonth();
	year  = WinDate.getFullYear();
}
var calobj = "";
calobj+="<table border='0' cellspacing='0' cellpadding='0' class='calborder'>";
calobj+="<tr><td>";
calobj+="<table border='0' cellspacing='2' cellpadding='0' class='calender'>"
calobj+="<tr><td colspan='3'>";
calobj+="<select id='calmonth' onChange='updatecalendar()' class='caldropdowns'>";
calobj+="<option>01 <option>02 <option>03 <option>04 <option>05 ";
calobj+="<option>06 <option>07 <option>08 <option>09 <option>10 ";
calobj+="<option>11 <option>12 </select>";
calobj+="</td><td colspan='2' align='right'>";
calobj+="<select id='calyear' onChange='updatecalendar()' class='caldropdowns'>";

//alert(firstyear);
for (n=firstyear;n<lastyear;n++)
{
  if (n==year)
  {
     calobj+="<option selected value='"+n+"'>"+n+"</option>";
  }
  else
  {
    calobj+="<option value='"+n+"'>"+n+"</option>";
  }
}
	calobj+="</select>";
	calobj+="</td></tr>";
	calobj+="</td></tr><tr align='center'><td width='100%' colspan='5'>";
	calobj+="<img src='../web/images/common/calendar_arrow1.gif' border='0' style='cursor:hand' onclick='gobackmonth();updatecalendar()'>";
	calobj+="<img src='../web/images/common/calendar_month.gif'>";
	calobj+="<img src='../web/images/common/calendar_arrow2.gif' border='0' style='cursor:hand' onclick='goonmonth();updatecalendar()'>";
	calobj+="&nbsp;&nbsp;";
	calobj+="<img src='../web/images/common/calendar_today.gif' border='0' style='cursor:hand' onclick='caltoday1()'>";
	calobj+="&nbsp;&nbsp;";
	calobj+="<img src='../web/images/common/calendar_arrow1.gif' border='0' style='cursor:hand' onclick='gobackyear();updatecalendar()'>";
	calobj+="<img src='../web/images/common/calendar_year.gif'>";
	calobj+="<img src='../web/images/common/calendar_arrow2.gif' border='0' style='cursor:hand' onclick='goonyear();updatecalendar()'>";
	calobj+="</td></tr></table></td></tr>";
	calobj+="<tr><td colspan='5' class=''>";
	calobj+="<table cellspacing='0' class='calinsidesettings' border='0' >";
	calobj+="<tr align='center'>";
	calobj+="<td width='14%' class='caldays'>일</td>";
	calobj+="<td width='14%' class='caldays'>월</td>";
	calobj+="<td width='14%' class='caldays'>화</td>";
	calobj+="<td width='14%' class='caldays'>수</td>";
	calobj+="<td width='14%' class='caldays'>목</td>";
	calobj+="<td width='14%' class='caldays'>금</td>";
	calobj+="<td width='14%' class='caldays'>토</td>";
	calobj+="</tr>";

var calcell = "";
var calrow  = "";
for (calcell=0;calcell<6;calcell++)
{
calobj+="<tr align='center'><td class='calwknd' width='14%' id=cal"+(calcell*7)+" onclick=message("+(calcell*7)+");></td>";
calobj+="<td width='14%' class='calwkdy' id=cal"+(calcell*7+1)+" onclick=message("+(calcell*7+1)+");></td>";
calobj+="<td width='14%' class='calwkdy' id=cal"+(calcell*7+2)+" onclick=message("+(calcell*7+2)+");></td>";
calobj+="<td width='14%' class='calwkdy' id=cal"+(calcell*7+3)+" onclick=message("+(calcell*7+3)+");></td>";
calobj+="<td width='14%' class='calwkdy' id=cal"+(calcell*7+4)+" onclick=message("+(calcell*7+4)+");></td>";
calobj+="<td width='14%' class='calwkdy' id=cal"+(calcell*7+5)+" onclick=message("+(calcell*7+5)+");></td>";
calobj+="<td width='14%' class='calwkdy' id=cal"+(calcell*7+6)+" onclick=message("+(calcell*7+6)+");></td></tr>";
}

document.write(calobj);

daycell[0]=cal0;
daycell[1]=cal1;
daycell[2]=cal2;
daycell[3]=cal3;
daycell[4]=cal4;
daycell[5]=cal5;
daycell[6]=cal6;
daycell[7]=cal7;
daycell[8]=cal8;
daycell[9]=cal9;
daycell[10]=cal10;
daycell[11]=cal11;
daycell[12]=cal12;
daycell[13]=cal13;
daycell[14]=cal14;
daycell[15]=cal15;
daycell[16]=cal16;
daycell[17]=cal17;
daycell[18]=cal18;
daycell[19]=cal19;
daycell[20]=cal20;
daycell[21]=cal21;
daycell[22]=cal22;
daycell[23]=cal23;
daycell[24]=cal24;
daycell[25]=cal25;
daycell[26]=cal26;
daycell[27]=cal27;
daycell[28]=cal28;
daycell[29]=cal29;
daycell[30]=cal30;
daycell[31]=cal31;
daycell[32]=cal32;
daycell[33]=cal33;
daycell[34]=cal34;
daycell[35]=cal35;
daycell[36]=cal36;
daycell[37]=cal37;
daycell[38]=cal38;
daycell[39]=cal39;
daycell[40]=cal40;
daycell[41]=cal41;

caltoday()
updatecalendar()
}

function caltoday()
{
    var calmonth = document.getElementById("calmonth");
    var calyear = document.getElementById("calyear");
day   = now.getDate();
calmonth.selectedIndex=now.getMonth();
calyear.value=now.getFullYear();

currWinDate = "<%=fieldvalue%>";
if ( (currWinDate.substring(0,2) == '19' || currWinDate.substring(0,2) == '20') &&
     (currWinDate.substring(5,7) <= '12' && currWinDate.substring(5,7) > '00') &&
     (currWinDate.substring(8,10) <= '31' && currWinDate.substring(8,10)  > '00'))
{
WinDate.setFullYear(currWinDate.substring(0,4));
WinDate.setMonth(currWinDate.substring(5,7)-1);
WinDate.setDate(currWinDate.substring(8,10));
day                    = WinDate.getDate();
calmonth.selectedIndex = WinDate.getMonth();
calyear.value          = WinDate.getFullYear();
}
updatecalendar()
}

function caltoday1()
{
    var calmonth = document.getElementById("calmonth");
    var calyear = document.getElementById("calyear");
day   = now.getDate();
calmonth.selectedIndex=now.getMonth();
calyear.value=now.getFullYear();
updatecalendar()
}

function updatecalendar()
{
    var calmonth = document.getElementById("calmonth");
    var calyear = document.getElementById("calyear");
month = calmonth.selectedIndex
year  = calyear.value

var firstOfMonth = new Date (year, month, 1);
var startingPos = firstOfMonth.getDay();
var curday=1
var days=monthdays(month,year)
var prevdays=monthdays(month-1,year)
var str

for (n=0;n<42;n++)
{
  if (startingPos==n)
  {
	if (month==now.getMonth()&year==now.getFullYear()&curday==now.getDate())
	{
	str=curday
    daycell[n].innerHTML="<font color='"+coltoday+"'>"+str.toString()+"</font>"
	}
    else
      {
	if (month==WinDate.getMonth()&year==WinDate.getFullYear()&curday==WinDate.getDate())
  	   {
	   str=curday
       daycell[n].innerHTML="<font color='blue'>"+str.toString()+"</font>"
	   }
	   else
	  {
	  daycell[n].innerHTML=curday
	  }
      }
	setday(n,month,year,curday);
    startingPos++
    curday++
  }
  else
  {
  	  if (startingPos==66)
	  {
	  setday(n,month+1,year,curday);
	  str=curday
 	  curday++
	  }
	  else
	  {
	  setday(n,month-1,year,prevdays-startingPos+n+1);
      str=prevdays-startingPos+n+1
	  }
      daycell[n].innerHTML="<font color='"+colour+"'>"+str.toString()+"</font>"
  }

  if (curday>days){
  curday=1
  startingPos=66
  }
}
}

function setday(cell,month,year,day)
{
month++
if (month==13){month=1;year++}
if (month==0){month=12;year--}

var strmon;
var stryear;
var strday;

strmon=month.toString();
if (strmon.length==1){strmon="0"+strmon}
strday=day.toString();
if (strday.length==1){strday="0"+strday}
stryear=year.toString();

cellday[cell]=stryear+"-"+strmon+"-"+strday
}

function monthdays(month,year)  {
var days;
if (month==0 || month==2 || month==4 || month==6 || month==7 || month==9 || month==11 || month==-1 || month==12)  days=31;
else if (month==3 || month==5 || month==8 || month==10) days=30;
else if (month==1)  {
if (leapyear(year)) { days=29; }
else { days=28; }
}
return (days);
}

function leapyear (Year) {
if (((Year % 4)==0) && ((Year % 100)!=0) || ((Year % 400)==0)) {
return (true);
} else { return (false); }
}

function goonmonth()
{
    var calmonth = document.getElementById("calmonth");
  month = calmonth.selectedIndex
  month++
  if (month==12)
  {
    month=0;
    goonyear()
  }
  calmonth.selectedIndex=month
}

function goonyear()
{
    var calyear = document.getElementById("calyear");
  year  = calyear.value
  year++
  if (year==lastyear){year=firstyear}
  calyear.value=year
}

function gobackmonth()
{
    var calmonth = document.getElementById("calmonth");
  month = calmonth.selectedIndex
  month--
 if (month==-1)
  {
    month=11;
    gobackyear()
  }
  calmonth.selectedIndex=month
}

function gobackyear()
{
    var calyear = document.getElementById("calyear");
  year  = calyear.value
  year--
  if (year<firstyear){year=lastyear-1}
  calyear.value=year
}
function fun()
{
  calmonth.focus();
}
</script>

</head>
<body  bgcolor='#FFFFFF' topmargin='5' leftmargin='5' onload='fun()'>
<div align="center">
<script LANGUAGE="JavaScript1.3">
  calendar();
  
</script>
</div>
</body>
</html>
