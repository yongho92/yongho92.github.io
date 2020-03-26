<?
	$path_depth = 1;
	for($i=0 ; $i<$path_depth ; $i++) $path_include_prefix .= "../";
	include $path_include_prefix."inc/init.inc";

    $keySet = array("seq", "cond", "str", "board_seq", "category_text", "num", "date1", "date2" );

    $primaryKeys = array("seq");
    $now = getToday2();
    $act = $parameters->print2("act");

    $parameters->set("sc_board_seq", nvl($parameters->print2("sc_board_seq"),"1"));


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
    $parameters->set("pageSize", "9");

    $list01 = $manager->getGeneralPage($parameters);

    $parameters->set("menu1", "4");
    $parameters->set("menu2", "2");

?>
<?include $path_include_prefix."inc/user_header.inc";?>

<script>

function fw_domReady(){
    var frm = document.frm;

     $('.ist_list ul li').mouseenter(function(){
				$(this).children('.ist_txt').css('display','block');
			});
			$('.ist_list ul li').mouseleave(function(){
				$('.ist_txt').css('display','none');
			});

        $("#btnList").click(function(){
            $("#pk_seq").val("");
            if(validateList(frm)) frm.submitForm3(window, "instagram.php");
    });

}

function goView(seq){
    $("#pk_seq").val(seq);
    frm.submitForm3(window, "instagram_view.php");
}

function fw_onenterdown1(obj)
{
    var frm = document.frm;
    if(obj == frm.tmp_str)
    {
        obj.blur();
        $("#btnList").click();
    }
}

function goList(){
    $("#btnList").click();
}

function submitPage(page){
    $("#act").val("");
    $("#page").val(page);
    frm.submitForm3(window, "news01.php");
}

function validateList(frm){
    $("#page").val("1");

    <?for($i=0 ; $i<count($keySet) ; $i++){?>
    if(document.frm["tmp_<?=$keySet[$i]?>"] != null) $("#sc_<?=$keySet[$i]?>").val($("#tmp_<?=$keySet[$i]?>").val());
    <?}?>
    return true;
}


// 인스타 그램 ajax 호출
jQuery(function($) {

        //3146665394

        var tocken = "3146665394.a468b6d.660a9fbb94bc4bd1bcae39ff0ba5a5c4";

        //3146665394.a468b6d.660a9fbb94bc4bd1bcae39ff0ba5a5c4

        var count = "9";
				console.log("https://api.instagram.com/v1/users/self/media/recent/?access_token=" + tocken + "&count=" + count);
        $.ajax({
            type: "GET",
            dataType: "jsonp",
            cache: false,
            url: "https://api.instagram.com/v1/users/self/media/recent/?access_token=" + tocken + "&count=" + count,
            success: function(response) {
			//alert(response);

            //window.open("https://api.instagram.com/v1/users/self/media/recent/?access_token=" + tocken + "&count=" + count);

			 if ( response.data.length > 0 ) {
                  for(var i = 0; i < response.data.length; i++) {
					  var fst_class_name = ""
					  if ( i == 0 ) fst_class_name = "class='marx'";
					  else if( i == 1) fst_class_name = "class=''";
                      else if( i == 2) fst_class_name = "class='marx2'";

                      else if( i == 3) fst_class_name = "class='marx marx3'";
                      else if( i == 4) fst_class_name = "class='marx2'";
                      else if( i == 5) fst_class_name = "class=''";

                      else if( i == 6) fst_class_name = "class='marx marx2'";
                      else if( i == 7) fst_class_name = "class=''";
                      else if( i == 8) fst_class_name = "class='none'";

                       var insta = '<li '+fst_class_name+' onclick="window.open("' + response.data[i].link + '")">';
                       //insta += "<a target='_blank' href='" + response.data[i].link + "'>";
                       insta += '<img src="' + response.data[i].images.standard_resolution.url + '" style="width:324px; height:323px;">';
                       insta += '<div class="ist_txt">';
                       insta += '<p><span>' ;

                       for(var z = 0; z < 6; z++)
                       {
                           if(response.data[i].tags[z] == undefined)
                           {
                           }
                           else
                           {
                                insta += ' #' + response.data[i].tags[z] + " ";
                           }
                       }

                       insta += '</span></p>';
					   insta += '<a target="_blank" href="' + response.data[i].link + '"><img src="../web/images/sub/news/ist_icon.png" alt=""/></a>';
    				   insta += '</div>';
                       insta += "</li>";

					   $("#instaUL").append(insta);

                  }// end for

                  $('.ist_list ul li').mouseenter(function(){
                        $(this).children('.ist_txt').css('display','block');
                    });
                    $('.ist_list ul li').mouseleave(function(){
                        $('.ist_txt').css('display','none');
                    });

             }// end if




            }// end success
           });
   });

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
		<div class="sub_title sub_title_ns">
			<dl>
				<dt>마을소식</dt>
				<dd>발산마을의 다양한 소식</dd>
			</dl>
		</div>
		<div class="board_ser02">
			<span class="board_all2" id="boa_set2_text">홍보자료</span>
			<label for="boa_set2" class="sor_hide2">홍보자료</label>
			<select id="boa_set2" name="tmp_searchCnd" onchange="cnd_box();">
			<option value="news01.php">마을문화</option>
			<option value="instagram.php">홍보자료</option>
			</select>
		</div>
		<div class="exp_ser_m">
			<div class="board_ser10 board_marx">
				<span class="board_all10" id="boa_set10_text">인스타그램</span>
				<label for="boa_set10" class="sor_hide10">인스타그램</label>
				<select id="boa_set10" name="tmp_searchCnd2" onchange="cnd_box2();">
				<option value="instagram.php">인스타그램</option>
				<option value="media.php">홍보동영상</option>
				<option value="report.php">언론보도</option>
				</select>
			</div>
		</div>
		<div class="sub_cont">
			<div class="ns_cont nb_cont">
				<div class="ns_tab nb_tab">
					<ul>
						<li><a href="news01.php"><span>마을 문화</span></a></li>
						<li><a href="instagram.php" class="on"><span>홍보자료</span></a></li>
					</ul>
				</div>
				<div class="exp_ser">
					<div class="not_tab">
						<ul>
							<li class="bg"><a href="instagram.php" class="on">인스타그램</a></li>
							<li class="bg"><a href="media.php">홍보동영상</a></li>
							<li><a href="report.php">언론보도</a></li>
						</ul>
					</div>
				</div>
				<div class="ist_list">
					<ul data-delay="0" id="instaUL">

					</ul>
				</div>
			</div>
		</div>
	</div>


<?include $path_include_prefix."inc/user_footer.inc";?>
