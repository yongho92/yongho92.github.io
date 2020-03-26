$(function(){
	//셀렉트박스
$(".dropdown img.flag").addClass("flagvisibility");

$(".dropdown dt a").click(function() {
  $(this).parent().siblings().children().toggle();
});

$(".dropdown dd ul li a").click(function() {
  var text = $(this).html();
  $(".dropdown dt a span").html(text);
  $(".dropdown dd ul").hide();
  
  if(text == "제목") $("#tmp_cond").val("2");
  else if(text == "내용") $("#tmp_cond").val("3");
  else if(text == "전체") $("#tmp_cond").val("1");

});

function getSelectedValue(id) {
  return $("#" + id).find("dt a span.value").html();
}


$(".dropdown img.flag").toggleClass("flagvisibility");

$(document).bind('click', function(e) {
  var $clicked = $(e.target);
  if (!$clicked.parents().hasClass("dropdown"))
    $(".dropdown dd ul").hide();
});

 });