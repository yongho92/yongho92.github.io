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
			<span class="board_all2" id="boa_set2_text">마을 먹거리</span>
			<label for="boa_set2" class="sor_hide2">마을 먹거리</label>
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
						<li><a href="#"><span>마을 체험거리</span></a></li>
						<li><a href="#" class="on"><span>마을 먹거리</span></a></li>
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
								<a href="#"><img src="../web/images/sub/neigbor/food_img01.jpg" alt="다경이의 식탁" class="web_img"/>
								<img src="../web/images/sub/neigbor/food_img01_m.jpg" alt="다경이의 식탁" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">다경이의 식탁</a></dt>
									<dd><a href="#">따뜻하고 건강한 한 끼</a></dd>
								</dl>
								<span>공간번호 00</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li>
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/food_img02.jpg" alt="플롱" class="web_img"/><img src="../web/images/sub/neigbor/food_img02_m.jpg" alt="플롱" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">플롱</a></dt>
									<dd><a href="#">다양한 빵과 쿠키를 팔아요</a></dd>
								</dl>
								<span>공간번호 11</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li class="marx2">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/food_img03.jpg" alt="앤카롱" class="web_img"/><img src="../web/images/sub/neigbor/food_img03_m.jpg" alt="앤카롱" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">앤카롱</a></dt>
									<dd><a href="#">달콤바삭 마카롱과 함께하는 오후</a></dd>
								</dl>
								<span>공간번호 19</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li class="marx marx3">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/food_img04.jpg" alt="명구 핫도그" class="web_img"/><img src="../web/images/sub/neigbor/food_img04_m.jpg" alt="명구 핫도그" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">명구 핫도그</a></dt>
									<dd><a href="#">핫도그도 우아하게 먹어봐요 </a></dd>
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