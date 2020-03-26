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

    $sql = "select * from village2_list where seq='".$parameters->print2("pk_seq")."' \n";
    $parameters->set("query", $sql);
    $parameters->set("params", null);
    $single01 = $exec->getGeneralSingle($parameters);


    if($parameters->print2("sc_category") == "1") $categoryName = "마을 체험거리";
    if($parameters->print2("sc_category") == "2") $categoryName = "마을 먹거리";
    if($parameters->print2("sc_category") == "3") $categoryName = "마을 쉴거리";
    if($parameters->print2("sc_category") == "4") $categoryName = "마을 볼거리";

    $parameters->set("menu1", "3");
    $parameters->set("menu2", "1");
?>
<?include $path_include_prefix."inc/user_header.inc";?>

<script>

function fw_domReady(){
    var frm = document.frm;

			$('img[usemap]').rwdImageMaps();

	$("#btnList").click(function(){
            $("#pk_seq").val("");
            if(validateList(frm)) frm.submitForm3(window, "village_nb.php");
    });

}

function validateList(frm){
    $("#page").val("1");

    <?for($i=0 ; $i<count($keySet) ; $i++){?>
    if(document.frm["tmp_<?=$keySet[$i]?>"] != null) $("#sc_<?=$keySet[$i]?>").val($("#tmp_<?=$keySet[$i]?>").val());
    <?}?>
    return true;
}
</script>


	<div class="contents">
		<div class="sub_title sub_title_nb">
			<dl>
				<dt>마을이웃</dt>
				<dd>마을의 일상이 문화가 되는 마을</dd>
			</dl>
		</div>
		<div class="sub_cont">
			<div class="nb_view">
				<div class="view_info">
					<h2><span><?=$categoryName?></span></h2>
					<dl>
						<dt><?=$single01["name"]?></dt>
						<dd><?=$single01["comment"]?></dd>
					</dl>
					<p><?=$single01["content"]?></p>
					<div class="info">
						<ul class="">
							<li><span>공간번호</span>  <?=$single01["num"]?></li>
							<li><span>이용시간</span>  <?=$single01["time2"]?></li>
						</ul>
						<ul class="info_2">
							<li><span>위치</span> <?=$single01["area"]?></li>
							<li><span>문의</span> <?=$single01["email"]?></li>
						</ul>
					</div>
					<div class="view_img">
						<ul class="bxslider view_box">
<?
    if(strlen($single01["img1"]) > 0)
    {
?>
							<li><img src="<?=$webRoot?>upload/etc/<?=$single01["img1"]?>" alt="표류이미지"/></li>
<?
    }
?>

<?
    if(strlen($single01["img2"]) > 0)
    {
?>
							<li><img src="<?=$webRoot?>upload/etc/<?=$single01["img2"]?>" alt="표류이미지"/></li>
<?
    }
?>

<?
    if(strlen($single01["img3"]) > 0)
    {
?>
							<li><img src="<?=$webRoot?>upload/etc/<?=$single01["img3"]?>" alt="표류이미지"/></li>
<?
    }
?>

<?
    if(strlen($single01["img4"]) > 0)
    {
?>
							<li><img src="<?=$webRoot?>upload/etc/<?=$single01["img4"]?>" alt="표류이미지"/></li>
<?
    }
?>

<?
    if(strlen($single01["img5"]) > 0)
    {
?>
							<li><img src="<?=$webRoot?>upload/etc/<?=$single01["img5"]?>" alt="표류이미지"/></li>
<?
    }
?>

						</ul>
<!-- 						<div class="view_btn">
							<a href="javascript:void(0);" class="prev rol_main_prev"><img src="../web/images/sub/village_walk/view_left.png" alt="왼쪽"></a>
							<a href="javascript:void(0);" class="next rol_main_next"><img src="../web/images/sub/village_walk/view_right.png" alt="오른쪽"></a>
						</div>
						<div class="view_list">
							<ul class="rol_img">
								<li class="select" id="rol_btn_1"><a href="javascript:main_visual_btn('1')">1번째 버튼</a></li>
								<li class="" id="rol_btn_2"><a href="javascript:main_visual_btn('2')">2번째 버튼</a></li>
								<li class="" id="rol_btn_3"><a href="javascript:main_visual_btn('3')">3번째 버튼</a></li>
							</ul>
						</div> -->
					</div>
				</div>

				<script>
					$(function(){
					  $('.bxslider').bxSlider({
						mode: 'fade'
					  });
					});
				</script>



				<div class="view_map">


<?
    if(strlen($single01["img6"]) > 0)
    {
?>

					<h2>위치정보</h2>
					<div class="map_img_1022">


						<img src="<?=$webRoot?>upload/etc/<?=$single01["img6"]?>" alt="마을지도"/>

<?
    if(strlen($single01["img7"]) > 0)
    {
?>
						<div class="map_ex2">
							<a href="<?=$webRoot?>upload/etc/<?=$single01["img6"]?>" target="_blank"><img src="../web/images/sub/village_walk/map_ex.jpg" alt="지도확대"/></a>
						</div>
<?
    }
?>

					</div>
<?
    }
?>

					<div class="list_btn">
						<a href="#btnList" id="btnList">목록</a>
					</div>
				</div>
			</div>
		</div>
	</div>
  <?include $path_include_prefix."inc/user_footer.inc";?>