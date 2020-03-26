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
			<span class="board_all2" id="boa_set2_text">마을 볼거리</span>
			<label for="boa_set2" class="sor_hide2">마을 볼거리</label>
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
						<li><a href="#"><span>마을 먹거리</span></a></li>
						<li><a href="#"><span>마을 쉴거리</span></a></li>
						<li><a href="#" class="on"><span>마을 볼거리</span></a></li>
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
								<a href="#"><img src="../web/images/sub/neigbor/se_img01.jpg" alt="기억저장소" class="web_img"/>
								<img src="../web/images/sub/neigbor/se_img01_m.jpg" alt="기억저장소" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">기억저장소</a></dt>
									<dd><a href="#">발산의 기억, 청춘의 기억 </a></dd>
								</dl>
								<span>공간번호 00</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li>
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/se_img02.jpg" alt="아우라 팩토리" class="web_img"/><img src="../web/images/sub/neigbor/se_img02_m.jpg" alt="아우라 팩토리" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">아우라 팩토리</a></dt>
									<dd><a href="#">전시 및 문화교육의 장</a></dd>
								</dl>
								<span>공간번호 11</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li class="marx2">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/se_img03.jpg" alt="108계단" class="web_img"/><img src="../web/images/sub/neigbor/se_img03_m.jpg" alt="108계단" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">108계단</a></dt>
									<dd><a href="#">일곱빛깔 무지개를 담았어요</a></dd>
								</dl>
								<span>공간번호 19</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li class="marx marx3">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/se_img04.jpg" alt="소리파이프" class="web_img"/><img src="../web/images/sub/neigbor/se_img04_m.jpg" alt="소리파이프" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">소리파이프</a></dt>
									<dd><a href="#">내 말 들려~? 낭만적인 소리파이프</a></dd>
								</dl>
								<span>공간번호 00</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li class="marx2">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/se_img05.jpg" alt="발산상회" class="web_img"/><img src="../web/images/sub/neigbor/se_img05_m.jpg" alt="발산상회" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">발산상회</a></dt>
									<dd><a href="#">전망이 좋은 루프탑이 있어요</a></dd>
								</dl>
								<span>공간번호 19</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li class="">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/se_img06.jpg" alt="청춘 메세지" class="web_img"/><img src="../web/images/sub/neigbor/se_img06_m.jpg" alt="청춘 메세지" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">청춘 메세지</a></dt>
									<dd><a href="#">나의 오늘을 위로하는 글</a></dd>
								</dl>
								<span>공간번호 00</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>

					</ul>


                    <ul>
						<li class="marx">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/se_img01.jpg" alt="기억저장소" class="web_img"/>
								<img src="../web/images/sub/neigbor/se_img01_m.jpg" alt="기억저장소" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">기억저장소</a></dt>
									<dd><a href="#">발산의 기억, 청춘의 기억 </a></dd>
								</dl>
								<span>공간번호 00</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li>
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/se_img02.jpg" alt="아우라 팩토리" class="web_img"/><img src="../web/images/sub/neigbor/se_img02_m.jpg" alt="아우라 팩토리" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">아우라 팩토리</a></dt>
									<dd><a href="#">전시 및 문화교육의 장</a></dd>
								</dl>
								<span>공간번호 11</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li class="marx2">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/se_img03.jpg" alt="108계단" class="web_img"/><img src="../web/images/sub/neigbor/se_img03_m.jpg" alt="108계단" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">108계단</a></dt>
									<dd><a href="#">일곱빛깔 무지개를 담았어요</a></dd>
								</dl>
								<span>공간번호 19</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li class="marx marx3">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/se_img04.jpg" alt="소리파이프" class="web_img"/><img src="../web/images/sub/neigbor/se_img04_m.jpg" alt="소리파이프" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">소리파이프</a></dt>
									<dd><a href="#">내 말 들려~? 낭만적인 소리파이프</a></dd>
								</dl>
								<span>공간번호 00</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li class="marx2">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/se_img05.jpg" alt="발산상회" class="web_img"/><img src="../web/images/sub/neigbor/se_img05_m.jpg" alt="발산상회" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">발산상회</a></dt>
									<dd><a href="#">전망이 좋은 루프탑이 있어요</a></dd>
								</dl>
								<span>공간번호 19</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li class="">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/se_img06.jpg" alt="청춘 메세지" class="web_img"/><img src="../web/images/sub/neigbor/se_img06_m.jpg" alt="청춘 메세지" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">청춘 메세지</a></dt>
									<dd><a href="#">나의 오늘을 위로하는 글</a></dd>
								</dl>
								<span>공간번호 00</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>

					</ul>


					<div class="cont_more">
						<a href="#"><span>더 많은 콘텐츠 불러오기</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
 <?include $path_include_prefix."inc/user_footer.inc";?>