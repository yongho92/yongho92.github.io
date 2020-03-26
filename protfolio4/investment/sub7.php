<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array(
        "seq", "cond", "str", "board_seq", "category_text",
        "num", "date1", "date2"
        );

    $act = $parameters->print2("act");
    $now = getToday();

    $parameters->set("sc_board_seq", "3");

    $sql = "SELECT * FROM board WHERE seq='".$parameters->print2("sc_board_seq")."'";

    $parameters->set("query", $sql);
    $single_board = $manager->getGeneralSingle($parameters);

    $sql = "SELECT a.* FROM bulletin a WHERE board_seq='".$parameters->print2("sc_board_seq")."' and public_yn='y' \n";


    if(strlen($parameters->print2("sc_str")) > 0)
    {
        if($parameters->print2("sc_cond") == "all")
        {
            $sql .= " AND (title LIKE '%".$parameters->print2("sc_str")."%' or content LIKE '%".$parameters->print2("sc_str")."%') \n";
        }
        else
        {
            $sql .= " AND ".$parameters->print2("sc_cond")." LIKE '%".$parameters->print2("sc_str")."%'\n";
        }
    }

    if(strlen($parameters->print2("sc_category_text")) > 0) $sql .= " AND category_text='".$parameters->print2("sc_category_text")."'\n";

    if(strlen($parameters->print2("sc_date1")) > 0) $sql .= " AND a.regi_date>='".$parameters->print2("sc_date1")." 00:00:00' \n";

    if(strlen($parameters->print2("sc_date2")) > 0) $sql .= " AND a.regi_date<='".$parameters->print2("sc_date2")." 23:59:59' \n";

    $sql .= "ORDER BY  notice_yn desc, regi_date desc , parent_seq desc,  seq2";
    $parameters->set("query", $sql);
    $parameters->set("pageSize", "5");
    $list01 = $manager->getGeneralPage($parameters);


    $tmpStr = "전체";
    if($parameters->print2("sc_cond") == "title") $tmpStr = "제목";
    elseif($parameters->print2("sc_cond") == "content") $tmpStr = "내용";


	$parameters->set("menu1", "4");
    $parameters->set("menu2", "7");
?>
<? include $path_include_prefix."inc/user_header.inc"?>
<script type="text/javascript">
function fw_domReady(){

    $("#btnList").click(function(){
        $("#page").val("1");

        <?for($i=0 ; $i<count($keySet) ; $i++){?>
        if(document.frm["tmp_<?=$keySet[$i]?>"] != null) $("#sc_<?=$keySet[$i]?>").val($("#tmp_<?=$keySet[$i]?>").val());
        <?}?>

        $("#sc_cond").val($("#boa_set2").val());

        frm.submitForm3(window, "sub7.php");
    });

    $("#pk_seq").val("");

    var value = "<?=$parameters->print2("sc_category_text")?>";
    if(value != "") $("#tmp_category_text").val(value);

    value = "<?=$parameters->print2("sc_cond")?>";
    if(value != "") $("#tmp_cond").val(value);
}

function goView(seq, num){
    document.frm.pk_seq.value = seq;
    $("#sc_num").val(num);
    frm.submitForm3(window, "sub7_view.php");
}

function submitPage(page){
    document.frm.page.value=page;
    frm.submitForm3(window, "sub7.php");
}

function fw_onenterdown1(obj){
    if(obj == document.frm.tmp_str) $("#btnList").click();
}

function goUrl(url, seq)
{
    window.open(url, seq);
}

function cnd_box()
{
    if($("#boa_set2").val() == "all")
    {
        $(".sor_hide2").text("전체");
        $("#boa_set2_text").text("전체");
    }
    else if($("#boa_set2").val() == "title")
    {
        $(".sor_hide2").text("제목");
        $("#boa_set2_text").text("제목");
    }
    else if($("#boa_set2").val() == "content")
    {
        $(".sor_hide2").text("내용");
        $("#boa_set2_text").text("내용");
    }

}

</script>
			<div class="comp1">
				<div class="cont_box">
					<div class="copm1_box">
						<div class="cont_01 int_tit6">
							<h2><img src="../web/images/sub/title_61.png" alt="IR안내"/></h2>
						</div>
						<div class="news_box">
							<div class="ir_tab">
								<ul>
									<li><a href="sub6.php">IR안내</a></li>
									<li class="on"><a href="sub7.php">경영보고서</a></li>
								</ul>
							</div>
							<div class="news_ser">
								<fieldset class="st_searfo">
									<legend>보도자료 검색</legend>
									<div class="board_ser02">
										<span class="board_all2" id="boa_set2_text"><?=$tmpStr?></span>
										<label for="boa_set2" class="sor_hide2"><?=$tmpStr?></label>
										<select id="boa_set2" name="boa_set2" onchange="cnd_box();">
										<option value="all">전체</option>
										</select>
									</div>
									<div class="board_txt">
										<label for="boa_txt" class="txt_hide">search word</label>
										<input type="text" name="tmp_str" id="tmp_str" class="txt_word" value="<?=$parameters->print2("sc_str")?>" autocomplete="off">
									</div>
									<button class="boa_btn" id="btnList" type="button">검색</button>
								</fieldset>
							</div>
							<div class="ir_list">
								<table summary="ir정보를 확인해보세요.">
									<caption>IR 안내</caption>
									<thead>
										<tr>
											<th class="ir1">번호</th>
											<th class="ir2">제목</th>
											<th class="ir3">첨부파일</th>
										</tr>
									</thead>
									<tbody>
										<?
	$num = $manager->total_count - ((nvl($parameters->print2("page"), 1)-1) * nvl($parameters->print2("pageSize"), 15));
    for($i=0; $i<count($list01); $i++)
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

        if($row["seq"] == $parameters->print2("pk_seq")) $numStr = $num;
        else $numStr = $num;

        $bgcolor = "white";
        if($row["notice_yn"] == "y"){
            $num = "공지";
            $title = "<font color=black><b>".$title."</b></font>";
            $bgcolor = "#fff0d0";
        }

        $useYnStr = "n";

        if($row["public_yn"] == "y")
        {
            $useYnStr = "y";
        }


        if($row["seq"] == $parameters->print2("pk_seq")) $numStr = $num;
        else $numStr = $num;

        $imgStr = "../web/images/sub/int_img02.jpg";

        $sql = "SELECT * FROM bulletin_file WHERE bulletin_seq=".$row["seq"]." and main_yn<>'y' ORDER BY seq limit 0,1";
        $parameters->set("query", $sql);
        $photo = $manager->getGeneralSingle($parameters);

        if(strlen($photo) > 0)
        {
            $imgStr = "/upload/file/".$photo["server_filename"];
        }


		$num --;
?>
										<tr>
											<td class="num"><?=$numStr?></td>
											<td><?=$row["title"]?></td>
											<td class="down"><a href="<?=$webRoot?>common/bulletin_download.php?seq=<?=$photo["seq"]?>">DOWNLOAD</a></td>
										</tr>
<?
    }

    if($manager->getTotalCount() == 0)
    {
?>
                                    <tr><td colspan="4" style="text-align:center;">조회된 글이 없습니다.</td></tr>
<?
    }
?>
									</tbody>
								</table>
								<div class="page_btn">
									<? include $path_include_prefix."inc/page_navigator_user.inc";?>
								</div>
							</div>
							<div class="ir_mail">
								<p>LVMC IR과 관련된 문의는 이메일을 통해 성실히 답변해 드리겠습니다.<a href="mailto:ir@lvmcholdings.net"><span>IR 문의하기</span></a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
<? include $path_include_prefix."inc/user_footer.inc"?>
