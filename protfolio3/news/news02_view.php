<?
	$path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $keySet = array("seq", "cond", "str", "board_seq", "category_text", "num", "date1", "date2", "cond2", "str2" );

    $primaryKeys = array("seq");

    $parameters2 = $parameters->getPropety();

    $actEvent = nvl($parameters2["act"], "");
    $seq = nvl($parameters2["pk_seq"], "");
    $sc_board_seq = nvl($parameters2["sc_board_seq"], "");
    $parent_seq = nvl($parameters2["parent_seq"], "");
    $board_seq = nvl($parameters2["sc_board_seq"], "");
    $pk_seq = nvl($parameters2["pk_seq"]);
    $path = $propConfig["install.path"]."/".$propConfig["bulletin.upload.dir"];

    $sql = "SELECT * FROM bulletin WHERE seq=".$pk_seq;
    $dr = $exec->executeQueryList($sql);

    if(count($dr) > 0) $boardDE = $dr[0];

    $sql = "UPDATE bulletin SET hit=hit+1 WHERE seq=".$pk_seq;
    $exec->executeUpdate($sql);

    $sql = "SELECT * FROM bulletin WHERE seq=".$pk_seq;

    $parameters->set("query", $sql);
    $dr = $exec->getGeneralList($parameters);
    if(count($dr) > 0) $singleDE01 = $dr[0];
    else
    {
        errorMsg("해당하는 게시물이 없습니다.");
        exit;
    }
    $sql = "SELECT * FROM bulletin_comment WHERE bulletin_seq=".$pk_seq." ORDER BY seq";

    $parameters->set("query", $sql);
    $parameters->set("parames", null);
    $listDR02 = $exec->getGeneralList($parameters);

    $sql = "SELECT * FROM bulletin_file WHERE bulletin_seq=".$pk_seq." AND IFNULL(main_yn, 'n')<>'y' ORDER BY seq";

    $parameters->set("query", $sql);
    $parameters2["params"] = null;
    $listDR03 = $exec->getGeneralList($parameters);

    $sql = "SELECT * FROM bulletin_file WHERE bulletin_seq=".$pk_seq." ORDER BY seq";

    $parameters->set("query", $sql);
    $parameters2["params"] = null;
    $listDR04 = $exec->getGeneralList($parameters);

    $sql = "SELECT * FROM board WHERE seq='".$parameters2["sc_board_seq"]."'";
    $parameters->set("query", $sql);
    $boardDE = $exec->getGeneralSingle($parameters);


    $sql = "SELECT * FROM bulletin WHERE seq>'$seq' and board_seq='".$sc_board_seq."' ORDER BY regi_date asc, seq asc limit 1";
    $parameters->set("query", $sql);
    $NextSeq = $manager->getGeneralSingle($parameters);

    $sql = "SELECT * FROM bulletin WHERE seq<'$seq' and board_seq='".$sc_board_seq."' ORDER BY regi_date desc, seq desc  limit 1";
    $parameters->set("query", $sql);
    $PreSeq = $manager->getGeneralSingle($parameters);


    $parameters->set("menu1", "4");
    $parameters->set("menu2", "1");
?>
<?include $path_include_prefix."inc/user_header.inc";?>

<script>

function fw_domReady(){
    var frm = document.frm;

			$('img[usemap]').rwdImageMaps();

	$("#btnList").click(function(){
            $("#pk_seq").val("");
            if(validateList(frm)) frm.submitForm3(window, "news02.php");
    });

}

function validateList(frm){
    $("#page").val("1");

    <?for($i=0 ; $i<count($keySet) ; $i++){?>
    if(document.frm["tmp_<?=$keySet[$i]?>"] != null) $("#sc_<?=$keySet[$i]?>").val($("#tmp_<?=$keySet[$i]?>").val());
    <?}?>
    return true;
}

function goView(seq){
    $("#pk_seq").val(seq);
    frm.submitForm3(window, "news02_view.php");
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
			<span class="board_all2" id="boa_set2_text">마을문화</span>
			<label for="boa_set2" class="sor_hide2">홍보자료</label>
			<select id="boa_set2" name="tmp_searchCnd" onchange="cnd_box();">
			<option value="news01.php">마을문화</option>
			<option value="instagram.php">홍보자료</option>
			</select>
		</div>
		<div class="exp_ser_m">
			<div class="board_ser10 board_marx">
				<span class="board_all10" id="boa_set10_text">공지사항</span>
				<label for="boa_set10" class="sor_hide10">공지사항</label>
				<select id="boa_set10" name="tmp_searchCnd2" onchange="cnd_box2();">
				<option value="news01.php">공지사항</option>
				<option value="news02.php">알람게시판</option>
				</select>
			</div>
		</div>
		<div class="sub_cont">
			<div class="ns_cont nb_cont">
				<div class="ns_tab nb_tab">
					<ul>
						<li><a href="news01.php" class="on"><span>마을 문화</span></a></li>
						<li><a href="instagram.php"><span>홍보자료</span></a></li>
					</ul>
				</div>
				<div class="exp_ser">
					<div class="not_tab">
						<ul>
							<li class="bg"><a href="news01.php">공지사항</a></li>
							<li><a href="news02.php" class="on">알림게시판</a></li>
						</ul>
					</div>
				</div>
				<div class="ns_view">
					<h3><?=$singleDE01["title"]?><span><?=substr($singleDE01["regi_date"], 0, 10)?></span></h3>
<?
    for($i=0; $i<$listDR03["totalCnt"]; $i++){
?>
					<p class="file"><a href="<?=$webRoot?>common/bulletin_download.php?seq=<?=$listDR03[$i]["seq"]?>" target="_blank"><span><?=$listDR03[$i]["client_filename"]?></span></a></p>
<?
    }
?>

					<div class="view_img">

                    <?
    $content = $singleDE01["content"];
    if($singleDE01["html_yn"] != "y") $content = nl2br($content);
    $path = $propConfig["bulletin.upload.dir"];

    for($i=0; $i<count($listDR03); $i++)
    {
        if($listDR03[$i]["type"] != "img") continue;

        $img = nvl($listDR03[$i]["server_filename"], "");
        if($img != "") $img = "<img src='".$path."/".$img."' />";
        else continue;
?>
    <?=$img?><br /><br />
<?
    }
?>


						<p style="text-align:left;"><?=$content?></p>
					</div>
					<div class="next_txt">

<?
    if($PreSeq["seq"] == "")
    {
?>

						<p><span>이전글</span>이전글이 없습니다.</p>
<?
    }
    else
    {
?>
                        <p><span>이전글</span><a href="javascript:goView('<?=$PreSeq["seq"]?>')"><?=$PreSeq["title"]?></a></p>
<?
    }
?>

<?
    if($NextSeq["seq"] == "")
    {
?>
                        <p><span>다음글</span>다음글이 없습니다.</p>
<?
    }
    else
    {
?>
						<p><span class="t_prev">다음글 </span><a href="javascript:goView('<?=$NextSeq["seq"]?>')"><?=$NextSeq["title"]?></a></p>
<?
    }
?>

					</div>
					<div class="view_list">
						<a href="#list" id="btnList">목록</a>
					</div>
				</div>
			</div>
		</div>
	</div>


<?include $path_include_prefix."inc/user_footer.inc";?>