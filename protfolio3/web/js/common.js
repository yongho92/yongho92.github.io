function calender_show(a,b) {
  document.getElementById(a).style.visibility="visible";
  document.getElementById(a).style.position="relative";
  document.getElementById(b).style.visibility="hidden";
  document.getElementById(b).style.position="absolute";
}

function calender_show2(a,b) {
  document.getElementById(b).style.visibility="visible";
  document.getElementById(b).style.position="relative";
  document.getElementById(a).style.visibility="hidden";
  document.getElementById(a).style.position="absolute";
}

function show_layer(aa) {
   document.getElementById(aa).style.visibility="visible"}

function hide_layer(aa) { 
document.getElementById(aa).style.visibility="hidden"}

function show_layer_tog(aa) {
  var cc = document.getElementById(aa).style.visibility;
  
  if (cc == "visible"){
    document.getElementById(aa).style.visibility="hidden";
  }else{
    document.getElementById(aa).style.visibility="visible"
  }
}

function show_menu(bb) {
  bid = "menu" + bb;
  var aa = document.getElementById(bid).style.display;
  
  pid = "chg" + bb;
  var placeholder = document.getElementById(pid);

  if (aa == "none"){
    placeholder.setAttribute("src","web/images/common/btn_close.gif");
    document.getElementById(bid).style.display ="block";
  }else{
    placeholder.setAttribute("src","web/images/common/btn_open.gif");
    document.getElementById(bid).style.display ="none";
  }
}

function show_menu2(bb) {
  bid = "menu" + bb;
  var aa = document.getElementById(bid).style.display;
  
  pid = "chg" + bb;
  var placeholder = document.getElementById(pid);

  if (aa == "none"){
    placeholder.setAttribute("src","../web/images/common/btn_close.gif");
    document.getElementById(bid).style.display ="block";
  }else{
    placeholder.setAttribute("src","../web/images/common/btn_open.gif");
    document.getElementById(bid).style.display ="none";
  }
}

