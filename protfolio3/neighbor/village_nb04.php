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
			<span class="board_all2" id="boa_set2_text">마을 쉴거리</span>
			<label for="boa_set2" class="sor_hide2">마을 쉴거리</label>
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
						<li><a href="#" class="on"><span>마을 쉴거리</span></a></li>
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
								<a href="#"><img src="../web/images/sub/neigbor/br_img01.jpg" alt="샘몰경로당" class="web_img"/>
								<img src="../web/images/sub/neigbor/br_img01_m.jpg" alt="샘몰경로당" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">샘몰경로당</a></dt>
									<dd><a href="#">도란도란 이야기가 함께하는 곳</a></dd>
								</dl>
								<span>공간번호 00</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li>
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/br_img02.jpg" alt="데블스 하우스" class="web_img"/><img src="../web/images/sub/neigbor/br_img02_m.jpg" alt="데블스 하우스" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">데블스 하우스</a></dt>
									<dd><a href="#">청춘들의 화합의 장</a></dd>
								</dl>
								<span>공간번호 11</span>
								<a href="#" class="arow_2"><img src="../web/images/sub/neigbor/bn_icon01.png" alt="" class="n_img"/></a>
							</div>
						</li>
						<li class="marx2">
							<div class="exp_img">
								<a href="#"><img src="../web/images/sub/neigbor/br_img03.jpg" alt="주민 민박" class="web_img"/><img src="../web/images/sub/neigbor/br_img03_m.jpg" alt="주민 민박" class="mob_img"/></a>
							</div>
							<div class="exp_txt">
								<dl>
									<dt><a href="#">주민 민박</a></dt>
									<dd><a href="#">발산마을 주민과 함께하는 하루</a></dd>
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
  </div>
  <div id="footer">
	<div class="foot">
		<div class="f_logo">
			<img src="../web/images/common/f_logo_2018.png" alt="청춘발산마을"/>
		</div>
		<div class="add">
			<div class="address">
				<p><span>신주소</span>  광주광역시 서구 천변좌로 12-16 청춘빌리지 <span>｜ 구주소</span>  광주광역시 서구 양동 440-5번지 </p>
				<p><span>e-mail</span>  contact@free-zoom.com <span>｜ 통신판매업신고번호</span>  제 2016-서울마포-1052호</p>
				<p><span>전화번호</span>  070-4910-0339 <span>｜ 사업자번호</span>  128-82-85036 <span>｜ 상호명</span>  공공미술프리즘 <span>｜ 대표자</span>  유다희</p>
				<p>&copy; FREE-ZOOM CO., LTD. All right reserved.</p>
			</div>
			<div class="address_m">
				<p><span>신주소</span>  광주광역시 서구 천변좌로 12-16 청춘빌리지 </p>
				<p><span>e-mail</span>  contact@free-zoom.com </p>
				<p><span>상호명</span>  공공미술프리즘 <span>｜ 대표자</span>  유다희</p>
				<p>&copy; FREE-ZOOM CO., LTD. All right reserved.</p>
			</div>
			<div class="sns">
				<a href="#"><img src="../web/images/common/f_2018.png" alt=""/></a>
				<a href="#"><img src="../web/images/common/i_2018.png" alt=""/></a>
				<a href="#"><img src="../web/images/common/y_2018.png" alt=""/></a>
			</div>
		</div>
	</div>
  </div>
</div>
 </BODY>
</HTML>
