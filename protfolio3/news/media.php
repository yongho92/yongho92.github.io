<?
	$path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $keySet = array("seq", "cond", "str", "board_seq", "category_text", "num", "date1", "date2", "cond2", "str2" );

    $primaryKeys = array("seq");
    $now = getToday2();
    $act = $parameters->print2("act");

    $parameters->set("sc_board_seq", nvl($parameters->print2("sc_board_seq"),"3"));


    $sql = "SELECT * FROM board WHERE seq='".$parameters->print2("sc_board_seq")."'";

    $parameters->set("query", $sql);
    $single_board = $manager->getGeneralSingle($parameters);

    $sql = "SELECT a.* FROM bulletin a WHERE board_seq='".$parameters->print2("sc_board_seq")."'\n";

    if(strlen($parameters->print2("sc_str")) > 0 || strlen($parameters->print2("sc_str2")) > 0) $sql .= " AND (title LIKE '%".nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))."%' or content LIKE '%".nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))."%' or tmp_field2 LIKE '%".nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))."%' or tmp_field3 LIKE '%".nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))."%') \n";

    if(strlen($parameters->print2("sc_category_text")) > 0) $sql .= " AND category_text='".$parameters->print2("sc_category_text")."'\n";

    if(strlen($parameters->print2("sc_date1")) > 0) $sql .= " AND a.regi_date>='".$parameters->print2("sc_date1")." 00:00:00' \n";

    if(strlen($parameters->print2("sc_date2")) > 0) $sql .= " AND a.regi_date<='".$parameters->print2("sc_date2")." 23:59:59' \n";

    $sql .= "ORDER BY  regi_date desc, seq desc";
    $parameters->set("query", $sql);
    $parameters->set("pageSize", "6");

    $list01 = $manager->getGeneralPage($parameters);

    $parameters->set("menu1", "4");
    $parameters->set("menu2", "2");

?>
<?include $path_include_prefix."inc/user_header.inc";?>

<script>

function fw_domReady(){

    var seq = "<?=$parameters->print2("pk_seq")?>";

    if(seq != "")
    {
        var click_elmt = $(this);
		$.ajax({
	        type:"GET",
	        url:"/ajax/media_pop.php",
	        dataType : "html",
			data: {"pk_seq":seq},
	        success:function(args){
                $("#mov_back").show();
				$("#pop_layer").html(args);
				$("#pop_layer").fadeIn("slow");

	        },
	        error:function(e){
	        }
		});
    }

    var frm = document.frm;

     $('.ist_list ul li').mouseenter(function(){
				$(this).children('.ist_txt').css('display','block');
			});
			$('.ist_list ul li').mouseleave(function(){
				$('.ist_txt').css('display','none');
			});

        $("#btnList, #btnList2").click(function(){
            $("#pk_seq").val("");
            if(validateList(frm)) frm.submitForm3(window, "media.php");
    });


    // 팝업 레이어 띄우기
	$(".btnView").click(function(){
		var click_elmt = $(this);
		$.ajax({
	        type:"GET",
	        url:"/ajax/media_pop.php",
	        dataType : "html",
			data: {"pk_seq":$(this).attr("seq")},
	        success:function(args){
                $("#mov_back").show();
				$("#pop_layer").html(args);
				$("#pop_layer").fadeIn("slow");
				//$("#pop_layer .view_allbox img").fadeIn("slow");


                /*
                $('html, body').animate({
					scrollTop: click_elmt.offset().top - 340
				}, 400 );
                */

	        },
	        error:function(e){
	            //alert(e.responseText);
	        }
		});
	});

}


//팝업 다음,이전
function layer_move(seq){

	if (seq != undefined)
	{
		$.ajax({
	        type:"GET",
	        url:"/ajax/media_pop.php",
	        dataType : "html",
			data: {"pk_seq":seq},
	        success:function(args){
				$("#pop_layer").html(args);
	        },
	        error:function(e){
	            //alert(e.responseText);
	        }
		});
	}
}

function pop_layer_close()
{
    $("#pop_layer").html("");
	$("#pop_layer").fadeOut("slow");
    $("#mov_back").hide();
}

function goView(seq){
    $("#pk_seq").val(seq);
    frm.submitForm3(window, "media_view.php");
}

function fw_onenterdown1(obj)
{
    var frm = document.frm;
    if(obj == frm.tmp_str || obj == frm.tmp_str2)
    {
        obj.blur();
        $("#btnList").click();
    }
}

function goList(){
    $("#btnList").click();
}

function submitPage(page){
    $("#act").val("");
    $("#pk_seq").val("");
    $("#page").val(page);
    frm.submitForm3(window, "media.php");
}

function validateList(frm){
    $("#page").val("1");
    $("#pk_seq").val("");

    <?for($i=0 ; $i<count($keySet) ; $i++){?>
    if(document.frm["tmp_<?=$keySet[$i]?>"] != null) $("#sc_<?=$keySet[$i]?>").val($("#tmp_<?=$keySet[$i]?>").val());
    <?}?>
    return true;
}

 function wrapWindowByMask(){
        //화면의 높이와 너비를 구한다.
        var maskHeight = $(document).height();
        var maskWidth = $(document).width();

        //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
        $('.mov_back').css({'width':maskWidth,'height':maskHeight});

}

function checkStr()
{
    $("#tmp_str2").val($("#tmp_str").val());
}

function checkStr2()
{
    $("#tmp_str").val($("#tmp_str2").val());
}

function cnd_box()
    {
        location.href = document.frm.tmp_searchCnd.value;
    }

    function cnd_box2()
    {
        location.href = document.frm.tmp_searchCnd2.value;
    }


function copyToClipboard(element) {
    var $temp = $("<input>");
  $("body").append($temp);
  $temp.val($(element).text()).select();
 document.execCommand("copy");
  $temp.remove();
  alert("링크를 클립보드에 복사했습니다.");
}
</script>



<div class="mov_back" id="mov_back" style="display:none;">
</div>


	<div class="contents">
		<div class="sub_title sub_title_ns">
			<dl>
				<dt>마을소식</dt>
				<dd>발산마을의 다양한 소식</dd>
			</dl>
		</div>
		<div class="board_ser02">
			<span class="board_all2" id="boa_set2_text">홍보자료</span>
			<label for="boa_set2" class="sor_hide2">홍보자료</label>
			<select id="boa_set2" name="tmp_searchCnd" onchange="cnd_box();">
			<option value="news01.php">마을문화</option>
			<option value="instagram.php">홍보자료</option>
			</select>
		</div>
		<div class="exp_ser_m">
			<div class="board_ser10">
				<span class="board_all10" id="boa_set10_text">홍보동영상</span>
				<label for="boa_set10" class="sor_hide10">홍보동영상</label>
				<select id="boa_set10" name="tmp_searchCnd2" onchange="cnd_box2();">
				<option value="instagram.php">인스타그램</option>
				<option value="media.php">홍보동영상</option>
				<option value="report.php">언론보도</option>
				</select>
			</div>
			<div class="search">
				<label class="labelx" for="">검색</label>
				<input type="text" id="tmp_str" name="tmp_str" class="ser_ipt" value="<?=nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))?>" onchange="checkStr();"/>
				<a href="#list" id="btnList">검색</a>
			</div>
			<div class="board_ser09">
				<span class="board_all9" id="boa_set9_text">전체</span>
				<label for="boa_set9" class="sor_hide9">전체</label>
				<select id="boa_set9" name="tmp_cond" id="tmp_cond">
				<option value="1">전체</option>
				</select>
			</div>
		</div>
		<div class="sub_cont">
			<div class="ns_cont nb_cont">
				<div class="ns_tab nb_tab">
					<ul>
						<li><a href="news01.php"><span>마을 문화</span></a></li>
						<li><a href="instagram.php" class="on"><span>홍보자료</span></a></li>
					</ul>
				</div>
				<div class="exp_ser">
					<div class="not_tab">
						<ul>
							<li class="bg"><a href="instagram.php">인스타그램</a></li>
							<li class="bg"><a href="media.php" class="on">홍보동영상</a></li>
							<li><a href="report.php">언론보도</a></li>
						</ul>
					</div>
					<div class="search">
						<label class="labelx" for="">검색</label>
						<input type="text" id="tmp_str2" name="tmp_str2" class="ser_ipt" value="<?=nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))?>" onchange="checkStr2();"/>
						<a href="#list" id="btnList" class="exp_serbtn"><img src="../web/images/sub/neigbor/bn_icon02.png" alt="검색"/></a>
					</div>
					<div class="board_ser08">
						<span class="board_all8" id="boa_set8_text">전체</span>
						<label for="boa_set8" class="sor_hide8">전체</label>
						<select id="boa_set8" name="tmp_cond2" id="tmp_cond2">
						<option value="">전체</option>
						</select>
					</div>
				</div>
				<div class="mov_list">
					<ul class="mov_set">
                    <?
    for($i=0; $i<$list01["selectCnt"]; $i++)
    {
        $row = $list01[$i];

        $sql = "select count(1) cnt from bulletin_comment where bulletin_seq='".$row["seq"]."'";

        $parameters->set("query", $sql);
        $row["comment_cnt"] = $manager->getGeneralValue($parameters);

        $title = str_replace("<br>","",str_replace("<br/>","",$row["title"]));
        $arr = split("_", $row["seq2"]);
        $pre = "";

        if(count($arr) > 1)
        {
            for($j=0; $j<count($arr); $j++) $pre .= "&nbsp;&nbsp;";
            $pre .= "<img src='".$webRoot."web/images/admin/ico_reply.gif' border='0' align=absmiddle />";
        }

        $title = $pre.$title;

        if($single_board["comment_yn"] == "y") $title = $title." <b>[".$row["comment_cnt"]."]</b>";

        $num = $row["RNUM"];
        $bgcolor = "white";
        if($row["notice_yn"] == "y"){
            $num = "공지";
            $title = "<font color=black><b>".$title."</b></font>";
            $bgcolor = "#fff0d0";
        }


        if($i == 0) $cc = "marx";
        if($i == 1) $cc = "";
        if($i == 2) $cc = "marx2";

        if($i == 3) $cc = "marx marx3";
        if($i == 4) $cc = "marx2";
        if($i == 5) $cc = "";

        if($i == 6) $cc = "marx marx2";
        if($i == 7) $cc = "";
        if($i == 8) $cc = "marx2 none";

        $sql = "SELECT * FROM bulletin_file WHERE bulletin_seq=".$row["seq"]." and type='img' ORDER BY seq limit 0, 1";

        $parameters->set("query", $sql);
        $parameters2["params"] = null;
        $listDR03 = $exec->getGeneralSingle($parameters);

        $path = $propConfig["bulletin.upload.dir"];

        $img = nvl($listDR03["server_filename"], "");

        if($img != "")
        {
            $img = $path."/".$img;
        }
        else
        {
            $img = "../web/images/common/default_img.jpg";
        }
?>
						<li class="<?=$cc?>">
							<a href="#view" class="btnView mov_play" seq="<?=$row["seq"]?>"><img src="<?=$img?>" alt="" class="web_mov"/><img src="<?=$img?>" alt="" class="mob_mov"/></a>
							<div class="mov_tit">
								<p><a href="#view"  class="btnView" seq="<?=$row["seq"]?>"><?=$row["title"]?></a></p>
								<span><?=$row["tmp_field3"]?></span>
							</div>
						</li>
<?
    }

    if($list01["selectCnt"] == 0)
    {
?>
                        <div style="width:100%; padding-top:30px; text-align:center;">등록된 데이터가 없습니다.</div>
<?
    }
?>

					</ul>
					<div class="page">

<?printPageNavigator2(
    $parameters->print2("page"),
    $parameters->print2("pageSize"),
    10,
    $list01["totalCnt"],
    "submitPage",
    "<img src='/web/images/sub/news/page_icon01.png' alt='첫페이지이동'/>",
    "<img src='/web/images/sub/news/page_icon02.png' alt='전페이지이동'/>",
    "<img src='/web/images/sub/news/page_icon03.png' alt='다음페이지이동'/>",
    "<img src='/web/images/sub/news/page_icon04.png' alt='마지막페이지이동'/>"
)?>

					</div>

                    <span id="pop_layer"></span>


				</div>
			</div>
		</div>
	</div>


<?include $path_include_prefix."inc/user_footer.inc";?>
