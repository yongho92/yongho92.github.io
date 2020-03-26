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

    $parameters->set("menu1", "3");
    $parameters->set("menu2", "1");

?>
<?include $path_include_prefix."inc/user_header.inc";?>

<script>

function fw_domReady(){
    var frm = document.frm;

     $('.exp_list ul li').mouseenter(function(){
            $(this).find('img.n_img').attr('src','../web/images/sub/neigbor/bn_icon01_on.png');

        });
        $('.exp_list ul li').mouseleave(function(){
            $(this).find('img.n_img').attr('src','../web/images/sub/neigbor/bn_icon01.png');
        });

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
			<span class="board_all2" id="boa_set2_text">마을 체험거리</span>
			<label for="boa_set2" class="sor_hide2">마을 체험거리</label>
			<select id="boa_set2" name="tmp_searchCnd" onchange="cnd_box();">
			<option value="">마을 체험거리</option>
			<option value="">마을 먹거리</option>
			<option value="">마을 쉴거리</option>
			<option value="">마을 볼거리</option>
			</select>
		</div>
		<div class="exp_ser_m">
			<div class="search">
				<label class="labelx" for="">검색</label>
				<input type="text" id="search" name="search" class="ser_ipt"/>
				<a href="#">검색</a>
			</div>
			<div class="board_ser09">
				<span class="board_all9" id="boa_set9_text">전체</span>
				<label for="boa_set9" class="sor_hide9">전체</label>
				<select id="boa_set9" name="tmp_searchCnd" onchange="cnd_box();">
				<option value="">전체</option>
				<option value="">작성자</option>
				</select>
			</div>
		</div>
		<div class="sub_cont">
			<div class="nb_cont">
				<div class="nb_tab">
					<ul>
						<li><a href="#" class="on"><span>마을 체험거리</span></a></li>
						<li><a href="#"><span>마을 먹거리</span></a></li>
						<li><a href="#"><span>마을 쉴거리</span></a></li>
						<li><a href="#"><span>마을 볼거리</span></a></li>
					</ul>
				</div>
				<div class="exp_ser">
					<div class="search">
						<label class="labelx" for="">검색</label>
						<input type="text" id="search" name="search" class="ser_ipt"/>
					</div>
					<div class="board_ser08">
						<span class="board_all8" id="boa_set8_text">전체</span>
						<label for="boa_set8" class="sor_hide8">전체</label>
						<select id="boa_set8" name="tmp_searchCnd" onchange="cnd_box();">
						<option value="">전체</option>
						<option value="">작성자</option>
						</select>
					</div>
				</div>
				<div class="exp_list">
					<ul>
						<li class="marx">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/nb_img01.jpg" alt="프랜리 컬처" class="web_img"/>
								<img src="../web/images/sub/neigbor/nb_img01_m.jpg" alt="프랜리 컬처" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">프랜리 컬처</a></dt>
									<dd><a href="#">처신나는 출사, 인생샷 찍고가</a></dd>
								</dl>
								<span>공간번호 00</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li>
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/nb_img02.jpg" alt="표류" class="web_img"/><img src="../web/images/sub/neigbor/nb_img02_m.jpg" alt="표류" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">표류</a></dt>
									<dd><a href="#">감성 넘치는 아이디어 쇼룸</a></dd>
								</dl>
								<span>공간번호 11</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li class="marx2">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/nb_img03.jpg" alt="오타쿠 연구소" class="web_img"/><img src="../web/images/sub/neigbor/nb_img03_m.jpg" alt="오타쿠 연구소" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">오타쿠 연구소</a></dt>
									<dd><a href="#">당신의 덕력을 테스트하세요</a></dd>
								</dl>
								<span>공간번호 19</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li class="marx marx3">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/nb_img04.jpg" alt="만선" class="web_img"/><img src="../web/images/sub/neigbor/nb_img04_m.jpg" alt="만선" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">만선</a></dt>
									<dd><a href="#">추억이 방울방울, 빈티지 소품샵</a></dd>
								</dl>
								<span>공간번호 00</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li class="marx2">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/nb_img05.jpg" alt="발산상회" class="web_img"/><img src="../web/images/sub/neigbor/nb_img05_m.jpg" alt="발산상회" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">발산상회</a></dt>
									<dd><a href="#">찐한 추억과 커-피를 팝니다</a></dd>
								</dl>
								<span>공간번호 19</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

<?include $path_include_prefix."inc/user_footer.inc";?>