<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "1");
    $parameters->set("menu2", "3");
?>
<? include $path_include_prefix."inc/user_header.inc"?>
<script>
function fw_domReady()
{
}

</script>


			<div class="comp1">
				<div class="cont_box">
					<div class="copm1_box">
						<div class="cont_01 cont3_01">
							<h2><img src="../web/images/sub/title_27.png" alt="CI/BI 소개"/></h2>
							<p>LVMC홀딩스의 CI & BI 를 소개합니다.</p>
						</div>
					</div>
					<div class="comp3_box">
						<div class="ci_box">
							<div class="ci_l">
								<p><img src="../web/images/sub/title_28.png" alt="CI/BI 소개"/></p>
								<a href="../web/file/LVMC_ci_jpg.zip">JPG</a>
								<a href="../web/file/LVMC_ci_ai.zip">AI</a>
							</div>
							<div class="ci_r">
								<div class="ci_img">
									<img src="../web/images/sub/comp3_img01.jpg" alt="LVMC 홀딩스 CI"/>
								</div>
								<div class="ci_color">
									<div class="main_c">
										<p class="c_title">Main Color</p>
										<ul>
											<li>
												<div class="cmyk">
													<p><img src="../web/images/sub/main_c1.jpg" alt="메인색상"/></p>
													<dl>
														<dt>LVMC RED</dt>
														<dd>C18 M100 Y100 K10<br/>R186 G0 B32</dd>
													</dl>
												</div>
											</li>
										</ul>
									</div>
									<div class="sub_c">
										<p class="c_title">Sub Color</p>
										<ul>
											<li>
												<div class="cmyk">
													<p><img src="../web/images/sub/sub_c1.jpg" alt="서브색상"/></p>
													<dl>
														<dt>LVMC YELLOW</dt>
														<dd>C1 M16 Y100 K0<br/>R255 G20 B0</dd>
													</dl>
												</div>
											</li>
											<li>
												<div class="cmyk cmyk2">
													<p><img src="../web/images/sub/sub_c2.jpg" alt="서브색상"/></p>
													<dl>
														<dt>LVMC BEIGE</dt>
														<dd>C7 M14 Y20 K22<br/>R183 G169 B154</dd>
													</dl>
												</div>
											</li>
											<li>
												<div class="cmyk cmyk2">
													<p><img src="../web/images/sub/sub_c3.jpg" alt="서브색상"/></p>
													<dl>
														<dt>LVMC GRAY</dt>
														<dd>C20 M14 Y12 K40<br/>R151 G153 B155</dd>
													</dl>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="ci_box ci_box2">
							<div class="ci_l">
								<p><img src="../web/images/sub/title_29.png" alt="CI/BI 소개"/></p>
								<a href="../web/file/DAEHAN_bi_jpg.zip">JPG</a>
								<a href="../web/file/DAEHAN_bi_ai.zip">AI</a>
							</div>
							<div class="ci_r">
								<div class="ci_img">
									<img src="../web/images/sub/comp3_img02.jpg" alt="DAEHAN"/>
								</div>
								<div class="ci_color">
									<div class="main_c">
										<p class="c_title">Main Color</p>
										<ul>
											<li class="first">
												<div class="cmyk">
													<p><img src="../web/images/sub/main_c2.jpg" alt="메인색상"/></p>
													<dl>
														<dt>Daehan PURPLE</dt>
														<dd>C79 M100 Y0 K15<br/>R82 G36 B127</dd>
													</dl>
												</div>
											</li>
											<li>
												<div class="cmyk">
													<p><img src="../web/images/sub/main_c3.jpg" alt="메인색상"/></p>
													<dl>
														<dt>Daehan SILVER</dt>
														<dd>C0 M0 Y0 K40<br/>R167 G169 B172</dd>
													</dl>
												</div>
											</li>
										</ul>
									</div>
									<div class="sub_c">
										<p class="c_title">Sub Color</p>
										<ul>
											<li>
												<div class="cmyk">
													<p><img src="../web/images/sub/sub_c4.jpg" alt="서브색상"/></p>
													<dl>
														<dt>Daehan LIGHT PURPLE</dt>
														<dd>C69 M100 Y0 K2<br/>R110 G41 B141</dd>
													</dl>
												</div>
											</li>
											<li>
												<div class="cmyk cmyk2">
													<p><img src="../web/images/sub/sub_c5.jpg" alt="서브색상"/></p>
													<dl>
														<dt>Daehan RED PURPLE</dt>
														<dd>C43 M95 Y0 K0<br/>R157 G51 B147</dd>
													</dl>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="ci_box ci_box2">
							<div class="ci_l">
								<p><img src="../web/images/sub/title_30.png" alt="CI/BI 소개"/></p>
								<a href="../web/file/TERACO_bi_jpg.zip">JPG</a>
								<a href="../web/file/TERACO_bi_ai.zip">AI</a>
							</div>
							<div class="ci_r">
								<div class="ci_img">
									<img src="../web/images/sub/comp3_img03.jpg" alt="TERACO"/>
								</div>
								<div class="ci_color">
									<div class="main_c">
										<p class="c_title">Main Color</p>
										<ul>
											<li class="first">
												<div class="cmyk">
													<p><img src="../web/images/sub/main_c4.jpg" alt="메인색상"/></p>
													<dl>
														<dt>TERACO RED</dt>
														<dd>C0 M97 Y100 K3<br/>R214 G0 B28</dd>
													</dl>
												</div>
											</li>
											<li>
												<div class="cmyk">
													<p><img src="../web/images/sub/main_c5.jpg" alt="메인색상"/></p>
													<dl>
														<dt>TERACO GRAY</dt>
														<dd>C13 M9 Y10 K2<br/>R117 G179 B179</dd>
													</dl>
												</div>
											</li>
										</ul>
									</div>
									<div class="sub_c">
										<p class="c_title">Sub Color</p>
										<ul>
											<li>
												<div class="cmyk">
													<p><img src="../web/images/sub/sub_c6.jpg" alt="서브색상"/></p>
													<dl>
														<dt>TERACO DEEP RED</dt>
														<dd>C0 M97 Y89 K45<br/>R147 G39 B44</dd>
													</dl>
												</div>
											</li>
											<li>
												<div class="cmyk cmyk2">
													<p><img src="../web/images/sub/sub_c7.jpg" alt="서브색상"/></p>
													<dl>
														<dt>TERACO DEEP GRAY</dt>
														<dd>C0 M0 Y0 K40<br/>R147 G169 B172</dd>
													</dl>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="ci_box ci_box2 ci_box3">
							<div class="ci_l">
								<p><img src="../web/images/sub/title_31.png" alt="CI/BI 소개"/></p>
								<a href="../web/file/KR_Motors_bi_jpg.zip">JPG</a>
								<a href="../web/file/KR_Motors_bi_ai.zip">AI</a>
							</div>
							<div class="ci_r">
								<div class="ci_img">
									<img src="../web/images/sub/comp3_img04.jpg" alt="KR MOTORS"/>
								</div>
								<div class="ci_color">
									<div class="main_c">
										<p class="c_title">Main Color</p>
										<ul>
											<li class="first">
												<div class="cmyk">
													<p><img src="../web/images/sub/main_c6.jpg" alt="메인색상"/></p>
													<dl>
														<dt>KR MOTORS BLUE</dt>
														<dd>C100 M80 Y0 K0<br/>R0 G83 B155</dd>
													</dl>
												</div>
											</li>
											<li>
												<div class="cmyk">
													<p><img src="../web/images/sub/main_c7.jpg" alt="메인색상"/></p>
													<dl>
														<dt>KR MOTORS SILVER</dt>
														<dd>C5 M0 Y0 K30<br/>R170 G176 B177</dd>
													</dl>
												</div>
											</li>
										</ul>
									</div>
									<div class="sub_c">
										<p class="c_title">Sub Color</p>
										<ul>
											<li>
												<div class="cmyk">
													<p><img src="../web/images/sub/sub_c8.jpg" alt="서브색상"/></p>
													<dl>
														<dt>KR MOTORS GOLD</dt>
														<dd>C10 M30 Y60 K20<br/>R189 G150 B99</dd>
													</dl>
												</div>
											</li>
											<li>
												<div class="cmyk cmyk2">
													<p><img src="../web/images/sub/sub_c9.jpg" alt="서브색상"/></p>
													<dl>
														<dt>KR MOTORS GRAY</dt>
														<dd>C0 M0 Y0 K40<br/>R167 G169 B172</dd>
													</dl>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>



<? include $path_include_prefix."inc/user_footer.inc"?>
