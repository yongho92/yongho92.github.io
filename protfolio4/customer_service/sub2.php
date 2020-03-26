<?
    $path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $path = $prop_config["web.root"].$prop_config["bulletin.upload.dir"];

    $keySet = array("seq");
    $now = getToday();

	$parameters->set("menu1", "6");
    $parameters->set("menu2", "2");
?>
<? include $path_include_prefix."inc/user_header.inc"?>
<script>
function fw_domReady()
{
    $(".cont_box .copm1_box .customer2 ul li .contact_txt p").click(function(){
		if($(this).hasClass("on"))
		{
			$(".cont_box .copm1_box .customer2 ul li .contact_txt p").removeClass("on");
			$(".contact_map").slideUp(300);
			return;
		}
		$(".cont_box .copm1_box .customer2 ul li .contact_txt p").removeClass("on");
		$(".contact_map").slideUp(300);
		$(this).addClass("on");
		$(this).parents(".contact_txt").siblings(".contact_map").slideToggle(300);
	});
}
</script>

			<div class="comp1">
				<div class="cont_box">
					<div class="copm1_box">
						<div class="cont_01 curs_tit2">
							<h2><img src="../web/images/sub/title_72.png" alt="CONTACT"/></h2>
						</div>
						<div class="customer customer2">
							<ul>
								<li>
									<div class="contact_txt">
										<dl>
											<dt><img src="../web/images/sub/cus_txt01.png" alt="LVMC Holdings Rep. Office (Vietnam)"></dt>
											<dd>2F Central Park Office Building 2, 117 Nguyen Du, Phuong Ben Thanh, Quan 1, Ho Chi Minh City, Vietnam</dd>
										</dl>
										<p><span>지도보기</span></p>
									</div>
									<div class="contact_map">
									<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3919.533247853556!2d106.6890721!3d10.77041!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f3954b78d39%3A0x4b3aab5cf24afa17!2sCentral+Park+Building+2!5e0!3m2!1sko!2skr!4v1543543533948" width="1180" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
									</div>
								</li>
								<li>
									<div class="contact_txt">
										<dl>
											<dt><img src="../web/images/sub/cus_txt02.png" alt="Kolao Developing Co., Ltd. (Lao PDR)"></dt>
											<dd>P.O.Box : 8156, KOLAO Tower 1, 23 Singha Road, Nongbone Village, Saysettha District, Vientiane, Lao P.D.R</dd>
										</dl>
										<p><span>지도보기</span></p>
									</div>
									<div class="contact_map">
									<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3795.1212831779426!2d102.62287352064163!3d17.97309347456759!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x312467d0d2d05c1d%3A0xe45c164e5f110850!2sKOLAO+GROUP!5e0!3m2!1sko!2skr!4v1543459092132" width="1180" height="400" frameborder="0" style="border:0" allowfullscreen=""></iframe>
									</div>
								</li>
								<li>
									<div class="contact_txt">
										<dl>
											<dt><img src="../web/images/sub/cus_txt10.png" alt="Daehan Motors Co., Ltd. (Vietnam)"></dt>
											<dd>Automotive Mechanical Industrial Zone, Hoa Phu Communes, Cu Chi District, Ho Chi Minh City, Vietnam</dd>
										</dl>
										<p><span>지도보기</span></p>
									</div>
									<div class="contact_map">
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d125379.69389444671!2d106.58091927364742!3d10.878824015655598!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174d38ca33201ff%3A0x92b0e70d5cfb9216!2sC%C3%94NG+TY+TNHH+DAEHAN+MOTORS!5e0!3m2!1sko!2skr!4v1543459792702" width="1180" height="400" frameborder="0" style="border:0" allowfullscreen=""></iframe>
									</div>
								</li>
								<li>
									<div class="contact_txt">
										<dl>
											<dt><img src="../web/images/sub/cus_txt03.png" alt="LVMC Holdings (Myanmar)"></dt>
											<dd>No. 2/6, 2 Quarter, Corner of Yangon Insein rd. &amp; Thamine station rd., Mayangone Township, Yangon, Myanmar</dd>
										</dl>
										<p><span>지도보기</span></p>
									</div>
									<div class="contact_map">
									<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d477.28680532061225!2d96.1207128!3d16.861323!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c194f0ba380adf%3A0xc64526136707e5a2!2sHyundai+Motor+Myanmar!5e0!3m2!1sko!2skr!4v1543543569532" width="1180" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
									</div>
								</li>
								<li>
									<div class="contact_txt">
										<dl>
											<dt><img src="../web/images/sub/cus_txt04.png" alt="LVMC Holdings (Cambodia)"></dt>
											<dd>No. 15A-16A-17A, Koh Pich Street, Sangkat Tonlebassac, Khan Chamkamon, Phnom Penh, Cambodia</dd>
										</dl>
										<p><span>지도보기</span></p>
									</div>
									<div class="contact_map">
									<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3909.0108726095395!2d104.9335792!3d11.5510775!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x310956d32a52e50d%3A0x471d04e5b4e00f58!2sKR+Motors!5e0!3m2!1sko!2skr!4v1543543610299" width="1180" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
									</div>
								</li>
								<li>
									<div class="contact_txt">
										<dl>
											<dt><img src="../web/images/sub/cus_txt05.png" alt="Daehan-Dewan Motor Company (Pakistan)"></dt>
											<dd>7th Floor, Block A, Finance &amp; Trade Centre Shahrah-e-Faisal, Karachi-75350 Pakistan</dd>
										</dl>
										<p><span>지도보기</span></p>
									</div>
									<div class="contact_map">
									<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3620.1631558078766!2d67.05003225084795!3d24.858276583976696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3eb33e815705e4bb%3A0xf79405f3127b5652!2zRlRDIOu5jOuUqQ!5e0!3m2!1sko!2skr!4v1520401349398" width="1180" height="400" frameborder="0" style="border:0" allowfullscreen=""></iframe>
									</div>
								</li>
								<li>
									<div class="contact_txt">
										<dl>
											<dt><img src="../web/images/sub/cus_txt09.png" alt="Chongqing Kolao-Yuan R&amp;D Co., Ltd"></dt>
											<dd>No. 47 Ganghui Rd. ShuangFengQiao Street, Yubei District, ChongQing, China</dd>
										</dl>
										<p><span>지도보기</span></p>
									</div>
									<div class="contact_map">
									<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d866.1296489073484!2d106.63231282922783!3d29.733700998874784!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x36932eabb8057e65%3A0x21e552da7274f7c6!2s47+Gang+Hui+Lu%2C+Yubei+Qu%2C+Chongqing+Shi%2C+%EC%A4%91%EA%B5%AD+401120!5e0!3m2!1sko!2skr!4v1543562818023" width="1180" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
									</div>
								</li>
								<li>
									<div class="contact_txt">
										<dl>
											<dt><img src="../web/images/sub/cus_txt06.png" alt="KR Motors"></dt>
											<dd>28, Wanam-ro, Seongsan-gu, Changwon-si, Gyeongsangnam-do, Korea (Postcode: 51573)</dd>
										</dl>
										<p><span>지도보기</span></p>
									</div>
									<div class="contact_map">
									<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13040.246017946827!2d128.65275078072676!3d35.204936933381454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568cd37a578a7ad%3A0xa1546eabe294f977!2z6rK97IOB64Ko64-EIOywveybkOyLnCDshLHsgrDqtawg7ISx7IKw64-ZIDc3!5e0!3m2!1sko!2skr!4v1520401299717" width="1180" height="400" frameborder="0" style="border:0" allowfullscreen=""></iframe>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>


<? include $path_include_prefix."inc/user_footer.inc"?>
