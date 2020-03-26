<?
	$path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $keySet = array("seq", "cond", "str", "board_seq", "category_text", "num", "date1", "date2" );

    $primaryKeys = array("seq");
    $now = getToday2();
    $act = $parameters->print2("act");

    $parameters->set("sc_board_seq", nvl($parameters->print2("sc_board_seq"),"3"));


    $sql = "SELECT * FROM board WHERE seq='".$parameters->print2("sc_board_seq")."'";

    $parameters->set("query", $sql);
    $single_board = $manager->getGeneralSingle($parameters);

    $sql = "SELECT a.* FROM bulletin a WHERE board_seq='".$parameters->print2("sc_board_seq")."'\n";

    if(strlen($parameters->print2("sc_str")) > 0) $sql .= " AND ".$parameters->print2("sc_cond")." LIKE '%".$parameters->print2("sc_str")."%'\n";

    if(strlen($parameters->print2("sc_category_text")) > 0) $sql .= " AND category_text='".$parameters->print2("sc_category_text")."'\n";

    if(strlen($parameters->print2("sc_date1")) > 0) $sql .= " AND a.regi_date>='".$parameters->print2("sc_date1")." 00:00:00' \n";

    if(strlen($parameters->print2("sc_date2")) > 0) $sql .= " AND a.regi_date<='".$parameters->print2("sc_date2")." 23:59:59' \n";

    $sql .= "ORDER BY  regi_date desc, seq desc";
    $parameters->set("query", $sql);
    $parameters->set("pageSize", "6");

    $list01 = $manager->getGeneralPage($parameters);

    $parameters->set("menu1", "2");
    $parameters->set("menu2", "3");

?>
<?include $path_include_prefix."inc/user_header.inc";?>

<script>

function fw_domReady(){
    var frm = document.frm;

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
		<div class="sub_title">
			<dl>
				<dt>마을산책</dt>
				<dd>마을의 일상이 풍경이 되는 골목길</dd>
			</dl>
		</div>
		<div class="board_ser02">
			<span class="board_all2" id="boa_set2_text">투어신청</span>
			<label for="boa_set2" class="sor_hide2">투어신청</label>
			<select id="boa_set2" name="tmp_searchCnd" onchange="cnd_box();">
			<option value="01.php">지도 및 오디오 가이드</option>
			<option value="02.php">마을산책 추천 코스</option>
			<option value="tour_list.php" selected>투어신청</option>
			</select>
		</div>
		<div class="sub_cont">
			<div class="walk_tab">
				<ul class="tab">
					<li><a href="01.php"><span>지도 및 오디오 가이드</span></a></li>
					<li><a href="02.php"><span>마을산책 추천 코스</span></a></li>
					<li><a href="tour_list.php" class="on"><span>투어신청</span></a></li>
				</ul>
			</div>
			<div class="tour_app">
				<p class="tour_tit">마을을 둘러보며 체험하고 싶으신가요?<span>마을프로그램을 이용해 보세요.</span></p>
				<div class="tour_info">
					<ul>
						<li><strong>신청인원  </strong>매회 20인 (20명이상 개별문의) / 최소 10인 이상 시 투어를 진행합니다.<span> 신청 인원에 따라 조기 마감될 수 있습니다.</span></li>
						<li><strong>신청기한  </strong>희망 방문일 기준, 최소 2주일 전</li>
						<li class="point">※ 모든 프로그램은 주말 이용이 불가하며, 온라인 사전예약제로 운영됩니다.</li>
					</ul>
				</div>
				<div class="tour_apl">
					<div class="tour_list">
						<div class="t_img">
							<img src="../web/images/sub/village_walk/tour_img01.jpg" alt="마을이웃 투어" class="web"/>
							<img src="../web/images/sub/village_walk/tour_img01_t.jpg" alt="마을이웃 투어" class="tabl"/>
							<img src="../web/images/sub/village_walk/tour_img01_m.jpg" alt="마을이웃 투어" class="mobl"/>
						</div>
						<div class="tour_cont">
							<dl>
								<dt>마을이웃 투어 </dt>
								<dd>발산캠핑과 이웃캠프등을 포함한 청년들이 직접 기획 및 진행하는 발산마을만의 <span>이웃투어 체험프로그램</span></dd>
							</dl>
							<ul class="prog">
								<li><span>프로그램 소개</span></li>
								<li><span>체험 프로그램</span></li>
								<li><span>마무리</span></li>
							</ul>
							<div class="tour_i">
								<ul>
									<li><strong>대상  </strong>마을에서 다양한 체험프로그램으로 추억을 만들고 싶은 단체</li>
									<li><strong>문의  </strong>070-4910-0339</li>
									<li><strong>요금  </strong>1인당 5,000뭔 ~10,000원 (30분)</li>
								</ul>
								<div class="tour_btn">
									<a href="tour_application.php?sc_category=1">투어 신청하기</a>
								</div>
							</div>
						</div>
					</div>
					<div class="tour_list">
						<div class="t_img">
							<img src="../web/images/sub/village_walk/tour_img02.jpg" alt="마을해설사 투어" class="web"/>
							<img src="../web/images/sub/village_walk/tour_img02_t.jpg" alt="마을해설사 투어" class="tabl"/>
							<img src="../web/images/sub/village_walk/tour_img02_m.jpg" alt="마을해설사 투어" class="mobl"/>
						</div>
						<div class="tour_cont">
							<dl>
								<dt>마을해설사 투어 </dt>
								<dd>마을에서 진행되는 여러 가지 사업에 대해 마을 주민 해설사의 브리핑과 <span>마을의 각 공간들을 돌며 공간을 둘러보는 투어 </span></dd>
							</dl>
							<ul class="prog">
								<li><span>마을사업 소개 브리핑</span></li>
								<li><span>마을공간 소개 및 투어</span></li>
								<li><span>마무리</span></li>
							</ul>
							<div class="tour_i">
								<ul>
									<li><strong>대상  </strong>청춘발산마을에 대한 소개와 마을 답사를 원하는 단체</li>
									<li><strong>문의  </strong>062-350-4223</li>
									<li><strong>요금  </strong>브리핑 80,000원 / 브리핑 및 투어 150,000원</li>
								</ul>
								<div class="tour_btn">
									<a href="tour_application.php?sc_category=2">투어 신청하기</a>
								</div>
							</div>
						</div>
					</div>
					<div class="tour_list">
						<div class="t_img">
							<img src="../web/images/sub/village_walk/tour_img03.jpg" alt="주민 집밥 투어" class="web"/>
							<img src="../web/images/sub/village_walk/tour_img03_t.jpg" alt="주민 집밥 투어" class="tabl"/>
							<img src="../web/images/sub/village_walk/tour_img03_m.jpg" alt="주민 집밥 투어" class="mobl"/>
						</div>
						<div class="tour_cont">
							<dl>
								<dt>주민 집밥 투어</dt>
								<dd>마을에 찾아온 손님들을 위해 주민들이 직접 준비한 따뜻한 한 끼 체험</dd>
							</dl>
							<ul class="prog">
								<li><span>마을소개</span></li>
								<li><span>마을투어</span></li>
								<li><span>마무리</span></li>
							</ul>
							<div class="tour_i">
								<ul>
									<li><strong>문의  </strong>062-350-4223(사전 협의 필수)</li>
									<li><strong>요금  </strong>1인당 10,000원 (밥, 국, 밑반찬)</li>
								</ul>
								<div class="tour_btn">
									<a href="tour_application.php?sc_category=3">투어 신청하기</a>
								</div>
							</div>
						</div>
					</div>
					<p class="tour_point">※ 체험프로그램은 일정에 따라 변동되며 자세한 공지는 게시판을 통해 확인할 수 있습니다.<p>
				</div>
			</div>
		</div>
	</div>
 <?include $path_include_prefix."inc/user_footer.inc";?>