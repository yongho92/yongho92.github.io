<?
	$path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $keySet = array("seq", "cond", "str", "board_seq", "category_text", "num", "date1", "date2", "cond2", "str2" );

    $primaryKeys = array("seq");
    $now = getToday2();
    $act = $parameters->print2("act");

    $parameters->set("sc_board_seq", nvl($parameters->print2("sc_board_seq"),"4"));


    $sql = "SELECT * FROM board WHERE seq='".$parameters->print2("sc_board_seq")."'";

    $parameters->set("query", $sql);
    $single_board = $manager->getGeneralSingle($parameters);

    $sql = "SELECT a.* FROM bulletin a WHERE board_seq='".$parameters->print2("sc_board_seq")."'\n";

    if(strlen($parameters->print2("sc_str")) > 0 || strlen($parameters->print2("sc_str2")) > 0) $sql .= " AND (title LIKE '%".nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))."%' or content LIKE '%".nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))."%' or tmp_field2 LIKE '%".nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))."%' or tmp_field3 LIKE '%".nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))."%') \n";

    if(strlen($parameters->print2("sc_category_text")) > 0) $sql .= " AND category_text='".$parameters->print2("sc_category_text")."'\n";

    if(strlen($parameters->print2("sc_date1")) > 0) $sql .= " AND a.regi_date>='".$parameters->print2("sc_date1")." 00:00:00' \n";

    if(strlen($parameters->print2("sc_date2")) > 0) $sql .= " AND a.regi_date<='".$parameters->print2("sc_date2")." 23:59:59' \n";

    $sql .= "ORDER BY regi_date desc, seq desc";
    $parameters->set("query", $sql);
    $parameters->set("pageSize", "10");

    $list01 = $manager->getGeneralPage($parameters);

    $parameters->set("menu1", "4");
    $parameters->set("menu2", "2");

?>
<?include $path_include_prefix."inc/user_header.inc";?>

<script>

function fw_domReady(){
    var frm = document.frm;

        $("#btnList, #btnList2").click(function(){
            $("#pk_seq").val("");
            if(validateList(frm)) frm.submitForm3(window, "report.php");
    });

}

function goView(seq){
    $("#pk_seq").val(seq);
    frm.submitForm3(window, "report_view.php");
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
    $("#page").val(page);
    frm.submitForm3(window, "report.php");
}

function validateList(frm){
    $("#page").val("1");

    <?for($i=0 ; $i<count($keySet) ; $i++){?>
    if(document.frm["tmp_<?=$keySet[$i]?>"] != null) $("#sc_<?=$keySet[$i]?>").val($("#tmp_<?=$keySet[$i]?>").val());
    <?}?>
    return true;
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
</script>


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
				<span class="board_all10" id="boa_set10_text">언론보도</span>
				<label for="boa_set10" class="sor_hide10">언론보도</label>
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
							<li class="bg"><a href="media.php">홍보동영상</a></li>
							<li><a href="report.php" class="on">언론보도</a></li>
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
				<div class="pres_list">
					<table summary="언론보도자료">
						<caption>언론보도자료</caption>
						<thead>
							<tr>
								<th class="tit1 num hide">번호</th>
								<th class="tit2 hide">매체명</th>
								<th class="tit3 hide">제목</th>
								<th class="tit4 hide">작성일</th>
							</tr>
						</thead>
						<tbody>

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

        $num = $row["RNUM"];

?>

							<tr>
								<td class="num hide"><span><?=$num?></span></td>
								<td class="hide"><?=$row["tmp_field2"]?></td>
								<td class="p_txt">
<?
        if($row["tmp_field3"] != "")
        {
?>
                                <a href="<?=$row["tmp_field3"]?>" target="_blank"><span><?=$row["title"]?></span></a>
<?
        }
        else
        {
?>
                            <span><?=$row["title"]?></span>
<?
        }
?>

								<div class="mob_pres">
									<span><?=$row["tmp_field2"]?></span>
									<span>｜</span>
									<span><?=substr($row["regi_date"], 0, 10)?></span>
								</div>
								</td>
								<td class="hide"><?=substr($row["regi_date"], 0, 10)?></td>
							</tr>
<?
    }

    if($list01["selectCnt"] == 0)
    {
?>
                <tr><td align="center" colspan="4">언론보도글이 없습니다.</td></tr>
<?
    }
?>
						</tbody>
					</table>
					<div class="page">
<?
                        printPageNavigator2(
    $parameters->print2("page"),
    $parameters->print2("pageSize"),
    10,
    $list01["totalCnt"],
    "submitPage",
    "<img src='/web/images/sub/news/page_icon01.png' alt='첫페이지이동'/>",
    "<img src='/web/images/sub/news/page_icon02.png' alt='전페이지이동'/>",
    "<img src='/web/images/sub/news/page_icon03.png' alt='다음페이지이동'/>",
    "<img src='/web/images/sub/news/page_icon04.png' alt='마지막페이지이동'/>"
);
?>
					</div>
				</div>
			</div>
		</div>
	</div>


<?include $path_include_prefix."inc/user_footer.inc";?>