<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $keySet = array("seq", "cond", "str", "bo_table", "index", "num");
    $now = getToday();
	$now2 = date("ymdHis");


    $sql = "
        SELECT a.*
        FROM page_info a
        WHERE 1=1 and type=1 and menu1=1
    ";

    if(strlen($parameters->print2("sc_str")) > 0)
    {
        $sql .= "and a.content2 like '%".$parameters->print2("sc_str")."%' \n";
    }

    $sql .= "order by a.order_num asc";
    $parameters->set("query", $sql);
    $sub01 = $manager->getGeneralList($parameters);


    $sql = "SELECT a.* FROM bulletin a WHERE board_seq='6' and public_yn='y'  \n";
    if(strlen($parameters->print2("sc_str")) > 0)
    {
        $sql .= " AND (title LIKE '%".$parameters->print2("sc_str")."%' or content LIKE '%".$parameters->print2("sc_str")."%') \n";
    }

    $sql .= "ORDER BY  notice_yn desc, regi_date desc , parent_seq desc,  seq2";
    $parameters->set("query", $sql);

    if($parameters->print2("sc_index") == "1")
    {
        $parameters->set("pageSize", "10");
    }
    else
    {
        $parameters->set("pageSize", "3");
    }

    $sub01_1 = $manager->getGeneralPage($parameters);
    $sub01_1_cnt = $manager->getGeneralList($parameters);

    $sub01_cnt = count($sub01) + count($sub01_1_cnt);





    $sql = "
        SELECT a.*
        FROM page_info a
        WHERE 1=1 and type=1 and menu1=2
    ";

    if(strlen($parameters->print2("sc_str")) > 0)
    {
        $sql .= "and a.content2 like '%".$parameters->print2("sc_str")."%' \n";
    }

    $sql .= "order by a.order_num asc";
    $parameters->set("query", $sql);
    $sub02 = $manager->getGeneralList($parameters);

    $sub02_cnt = count($sub02);




    $sql = "
        SELECT a.*
        FROM page_info a
        WHERE 1=1 and type=1 and menu1=3
    ";

    if(strlen($parameters->print2("sc_str")) > 0)
    {
        $sql .= "and a.content2 like '%".$parameters->print2("sc_str")."%' \n";
    }

    $sql .= "order by a.order_num asc";
    $parameters->set("query", $sql);
    $sub03 = $manager->getGeneralList($parameters);

    $sub03_cnt = count($sub03);



    $sql = "
        SELECT a.*
        FROM page_info a
        WHERE 1=1 and type=1 and menu1=4
    ";

    if(strlen($parameters->print2("sc_str")) > 0)
    {
        $sql .= "and a.content2 like '%".$parameters->print2("sc_str")."%' \n";
    }

    $sql .= "order by a.order_num asc";
    $parameters->set("query", $sql);
    $sub04 = $manager->getGeneralList($parameters);


    $sql = "SELECT a.* FROM bulletin a WHERE board_seq='1' and public_yn='y'  \n";
    if(strlen($parameters->print2("sc_str")) > 0)
    {
        $sql .= " AND (title LIKE '%".$parameters->print2("sc_str")."%' or content LIKE '%".$parameters->print2("sc_str")."%') \n";
    }

    $sql .= "ORDER BY  notice_yn desc, regi_date desc , parent_seq desc,  seq2";
    $parameters->set("query", $sql);
    if($parameters->print2("sc_index") == "4")
    {
        $parameters->set("pageSize", "10");
    }
    else
    {
        $parameters->set("pageSize", "3");
    }
    $sub04_1 = $manager->getGeneralPage($parameters);

    $sub04_1_cnt = $manager->getGeneralList($parameters);



    $sql = "SELECT a.* FROM bulletin a WHERE board_seq in ('2', '3') and public_yn='y'  \n";
    if(strlen($parameters->print2("sc_str")) > 0)
    {
        $sql .= " AND (title LIKE '%".$parameters->print2("sc_str")."%' or content LIKE '%".$parameters->print2("sc_str")."%') \n";
    }

    $sql .= "ORDER BY  notice_yn desc, regi_date desc , parent_seq desc,  seq2";
    $parameters->set("query", $sql);
    $sub04_2 = $manager->getGeneralList($parameters);

    $sub04_2_cnt = $manager->getGeneralList($parameters);

    $sub04_cnt = count($sub04) + count($sub04_1_cnt) +  count($sub04_2_cnt);


    $sql = "
        SELECT a.*
        FROM page_info a
        WHERE 1=1 and type=1 and menu1=5
    ";

    if(strlen($parameters->print2("sc_str")) > 0)
    {
        $sql .= "and a.content2 like '%".$parameters->print2("sc_str")."%' \n";
    }

    $sql .= "order by a.order_num asc";
    $parameters->set("query", $sql);
    $sub05 = $manager->getGeneralList($parameters);


    $sql = "SELECT a.* FROM bulletin a WHERE board_seq in ('4') and public_yn='y'  \n";
    if(strlen($parameters->print2("sc_str")) > 0)
    {
        $sql .= " AND (title LIKE '%".$parameters->print2("sc_str")."%' or content LIKE '%".$parameters->print2("sc_str")."%') \n";
    }

    $sql .= "ORDER BY  notice_yn desc, regi_date desc , parent_seq desc,  seq2";
    $parameters->set("query", $sql);
    $sub05_1 = $manager->getGeneralList($parameters);
    $sub05_1_cnt = $manager->getGeneralList($parameters);


    $sql = "SELECT a.* FROM bulletin a WHERE board_seq in ('5') and category_text='채용' and public_yn='y'  \n";
    if(strlen($parameters->print2("sc_str")) > 0)
    {
        $sql .= " AND (title LIKE '%".$parameters->print2("sc_str")."%' or content LIKE '%".$parameters->print2("sc_str")."%') \n";
    }

    $sql .= "ORDER BY  notice_yn desc, regi_date desc , parent_seq desc,  seq2";
    $parameters->set("query", $sql);
    $sub05_2 = $manager->getGeneralList($parameters);
    $sub05_2_cnt = $manager->getGeneralList($parameters);

    $sub05_cnt = count($sub05) + count($sub05_1_cnt) +  count($sub05_2_cnt);

    $sql = "
        SELECT a.*
        FROM page_info a
        WHERE 1=1 and type=1 and menu1=6
    ";

    if(strlen($parameters->print2("sc_str")) > 0)
    {
        $sql .= "and a.content2 like '%".$parameters->print2("sc_str")."%' \n";
    }

    $sql .= "order by a.order_num asc";
    $parameters->set("query", $sql);
    $sub06 = $manager->getGeneralList($parameters);


    $sql = "SELECT a.* FROM bulletin a WHERE board_seq in ('5') and public_yn='y'  \n";
    if(strlen($parameters->print2("sc_str")) > 0)
    {
        $sql .= " AND (title LIKE '%".$parameters->print2("sc_str")."%' or content LIKE '%".$parameters->print2("sc_str")."%') \n";
    }

    $sql .= "ORDER BY  notice_yn desc, regi_date desc , parent_seq desc,  seq2";
    $parameters->set("query", $sql);
    $sub06_1 = $manager->getGeneralList($parameters);
    $sub06_1_cnt = $manager->getGeneralList($parameters);

    $sub06_cnt = count($sub06) + count($sub06_1_cnt);


    if($parameters->print2("sc_index") == "")
    {
	    $sch_TotalCnt = $sub01_cnt + $sub02_cnt + $sub03_cnt + $sub04_cnt + $sub05_cnt + $sub06_cnt;
    }
    elseif($parameters->print2("sc_index") == "1")
    {
        $sch_TotalCnt = $sub01_cnt;
    }
    elseif($parameters->print2("sc_index") == "2")
    {
        $sch_TotalCnt = $sub02_cnt;
    }
    elseif($parameters->print2("sc_index") == "3")
    {
        $sch_TotalCnt = $sub03_cnt;
    }
    elseif($parameters->print2("sc_index") == "4")
    {
        $sch_TotalCnt = $sub04_cnt;
    }
    elseif($parameters->print2("sc_index") == "5")
    {
        $sch_TotalCnt = $sub05_cnt;
    }
    elseif($parameters->print2("sc_index") == "6")
    {
        $sch_TotalCnt = $sub06_cnt;
    }




    $parameters->set("menu1", "7");
    $parameters->set("menu2", "1");

?>
<? include $path_include_prefix."inc/user_header.inc";?>
<script type="text/javascript">


function goSearch2()
{
	if($("#tmp_str").val() == "")
	{
		alert("검색어를 입력하세요!");
		$("#tmp_str").focus();
		return;
	}
	frm.setParameter("sc_str", $("#tmp_str").val());
	frm.submitForm3(window, "/search/index.php");
	return false;
}

function goView1(seq, num){
    document.frm.pk_seq.value = seq;
    $("#sc_num").val(num);
    frm.submitForm3(window, "/company/sub4.php");
}

function goUrl4(url, seq)
{
    window.open(url, seq);
}
</script>
			<div class="comp1">
				<div class="cont_box">
					<div class="copm1_box">
						<div class="cont_01 sear_tit">
							<h2><img src="../web/images/sub/title_86.png" alt="통합검색"/></h2>
						</div>
					</div>
					<div class="search_cont">
						<div class="sear_txt">
							<p>
								<label for="tmp_str" class="labelx"></label>
								<input type="text" id="tmp_str" class="sear_ipt" value="<?=$parameters->print2("sc_str")?>"/>
								<button onclick="goSearch2();">검색</button>
							</p>
						</div>
						<div class="sear_tab">
							<ul>
								<li <?=$parameters->print2("sc_index") == "" ? "class='on'" : ""?>><a href="index.php?sc_str=<?=$parameters->print2("sc_str")?>">전체 (<?=$sch_TotalCnt?>)</a></li>
								<li <?=$parameters->print2("sc_index") == "1" ? "class='on'" : ""?>><a href="index.php?sc_index=1&sc_str=<?=$parameters->print2("sc_str")?>">회사소개 (<?=$sub01_cnt?>)</a></li>
								<li <?=$parameters->print2("sc_index") == "2" ? "class='on'" : ""?>><a href="index.php?sc_index=2&sc_str=<?=$parameters->print2("sc_str")?>">사업소개 (<?=$sub02_cnt?>)</a></li>
								<li <?=$parameters->print2("sc_index") == "3" ? "class='on'" : ""?>><a href="index.php?sc_index=3&sc_str=<?=$parameters->print2("sc_str")?>">글로벌 네트워크 (<?=$sub03_cnt?>)</a></li>
								<li <?=$parameters->print2("sc_index") == "4" ? "class='on'" : ""?>><a href="index.php?sc_index=4&sc_str=<?=$parameters->print2("sc_str")?>">투자정보 (<?=$sub04_cnt?>)</a></li>
								<li <?=$parameters->print2("sc_index") == "5" ? "class='on'" : ""?>><a href="index.php?sc_index=5&sc_str=<?=$parameters->print2("sc_str")?>">채용정보 (<?=$sub05_cnt?>)</a></li>
								<li <?=$parameters->print2("sc_index") == "6" ? "class='on'" : ""?>><a href="index.php?sc_index=6&sc_str=<?=$parameters->print2("sc_str")?>">고객센터 (<?=$sub06_cnt?>)</a></li>
							</ul>
							<p><?=$parameters->print2("sc_str")?>에 대한 검색결과가 총 <span><?=$sch_TotalCnt?></span>건 있습니다.</p>
						</div>

<?
    if($parameters->print2("sc_index") == "")
    {
        if($sub01_cnt > 0)
        {
?>

						<div class="sear_box">
							<p class="sear_tit">회사소개  (<?=$sub01_cnt?>건) <a href="index.php?sc_index=1&sc_str=<?=$parameters->print2("sc_str")?>">MORE</a></p>
							<ul>
<?
	for($i=0 ; $i<count($sub01) ; $i++)
	{
        $row = $sub01[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];

        $num = $start_num;

        $useYnStr = "n";

        $start_num--;
?>
								<li>
									<strong><a href="<?=$row["url"]?>"><?=$row["name"]?></a></strong>
									<p><a href="<?=$row["url"]?>"><?=$row["content"]?></a></p>
								</li>
<?
    }

        if(count($sub01_1) > 0)
        {
?>
								<li>
									<strong><a href="/company/sub4.php">홍보영상</a></strong>
									<div class="ser_video">

<?
    for($i=0; $i<count($sub01_1); $i++)
    {
        $row = $sub01_1[$i];

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
                                        <div class="video_list01 <?=$i <> "0" ? "video_list02" : ""?>" >
											<dl>
												<dt><a href="javascript:goView1('<?=$row["seq"]?>');"><img src="<?=$imgStr?>" alt="" border="0" width="380" height="213"/></a></dt>
												<dd><a href="javascript:goView1('<?=$row["seq"]?>');"><?=$row["title"]?>&nbsp;<span><?=$row["tmp_field2"]?></span></a></dd>
											</dl>
										</div>
<?
    }
?>
									</div>
								</li>
<?
        }
?>

							</ul>
						</div>

<?
        }

        if($sub02_cnt > 0)
        {
?>

						<div class="sear_box">
							<p class="sear_tit">사업소개 (<?=$sub02_cnt?>건) <a href="index.php?sc_index=2&sc_str=<?=$parameters->print2("sc_str")?>">MORE</a></p>
							<ul>
<?
	for($i=0 ; $i<count($sub02) ; $i++)
	{
        $row = $sub02[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];

        $num = $start_num;

        $useYnStr = "n";

        $start_num--;
?>
								<li>
									<strong><a href="<?=$row["url"]?>"><?=$row["name"]?></a></strong>
									<p><a href="<?=$row["url"]?>"><?=$row["content"]?></a></p>
								</li>
<?
    }
?>
							</ul>
						</div>
<?
        }


        if($sub03_cnt > 0)
        {
?>

                        <div class="sear_box">
							<p class="sear_tit">글로벌 네트워크 (<?=$sub03_cnt?>건) <a href="index.php?sc_index=3&sc_str=<?=$parameters->print2("sc_str")?>">MORE</a></p>
							<ul>
<?
	for($i=0 ; $i<count($sub03) ; $i++)
	{
        $row = $sub03[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];

        $num = $start_num;

        $useYnStr = "n";

        $start_num--;
?>
								<li>
									<strong><a href="<?=$row["url"]?>"><?=$row["name"]?></a></strong>
									<p><a href="<?=$row["url"]?>"><?=$row["content"]?></a></p>
								</li>
<?
    }
?>
							</ul>
						</div>


<?
        }


        if($sub04_cnt > 0)
        {
?>

						<div class="sear_box">
							<p class="sear_tit">투자정보 (<?=$sub04_cnt?>건) <a href="index.php?sc_index=4&sc_str=<?=$parameters->print2("sc_str")?>">MORE</a></p>
							<ul>

<?
	for($i=0 ; $i<count($sub04) ; $i++)
	{
        $row = $sub04[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];

        $num = $start_num;

        $useYnStr = "n";

        $start_num--;
?>
								<li>
									<strong><a href="<?=$row["url"]?>"><?=$row["name"]?></a></strong>
									<p><a href="<?=$row["url"]?>"><?=$row["content"]?></a></p>
								</li>
<?
    }


            if(count($sub04_1) > 0)
            {
?>

								<li>
									<strong><a href="/investment/sub5.php">보도자료</a></strong>
									<div class="ser_inv">
                                    <?
    for($i=0; $i<count($sub04_1); $i++)
    {
        $row = $sub04_1[$i];

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
                                        <div class="inv_list01 <?=$i <> "0" ? "inv_list02" : ""?>" >
											<dl>
												<dt><a href="javascript:goUrl4('<?=$row["tmp_field1"]?>', '<?=$row["seq"]?>');"><img src="<?=$imgStr?>" alt="" border="0" width="380" height="213"/></a></dt>
												<dd><a href="javascript:goUrl4('<?=$row["tmp_field1"]?>', '<?=$row["seq"]?>');"><?=str_cut($row["title"], 68, "..")?><span><?=$row["tmp_field2"]?></span></a></dd>
											</dl>
										</div>
<?
    }
?>
									</div>
								</li>
<?
            }
?>



<?
            if(count($sub04_2) > 0)
            {
?>

                                <li>
									<strong><a href="/investment/sub6.php">IR안내</a></strong>
<?
    for($i=0; $i<count($sub04_2); $i++)
    {
        $row = $sub04_2[$i];

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
									<p><a href="/investment/sub6.php"><?=$row["title"]?></a></p>
                                    <?
    }
?>
								</li>

<?
            }
?>
							</ul>
						</div>


<?
        }
?>


<?
        if($sub05_cnt > 0)
        {
?>



                        <div class="sear_box">
							<p class="sear_tit">채용정보 (<?=$sub05_cnt?>건) <a href="index.php?sc_index=5&sc_str=<?=$parameters->print2("sc_str")?>">MORE</a></p>
							<ul>
<?
	for($i=0 ; $i<count($sub05) ; $i++)
	{
        $row = $sub05[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];

        $num = $start_num;

        $useYnStr = "n";

        $start_num--;
?>
								<li>
									<strong><a href="<?=$row["url"]?>"><?=$row["name"]?></a></strong>
									<p><a href="<?=$row["url"]?>"><?=$row["content"]?></a></p>
								</li>
<?
    }
?>

<?
            if(count($sub05_1) > 0)
            {
?>

<li>
									<strong><a href="/recruit_info/sub3.php">채용공고</a></strong>
<?
    for($i=0; $i<count($sub05_1); $i++)
    {
        $row = $sub05_1[$i];

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
									<p><a href="/recruit_info/sub3_view.php?pk_seq=<?=$row["seq"]?>&sc_board_seq=4&sc_num=0&page=1&"><?=$row["title"]?></a></p>
                                    <?
    }
?>
								</li>



<?
            }


            if(count($sub05_2) > 0)
            {
?>


                                <li>
									<strong><a href="/recruit_info/sub5.php">채용FAQ</a></strong>
<?
    for($i=0; $i<count($sub05_2); $i++)
    {
        $row = $sub05_2[$i];

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
									<p><a href="/recruit_info/sub5.php"><?=$row["title"]?></a></p>
                                    <?
    }
?>
								</li>

<?
            }
?>

							</ul>
						</div>

<?
        }


        if($sub06_cnt > 0)
        {
?>



                        <div class="sear_box">
							<p class="sear_tit">고객센터 (<?=$sub06_cnt?>건) <a href="index.php?sc_index=6&sc_str=<?=$parameters->print2("sc_str")?>">MORE</a></p>
							<ul>


                            <li>
									<strong><a href="/customer_service/sub1.php">자주묻는질문</a></strong>
<?
    for($i=0; $i<count($sub06_1); $i++)
    {
        $row = $sub06_1[$i];

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
									<p><a href="/customer_service/sub1.php"><?=$row["title"]?></a></p>
                                    <?
    }
?>
								</li>


<?
            if(count($sub06) > 0)
            {
?>


<?
	for($i=0 ; $i<count($sub06) ; $i++)
	{
        $row = $sub06[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];

        $num = $start_num;

        $useYnStr = "n";

        $start_num--;
?>
								<li>
									<strong><a href="<?=$row["url"]?>"><?=$row["name"]?></a></strong>
									<p><a href="<?=$row["url"]?>"><?=$row["content"]?></a></p>
								</li>
<?
    }

?>

<?
            }
?>


							</ul>
						</div>


<?
        }
?>

<?
    }
?>




<?
        if($parameters->print2("sc_index") == "1")
        {
?>
                    <div class="sear_box">
							<p class="sear_tit">회사소개  (<?=$sub01_cnt?>건) </p>
							<ul>
<?
	for($i=0 ; $i<count($sub01) ; $i++)
	{
        $row = $sub01[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];

        $num = $start_num;

        $useYnStr = "n";

        $start_num--;
?>
								<li>
									<strong><a href="<?=$row["url"]?>"><?=$row["name"]?></a></strong>
									<p><a href="<?=$row["url"]?>"><?=$row["content"]?></a></p>
								</li>
<?
    }
?>
							</ul>
						</div>
<?
        }
?>










<?
        if($parameters->print2("sc_index") == "2")
        {
?>

                <div class="sear_box">
							<p class="sear_tit">사업소개 (<?=$sub02_cnt?>건) </p>
							<ul>
<?
	for($i=0 ; $i<count($sub02) ; $i++)
	{
        $row = $sub02[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];

        $num = $start_num;

        $useYnStr = "n";

        $start_num--;
?>
								<li>
									<strong><a href="<?=$row["url"]?>"><?=$row["name"]?></a></strong>
									<p><a href="<?=$row["url"]?>"><?=$row["content"]?></a></p>
								</li>
<?
    }
?>
							</ul>
						</div>


<?
        }
?>








<?
        if($parameters->print2("sc_index") == "3")
        {
?>
<div class="sear_box">
							<p class="sear_tit">글로벌 네트워크 (<?=$sub03_cnt?>건) </p>
							<ul>
<?
	for($i=0 ; $i<count($sub03) ; $i++)
	{
        $row = $sub03[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];

        $num = $start_num;

        $useYnStr = "n";

        $start_num--;
?>
								<li>
									<strong><a href="<?=$row["url"]?>"><?=$row["name"]?></a></strong>
									<p><a href="<?=$row["url"]?>"><?=$row["content"]?></a></p>
								</li>
<?
    }
?>
							</ul>
						</div>
<?
        }
?>





<?
        if($parameters->print2("sc_index") == "4")
        {
?>
<div class="sear_box">
							<p class="sear_tit">투자정보 (<?=$sub04_cnt?>건)</p>
							<ul>

<?
	for($i=0 ; $i<count($sub04) ; $i++)
	{
        $row = $sub04[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];

        $num = $start_num;

        $useYnStr = "n";

        $start_num--;
?>
								<li>
									<strong><a href="<?=$row["url"]?>"><?=$row["name"]?></a></strong>
									<p><a href="<?=$row["url"]?>"><?=$row["content"]?></a></p>
								</li>
<?
    }


            if(count($sub04_1) > 0)
            {
?>

								<li>
									<strong><a href="/investment/sub5.php">보도자료</a></strong>
									<div class="ser_inv">
                                    <?
    for($i=0; $i<count($sub04_1); $i++)
    {
        $row = $sub04_1[$i];

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
                                        <div class="inv_list01 <?=$i <> "0" ? "inv_list02" : ""?>" >
											<dl>
												<dt><a href="javascript:goUrl4('<?=$row["tmp_field1"]?>', '<?=$row["seq"]?>');"><img src="<?=$imgStr?>" alt="" border="0" width="380" height="213"/></a></dt>
												<dd><a href="javascript:goUrl4('<?=$row["tmp_field1"]?>', '<?=$row["seq"]?>');"><?=str_cut($row["title"], 68, "..")?><span><?=$row["tmp_field2"]?></span></a></dd>
											</dl>
										</div>
<?
    }
?>
									</div>
								</li>
<?
            }
?>



<?
            if(count($sub04_2) > 0)
            {
?>

                                <li>
									<strong><a href="/investment/sub6.php">IR안내</a></strong>
<?
    for($i=0; $i<count($sub04_2); $i++)
    {
        $row = $sub04_2[$i];

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
									<p><a href="/investment/sub6.php"><?=$row["title"]?></a></p>
                                    <?
    }
?>
								</li>

<?
            }
?>
							</ul>
						</div>
<?
        }
?>





<?
        if($parameters->print2("sc_index") == "5")
        {
?>

<div class="sear_box">
							<p class="sear_tit">채용정보 (<?=$sub05_cnt?>건)</p>
							<ul>
<?
	for($i=0 ; $i<count($sub05) ; $i++)
	{
        $row = $sub05[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];

        $num = $start_num;

        $useYnStr = "n";

        $start_num--;
?>
								<li>
									<strong><a href="<?=$row["url"]?>"><?=$row["name"]?></a></strong>
									<p><a href="<?=$row["url"]?>"><?=$row["content"]?></a></p>
								</li>
<?
    }
?>

<?
            if(count($sub05_1) > 0)
            {
?>

<li>
									<strong><a href="/recruit_info/sub3.php">채용공고</a></strong>
<?
    for($i=0; $i<count($sub05_1); $i++)
    {
        $row = $sub05_1[$i];

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
									<p><a href="/recruit_info/sub3_view.php?pk_seq=<?=$row["seq"]?>&sc_board_seq=4&sc_num=0&page=1&"><?=$row["title"]?></a></p>
                                    <?
    }
?>
								</li>



<?
            }


            if(count($sub05_2) > 0)
            {
?>


                                <li>
									<strong><a href="/recruit_info/sub5.php">채용FAQ</a></strong>
<?
    for($i=0; $i<count($sub05_2); $i++)
    {
        $row = $sub05_2[$i];

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
									<p><a href="/recruit_info/sub5.php"><?=$row["title"]?></a></p>
                                    <?
    }
?>
								</li>

<?
            }
?>

							</ul>
						</div>
<?
        }
?>





<?
        if($parameters->print2("sc_index") == "6")
        {
?>

<div class="sear_box">
							<p class="sear_tit">고객센터 (<?=$sub06_cnt?>건)</p>
							<ul>


                            <li>
									<strong><a href="/customer_service/sub1.php">자주묻는질문</a></strong>
<?
    for($i=0; $i<count($sub06_1); $i++)
    {
        $row = $sub06_1[$i];

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
									<p><a href="/customer_service/sub1.php"><?=$row["title"]?></a></p>
                                    <?
    }
?>
								</li>


<?
            if(count($sub06) > 0)
            {
?>


<?
	for($i=0 ; $i<count($sub06) ; $i++)
	{
        $row = $sub06[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];

        $num = $start_num;

        $useYnStr = "n";

        $start_num--;
?>
								<li>
									<strong><a href="<?=$row["url"]?>"><?=$row["name"]?></a></strong>
									<p><a href="<?=$row["url"]?>"><?=$row["content"]?></a></p>
								</li>
<?
    }

?>

<?
            }
?>


							</ul>
						</div>

<?
        }
?>


					</div>
				</div>
			</div>

<? include $path_include_prefix."inc/user_footer.inc"?>