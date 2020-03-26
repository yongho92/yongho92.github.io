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
        "display_yn"
    );

    $primaryKeys = array("seq");
    $now = getToday2();
    $act = $parameters->print2("act");


    $parameters->set("menu1", "1");
    $parameters->set("menu2", "1");


    $sql = "
        SELECT a.*
        FROM mov_list a
        WHERE 1=1
    ";
    $sql .= "order by a.seq desc";
    $parameters->set("query", $sql);
    $parameters->set("pageSize", "10");
    $list01 = $exec->getGeneralPage($parameters);


?>
<?include $path_include_prefix."inc/user_header.inc";?>

<script>

function fw_domReady(){
    var frm = document.frm;

     $('img[usemap]').rwdImageMaps();



		$('.arrow a').on('click', function(e) {
		e.preventDefault();

		var target = $(this).attr("href");
		if(!target) return false;

		$("html, body").stop().animate({
		scrollTop: $(target).offset().top
		},600);
		});


        goView("3");

    //alert(window.innerHeight);
}

function goView(seq)
{
    var click_elmt = $(this);
    $.ajax({
        type:"GET",
        url:"/ajax/intro_ajax.php",
        dataType : "html",
        data: {"pk_seq":seq},
        success:function(args){
            $("#mov1").attr("class", "");
            $("#mov2").attr("class", "");
            $("#mov3").attr("class", "");

            $("#mov" + seq).attr("class", "on");
            $("#mov_layer").html(args);
            $("#mov_layer").fadeIn("slow");
        },
        error:function(e){
            //alert(e.responseText);
        }
    });

    document.frm.tmp_searchCnd.value = seq;
    $("#boa_set11_text").html($("#mov_text" + seq).html());
    $("#sor_hide11").html($("#mov_text" + seq).html());
}

function changeMov()
{
    $(".mov_cont").html($("#movie_layer").html());
}

function goView2()
{
    var seq2 = document.frm.tmp_searchCnd.value;
    goView(seq2);

    $("#boa_set11_text").html($("#mov_text" + seq2).html());
    $("#sor_hide11").html($("#mov_text" + seq2).html());
}
</script>
<script>
	$(document).ready(function(){
		//$('.sub_title_int').height($(window).height());
        $('.sub_title_int').height(window.innerHeight);
	});
</script>

	<div class="contents">
		<div class="sub_title sub_title_int">
			<dl>
				<dt>마을소개</dt>
				<dd>청년과 주민이 함께 만드는 마을</dd>
			</dl>
			<div class="arrow">
				<a href="#cont" class="scroll"><img src="../web/images/sub/intro/int_arrow.png" alt=""/></a>
			</div>
		</div>
		<div class="int_cont" id="cont">
			<div class="v_int">
				<div class="int_txt">
					<h4>청춘발산마을 소개</h4>
					<p>전쟁 피난민들이 모였던 전라도 광주의 대표적인 달동네,<span>발산마을은 70~80년대 방직공장이 인근에 생기면서</span>전국에서 일자리를 찾아온 여공들로 한 때 활력이 넘쳤던 마을입니다.</p>
					<p>90년대 이후 도심 공동화 현상과 방직공장의 쇠퇴로<span>마을의 여공들이 떠나면서 점차 빈집들이 늘어나고,</span>어느새 나이든 어르신들만 남아 삶의 터전을 지켜왔습니다.</p>
					<p>그랬던 이 작은 마을에 활력이 다시 살아나고 있습니다.</p>
					<p>2015년 현대자동차그룹과 공공프리즘이 함께 시작한<span>&lt;청춘발산마을&gt; 사업은 국내 최대 규모의 민관협력 도시재생 프로그램으로</span>다양한 디자인 작업과 청년들의 입주, 주민 생활 개선 프로그램을 통해 <span>마을의 활력을 불어넣고 주민들의 일상에 공동체 문화를 만들어 나가고자 </span>노력했습니다.</p>
					<p>그 결과, 오래된 골목에는 컬러아트프로젝트와 공공디자인으로<span>걷고 싶고 추억을 함께 만드는 골목길이 되면서 찾아오는 방문객이 </span>늘기 시작했으며, 청년 창업팀이 마을에 입주하여 활동하기 시작했습니다.<span>또한 마을 주민과 청년들이 협력하여 연중 다양한 프로그램들도 </span>실시되기 시작했습니다.</p>
					<p>청춘발산마을은 오늘도 진행형입니다.<span>마을 주민과 청년들은 오늘도 방문객들과 함께 </span>마을의 새로운 변화를 함께 만들어 갑니다.</p>
				</div>
				<div class="int_img">
					<img src="../web/images/sub/intro/int_img01.jpg" alt="1970년대 방직공장 여공들" class="web"/>
					<img src="../web/images/sub/intro/int_img01_t.jpg" alt="1970년대 방직공장 여공들" class="tab"/>
					<img src="../web/images/sub/intro/int_img01_m.jpg" alt="1970년대 방직공장 여공들" class="mob"/>
					<p>1970년대 방직공장 여공들</p>
				</div>
			</div>
			<div class="his_cont">
				<div class="his_box">
					<h4>걸어온 길</h4>
					<p>청춘발산마을 발자취 소개</p>
					<div class="his_list">
						<ul>
							<li>
								<dl>
									<dt>2018 마을 자치 운영</dt>
									<dd>청년입주팀 협동조합 결성</dd>
									<dd>누구나 발산바래 구성 및 마을행사 정례화</dd>
									<dd>청년 입주팀의 마을문화예술 프로그램 구성 </dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt>2017 청년 정착</dt>
									<dd>마을 내 청년 공간 입주</dd>
									<dd>마을 문화 형성</dd>
									<dd>청춘빌리지 2호 오픈, 운영</dd>
								</dl>
							</li>
						</ul>
						<ul class="list_m">
							<li>
								<dl>
									<dt>2016 청년 유입</dt>
									<dd>마을 내 청년활동 지원</dd>
									<dd>이웃 캠프</dd>
									<dd>청춘빌리지 1호 오픈, 운영</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt>2015 마을 디자인</dt>
									<dd>마을 공공디자인</dd>
									<dd>컬러아트프로젝트</dd>
									<dd>로컬 거버넌스 구축</dd>
								</dl>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="v_mov">
				<h4>청춘발산마을 영상</h4>
				<div class="board_ser11">
					<span class="board_all11" id="boa_set11_text">청년희망 프로젝트</span>
					<label for="boa_set11" class="sor_hide11" id="sor_hide11">청년희망 프로젝트</label>
					<select id="boa_set11" name="tmp_searchCnd" onchange="goView2();">
<?
    for($i=0 ; $i<$list01["selectCnt"] ; $i++)
	{
        $row = $list01[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];
?>
					<option value="<?=$row["seq"]?>"><?=$row["name"]?></option>
<?
    }
?>
					</select>
				</div>
				<ul>
<?
    for($i=0 ; $i<$list01["selectCnt"] ; $i++)
	{
        $row = $list01[$i];

        for($j=0 ; $j<count($primaryKeys) ; $j++) $ret[$j] = $row[$primaryKeys[$j]];
?>
					<li><a href="javascript:goView('<?=$row["seq"]?>');" id="mov<?=$row["seq"]?>"><?=$row["name"]?></a></li>
                    <span id="mov_text<?=$row["seq"]?>" style="display:none;"><?=$row["name"]?></span>
<?
    }
?>
				</ul>


				<span id="mov_layer">
                </span>


			</div>
			<div class="dir_cont">
				<div class="tab_dir">
					<img src="../web/images/sub/intro/int_bg2_m.jpg" alt="" class="tab"/>
					<a href="http://naver.me/GLyz1Swh" target="_blank" class="map_more"><span>지도보기</span></a>
				</div>
				<div class="dir_box">
					<h4>오시는 길</h4>
					<ul>
						<li>
							<h5 class="car">자가용 이용시 </h5>
							<p>별도의 주차지원은 되지 않으니 가급적 대중 교통을 이용해 주시기 바랍니다. <span>도로 상황이 매우 혼잡하며 불법 주정차에 대한 집중 단속이 있습니다.</span>자가용을 이용하실 경우 먼저 인근의 주차 가능 구역을 확인 하시기 바랍니다.</p>
						</li>
						<li class="bord">
							<h5 class="mto">지하철 이용시</h5>
							<dl class="mto_dir">
								<dt>광주 송정역 → 발산마을</dt>
								<dd>·광주1호선 – 유덕65번, 760번 38분 소요 <span>(광주 송정역 – 돌고개역(환승) - 발산하차 - 발산입구)</span></dd>
								<dd>·광주1호선 – 763번 38분 소요<span>(광주 송정역 – 화정역(환승) - 발산하차 – 발산입구</span></dd>
							</dl>
						</li>
						<li>
							<h5 class="bus">버스 이용시</h5>
							<dl>
								<dt>광천터미널(광천 유스퀘어) → 발산마을</dt>
								<dd>·도보로 15분</dd>
								<dd>·763번 8분소요(광천터미널 승차 – 발산하차 – 발산입구)</dd>
								<dd>·760번 8분소요(광천터미널 승차 – 발산하차 – 발산입구)</dd>
							</dl>
						</li>
					</ul>
					<div class="dir_more">
						<a href="http://naver.me/GLyz1Swh" target="_blank"><span>지도보기</span></a>
					</div>
				</div>
			</div>
			<div class="intro_bg">
			</div>
			<div class="family">
				<div class="fam_box">
					<h4>만드는 사람들</h4>
					<ul>
                        <li><img src="../web/images/sub/intro/family_02.png" alt="현대"/></li>
						<li><img src="../web/images/sub/intro/family_01.png" alt="공공프리즘"/></li>

					</ul>
				</div>
				<div class="fam_box2">
					<h4>함께하는 사람들</h4>
					<ul>
                        <li class="fam_img"><img src="../web/images/sub/intro/family_07.png" alt="kia"/></li>
						<li class="fam_img2"><img src="../web/images/sub/intro/family_06.png" alt="광주광역시"/></li>
						<li class="fam_img2"><img src="../web/images/sub/intro/family_04.png" alt="광주창조경제혁신센터"/></li>
						<li class="fam_img fam_img3"><img src="../web/images/sub/intro/family_05.png" alt="광주광역시 서구"/></li>

                        <li class="marx fam_img3 fam_img4"><img src="../web/images/sub/intro/family_03.png" alt="사랑의열매"/></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
 <?include $path_include_prefix."inc/user_footer.inc";?>