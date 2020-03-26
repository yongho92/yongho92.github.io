<?
	$path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $keySet = array(
        "seq",
        "cond",
        "str",
        "type",
        "category",
        "display_yn",
        "cond2",
        "str2"
    );

    $primaryKeys = array("seq");
    $now = getToday2();
    $act = $parameters->print2("act");

    $parameters->set("sc_category", nvl($parameters->print2("sc_category"),"1"));


    $sql = "
        SELECT a.*
        FROM village2_list a
        WHERE 1=1
    ";

    if(strlen($parameters->print2("sc_str")) > 0 || strlen($parameters->print2("sc_str2")) > 0)
    {
        $sql .= "and (a.name LIKE '%".nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))."%' or a.comment LIKE '%".nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))."%' or a.content LIKE '%".nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))."%' or a.area LIKE '%".nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))."%' or a.time2 LIKE '%".nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))."%' or a.email LIKE '%".nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))."%') \n";
    }


    if(strlen($parameters->print2("sc_category")) > 0)
    {
        $sql .= "and a.category='".$parameters->print2("sc_category")."' \n";
    }


    $sql .= "and a.display_yn='Y' \n";


    $sql .= "order by a.order_num desc";
    $parameters->set("query", $sql);
    $parameters->set("pageSize", "6");
    $list01 = $exec->getGeneralPage($parameters);

    $parameters->set("menu1", "3");
    $parameters->set("menu2", "1");

    if($parameters->print2("sc_category") == "1") $categoryName = "마을 체험거리";
    if($parameters->print2("sc_category") == "2") $categoryName = "마을 먹거리";
    if($parameters->print2("sc_category") == "3") $categoryName = "마을 쉴거리";
    if($parameters->print2("sc_category") == "4") $categoryName = "마을 볼거리";

?>
<?include $path_include_prefix."inc/user_header.inc";?>

<script>
var page = 1;
var page2 = 1;

function fw_domReady(){
    var frm = document.frm;

     $('.exp_list ul li').mouseenter(function(){
            $(this).find('img.n_img').attr('src','../web/images/sub/neigbor/bn_icon01_on.png');

        });
        $('.exp_list ul li').mouseleave(function(){
            $(this).find('img.n_img').attr('src','../web/images/sub/neigbor/bn_icon01.png');
        });

        $("#btnList, #btnList2").click(function(){
            $("#pk_seq").val("");
            if(validateList(frm)) frm.submitForm3(window, "village_nb.php");
    });


    $('#btnAdd').click(function(){
        page=page+1;
        $.ajax({
            type:"GET",
            url:"/ajax/nb_ajax.php",
            dataType : "html",
            data: {"page":page, "sc_category":"<?=$parameters->print2("sc_category")?>", "sc_str":"<?=nvl($parameters->print2("sc_str"), $parameters->print2("sc_str2"))?>"},
            success:function(args){
                $(".exp_list ul").append(args);

                btnNext_hide(<?=$list01["totalCnt"]?>, 6);

                /*
                $("#list").find(".additems").each(function(){
					if($(this).css("display") == "none")
					{
						$(this).slideDown("1000", function (){
							$("#list").find(".additems2").each(function(){
								if($(this).css("display") == "none")
								{
									$(this).slideDown("1000");
								}
							});
						});
					}
				});
                */

            },
            error:function(e){
                //alert(e.responseText);
            }
        });
    });

}

function btnNext_hide(totCnt , pageSize )
{
	var countList = totCnt;
	var size = pageSize;
	var maxPage = parseInt(countList / size); // 몫구하기
	if((countList % size) > 0 ) maxPage++;	// 나머지가 있으면 +1
	if(maxPage == 0) maxPage++;

	if(maxPage == page) $("#btnAdd").hide();
	//console.log(maxPage+"|"+page);
	return;
}


function goView(seq){
    $("#pk_seq").val(seq);
    frm.submitForm3(window, "village_nb_view.php");
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

function goCategory(){
    location.href = "village_nb.php?sc_category=" + document.frm.tmp_searchCnd.value;
}

function submitPage(page){
    $("#act").val("");
    $("#page").val(page);
    frm.submitForm3(window, "village_nb.php");
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
</script>


	<div class="contents">
		<div class="sub_title sub_title_nb">
			<dl>
				<dt>마을이웃</dt>
				<dd>마을의 일상이 문화가 되는 마을</dd>
			</dl>
		</div>
		<div class="board_ser02">
			<span class="board_all2" id="boa_set2_text"><?=$categoryName?></span>
			<label for="boa_set2" class="sor_hide2"><?=$categoryName?></label>
			<select id="boa_set2" name="tmp_searchCnd" onchange="goCategory();">
			<option value="1" <? if($parameters->print2("sc_category") == "1"){?> selected <?}?>>마을 체험거리</option>
			<option value="2" <? if($parameters->print2("sc_category") == "2"){?> selected <?}?>>마을 먹거리</option>
			<option value="3" <? if($parameters->print2("sc_category") == "3"){?> selected <?}?>>마을 쉴거리</option>
			<option value="4" <? if($parameters->print2("sc_category") == "4"){?> selected <?}?>>마을 볼거리</option>
			</select>
		</div>
		<div class="exp_ser_m">
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
			<div class="nb_cont">
				<div class="nb_tab">
					<ul>
						<li><a href="village_nb.php?sc_category=1" <? if($parameters->print2("sc_category") == "1"){?> class="on" <?}?>><span>마을 체험거리</span></a></li>
						<li><a href="village_nb.php?sc_category=2" <? if($parameters->print2("sc_category") == "2"){?> class="on" <?}?>><span>마을 먹거리</span></a></li>
						<li><a href="village_nb.php?sc_category=3" <? if($parameters->print2("sc_category") == "3"){?> class="on" <?}?>><span>마을 쉴거리</span></a></li>
						<li><a href="village_nb.php?sc_category=4" <? if($parameters->print2("sc_category") == "4"){?> class="on" <?}?>><span>마을 볼거리</span></a></li>
					</ul>
				</div>
				<div class="exp_ser">
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
				<div class="exp_list">
					<ul>

<?
    for($i=0 ; $i<$list01["selectCnt"] ; $i++)
	{
        $row = $list01[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];

        $useYnStr = "n";

        if($row["display_yn"] == "y")
        {
            $useYnStr = "y";
        }

        $bYn = "사용";

        if($row["b_yn"] == "n")
        {
            $bYn = "미사용";
        }

        $num = $row["RNUM"];

        $cc = "";

        if($i == 0) $cc = "marx";
        if($i == 1) $cc = "";
        if($i == 2) $cc = "marx2";

        if($i == 3) $cc = "marx marx3";
        if($i == 4) $cc = "marx2";
        if($i == 5) $cc = "marx4";

        $imgStr = "../web/images/common/default_img.jpg";
        if(strlen($row["img0"]) > 0)
        {
            $imgStr = "/upload/etc/".$row["img0"];
        }
?>
						<li class="<?=$cc?>">
							<div class="exp_img">
								<a href="javascript:goView('<?=$row["seq"]?>');"><img src="<?=$imgStr?>" alt="<?=$row["name"]?>" class="web_img"/>
								<img src="<?=$imgStr?>" alt="<?=$row["name"]?>" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="javascript:goView('<?=$row["seq"]?>');"><?=$row["name"]?></a></dt>
									<dd><a href="javascript:goView('<?=$row["seq"]?>');"><?=$row["comment"]?></a></dd>
								</dl>
								<span>공간번호 <?=$row["num"]?></span>
								<a href="javascript:goView('<?=$row["seq"]?>');" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
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

<?
    if($list01["totalCnt"] > $list01["selectCnt"])
    {
?>
                    <div class="cont_more">
						<a href="#add" id="btnAdd"><span>더 많은 콘텐츠 불러오기</span></a>
					</div>
<?
    }
?>
				</div>
			</div>
		</div>
	</div>

<?include $path_include_prefix."inc/user_footer.inc";?>