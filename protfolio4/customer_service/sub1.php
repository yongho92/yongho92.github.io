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

    $parameters->set("sc_board_seq", "5");

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

	$parameters->set("menu1", "6");
    $parameters->set("menu2", "1");
?>
<? include $path_include_prefix."inc/user_header.inc"?>
<script>
function fw_domReady()
{
    $("#btnList").click(function(){
        $("#page").val("1");

        <?for($i=0 ; $i<count($keySet) ; $i++){?>
        if(document.frm["tmp_<?=$keySet[$i]?>"] != null) $("#sc_<?=$keySet[$i]?>").val($("#tmp_<?=$keySet[$i]?>").val());
        <?}?>

        $("#sc_cond").val($("#boa_set2").val());

        frm.submitForm3(window, "sub1.php");
    });

    $(".faq_q").click(function(){
		if($(this).hasClass("on"))
		{
			$(".faq_q").removeClass("on");
			$(".faq_a").slideUp(300);
			return;
		}
		$(".faq_q").removeClass("on");
		$(".faq_a").slideUp(300);
		$(this).toggleClass("on");
		$(this).siblings(".faq_a").slideToggle(300);
	});
}

function submitPage(page){
    document.frm.page.value=page;
    frm.submitForm3(window, "sub1.php");
}

</script>

			<div class="comp1">
				<div class="cont_box">
					<div class="copm1_box">
						<div class="cont_01 curs_tit">
							<h2><img src="../web/images/sub/title_71.png" alt="자주 묻는 질문"/></h2>
						</div>
						<div class="re_cont customer">
							<div class="ques_tab">
								<ul>
									<li <?=$parameters->print2("sc_category_text") == "" ? "class='on'" : ""?>><a href="sub1.php">전체</a></li>
									<li <?=$parameters->print2("sc_category_text") == "제품" ? "class='on'" : ""?>><a href="sub1.php?sc_category_text=제품">제품</a></li>
									<li <?=$parameters->print2("sc_category_text") == "IR(투자)" ? "class='on'" : ""?>><a href="sub1.php?sc_category_text=IR(투자)">IR(투자)</a></li>
									<li <?=$parameters->print2("sc_category_text") == "채용" ? "class='on'" : ""?>><a href="sub1.php?sc_category_text=채용">채용</a></li>
								</ul>
							</div>
							<div class="faq_box cust_box">



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

        $sql = "SELECT * FROM bulletin_file WHERE bulletin_seq=".$row["seq"]." and main_yn='y' ORDER BY seq limit 0,1";
        $parameters->set("query", $sql);
        $photo = $manager->getGeneralSingle($parameters);

        if(strlen($photo) > 0)
        {
            $imgStr = "/upload/file/".$photo["server_filename"];
        }

		$num --;
?>

								<div class="faq_list">
									<div class="faq_q">
										<p><?=$row["title"]?></p>
									</div>
									<div class="faq_a">
										<p><?=$row["content"]?><p>
									</div>
								</div>

<?
    }

    if($manager->getTotalCount() == 0)
    {
?>
                                    <div style="text-align:center; padding-top:20px;">조회된 글이 없습니다.</div>
<?
    }
?>
							</div>
							<div class="page_btn">
								<? include $path_include_prefix."inc/page_navigator_user.inc";?>
							</div>
							<div class="ir_mail">
								<p>Please contact us via email for any inquires<a href="mailto:ir@lvmcholdings.net"><span>Contact IR</span></a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<? include $path_include_prefix."inc/user_footer.inc"?>