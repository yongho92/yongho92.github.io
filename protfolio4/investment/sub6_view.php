<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array(
        "seq",
        "cond",
        "str",
        "board_seq",
        "category_text",

        "name",
        "id",
        "email",
        "date1",
        "date2",

        "num"
    );

    $primaryKeys = array("seq");
    $parameters2 = $parameters->getPropety();

    $now = getToday();
	$actEvent = nvl($parameters2["actEvent"], "");
    $seq = nvl($parameters->print2("pk_seq"), "");
    $sc_board_seq = nvl($parameters->print2("sc_board_seq"), "");
    $parent_seq = nvl($parameters->print2("parent_seq"), "");

    $board_seq = nvl($parameters->print2("sc_board_seq"), "");

    $pk_seq = nvl($parameters->print2("pk_seq"));

    $path = $prop_config["install.path"]."/".$prop_config["bulletin.upload.dir"];

    $sql = "SELECT * FROM board WHERE seq=".$board_seq;
    $dr = $manager->executeQueryList($sql);

    if(count($dr) > 0) $boardDE = $dr[0];

    // 조회수 증가
    $sql = "UPDATE bulletin SET hit=hit+1 WHERE seq=".$pk_seq;
    $manager->executeUpdate($sql);

    $manager->commit();

    $sql = "SELECT * FROM bulletin WHERE seq=".$pk_seq;
    $parameters->set("query", $sql);
    $dr = $manager->getGeneralList($parameters);
    if(count($dr) > 0)
    {
        $singleDE01 = $dr[0];

    }
    else
    {
        errorMsg("해당하는 게시물이 없습니다.");
        exit;
    }

    $sql = "SELECT * FROM bulletin_comment WHERE bulletin_seq=".$pk_seq." ORDER BY seq";
    $parameters->set("query", $sql);
    $parameters2["params"] = null;
    $listDR02 = $manager->getGeneralList($parameters);

    $sql = "SELECT * FROM bulletin_file WHERE bulletin_seq=".$pk_seq." AND IFNULL(main_yn, 'n')<>'y' ORDER BY seq";
    $parameters->set("query", $sql);
    $parameters2["params"] = null;
    $listDR03 = $manager->getGeneralList($parameters);


    $sql = "SELECT * FROM bulletin_file WHERE bulletin_seq=".$pk_seq." AND IFNULL(main_yn, 'n')='y' ORDER BY seq";
    $parameters->set("query", $sql);
    $parameters2["params"] = null;
    $listDR04 = $manager->getGeneralList($parameters);


    $sql = "SELECT seq FROM bulletin WHERE seq>'$seq' and board_seq='".$sc_board_seq."' and public_yn='y' ORDER BY notice_yn asc, parent_seq asc, seq2 limit 1";
    $parameters->set("query", $sql);
    $PreSeq = $manager->getGeneralValue($parameters);

    $sql = "SELECT * FROM bulletin WHERE seq<'$seq' and board_seq='".$sc_board_seq."' and public_yn='y' ORDER BY notice_yn desc, parent_seq desc, seq2 desc  limit 1";
    $parameters->set("query", $sql);
    $NextSeq = $manager->getGeneralValue($parameters);

	$parameters->set("menu1", "4");
    $parameters->set("menu2", "6");
?>
<? include $path_include_prefix."inc/user_header.inc"?>
<script>
function fw_domReady()
{
    $("#btnList").click(function(){
        frm.submitForm3(window, "sub6.php");
    });
}

function goView(seq, num){
    $("#pk_seq").val(seq);
    $("#sc_num").val(num);
    frm.submitForm3(window, "sub6_view.php");
}
</script>
			<div class="comp1">
				<div class="cont_box">
					<div class="copm1_box">
						<div class="cont_01 int_tit6">
							<h2><img src="../web/images/sub/title_61.png" alt="IR안내"/></h2>
						</div>
						<div class="re_cont">
							<div class="not_view ir_view">
								<table>
									<caption>채용공고</caption>
									<tbody>
										<tr>
											<td class="box1"><p class="title"><span class="view_txt01">제목</span><?=$singleDE01["title"]?></p></td>
											<td class="box2"></td>
											<td class="box3"><p class="title"><span class="view_txt01">등록일</span><?=substr(replace($singleDE01["regi_date"], "-", "."), 0, 10)?></p></td>
										</tr>
<?
    for($i=0; $i<count($listDR03); $i++)
    {

?>

										<tr>
											<td class="box4" colspan="3"><a href="<?=$webRoot?>common/bulletin_download.php?seq=<?=$listDR03[$i]["seq"]?>" class="file">첨부파일 : <?=$listDR03[$i]["client_filename"]?></a></td>
										</tr>
<?
    }

?>
										<tr>
											<td colspan="3" class="box5">
												<p>

<?
    $content = $singleDE01["content"];
    if($singleDE01["html_yn"] != "y") $content = nl2br($content);
    $path = $webRoot."upload/file/";

    for($i=0; $i<count($listDR03); $i++)
    {
		if($parameters->print2("sc_board_seq") == "1")
		{
			break;
		}
        if($listDR03[$i]["type"] != "img") continue;

        $img = nvl($listDR03[$i]["server_filename"], "");
        if($img != "") $img = "<img src='".$path."/".$img."' />";
        else continue;
?>
    <div align="center"><?=$img?><br /><br /></div>
<?
    }
?>

                                                <?=$content?></p>
											</td>
										</tr>
										<tr class="lineb">
											<td colspan="2" class="box6">

<?
	if ($PreSeq !="")
	{
?>
							<a href="javascript:goView('<?=$PreSeq?>')" class="prev"><span>이전글</span></a>
<?
	}
	else
	{
?>
							<a href="javascript:alert('이전글이 없습니다.')" class="prev"><span>이전글</span></a>
<?
	}
?>


<?
	if ($NextSeq !="")
	{
?>
							<a href="javascript:goView('<?=$NextSeq?>')" class="next"><span>다음글</span></a>
<?
	}
	else
	{
?>
							<a href="javascript:alert('다음글이 없습니다.')" class="next"><span>다음글</span></a>
<?
	}
?>




											</td>
											<td class="box7"><a href="javascript:;" class="view_list" id="btnList">목록</a></td>
										</tr>
									</tbody>
								</table>

                                <div class="ir_mail">
								<p>LVMC IR과 관련된 문의는 이메일을 통해 성실히 답변해 드리겠습니다.<a href="mailto:ir@lvmcholdings.net"><span>IR 문의하기</span></a></p>
							</div>

							</div>
						</div>
					</div>
				</div>
			</div>
<? include $path_include_prefix."inc/user_footer.inc"?>