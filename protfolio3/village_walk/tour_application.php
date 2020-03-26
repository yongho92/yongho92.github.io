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
        "date1",
        "date2"
    );

    $primaryKeys = array("seq");
    $now = getToday2();
    $act = $parameters->print2("act");
    $orderNumArr = split($separator, $parameters->print2("orderNum"));
	$parameters->set("sc_category", nvl($parameters->print2("sc_category"),"1"));

    if($act == "save")
    {

        $path = $propConfig["install.path"]."/".$propConfig["etc.upload.dir"];

        //echo $path;
        // new
        for($i=0 ; $i<=7 ; $i++)
        {
            $files[$i] = $parameters->print2("old_img".$i);

            $f = $_FILES["img".$i];
            if(is_uploaded_file($f["tmp_name"]))
            {
                $extend = getExtend(strtolower($f["name"]));

                $files[$i] = "village2_img_".$i."_".date("YmdHis").".".$extend;
                copy($f["tmp_name"], $path."/".$files[$i]);
            }
        }

        if(strlen($parameters->print2("pk_seq")) == 0)
        {
            $sql = "
                INSERT INTO tour_application (
                    name, category, date2, time2, company,
                    email, ip, regi_date, num2, content,
                    admin_memo, mobile, program)
                values(
                    ?, ?, ?, ?, ?,
                    ?, ?, ?, ?, ?,
                    ?, ?, ?
                    )
            ";
            $params = array(
                $parameters->print2("name"),
                $parameters->print2("category"),
                $parameters->print2("date2"),
                $parameters->print2("time2"),
                $parameters->print2("company"),

                $parameters->print2("email"),
                getRemoteAddr(),
                getToday(),
                $parameters->print2("num2"),
                $parameters->print2("content"),

                $parameters->print2("admin_memo"),
                $parameters->print2("mobile"),
                $parameters->print2("program")
            );

            $manager->executeUpdate($sql, $params);

            $parameters->set("pk_seq", "");
        }
        else
        {
            $sql = "
                UPDATE tour_application SET
                    name=?,
                    category=?,
                    date2=?,
                    time2=?,
                    company=?,

                    email=?,
                    num2=?,
                    content=?,
                    program=?,
                    mobile=?,
                    admin_memo=?

                WHERE seq=?
            ";

            $params = array(
                $parameters->print2("name"),
                $parameters->print2("category"),
                $parameters->print2("date2"),
                $parameters->print2("time2"),
                $parameters->print2("company"),

                $parameters->print2("email"),
                $parameters->print2("num2"),
                $parameters->print2("content"),
                $parameters->print2("program"),
                $parameters->print2("mobile"),
                $parameters->print2("admin_memo"),

                $parameters->print2("pk_seq")
            );
            $manager->executeUpdate($sql, $params);
        }

        sendMsg("저장하였습니다.");
        $exec->commit();
        $parameters->set("pgmId", "tour_application.php");
        include $path_include_prefix."inc/redirect.inc";

        exit;
    }


    $parameters->set("menu1", "2");
    $parameters->set("menu2", "3");

?>
<?include $path_include_prefix."inc/user_header.inc";?>


<script>
doSetMailCode = function(__cd){
		if(__cd == ""){
			$('#email2').attr("readonly", false);
		}else{
			$('#email2').attr("readonly", true);
		}
		$('#email2').val(__cd);
	}


function fw_domReady(){
    var frm = document.frm;

    $("#btnSave").click(function(){

        if(document.frm.chk.checked == false)
        {
            alert("개인정보 제공에 동의하셔야 신청이 가능합니다.");
            return;
        }

        if(!frm.validate()) return;

         var aa = getCheckBoxValue(document.frm.program_tmp);

        document.frm.program.value = joinArray(aa, window.separator);

        if(document.frm.program.value == "")
        {
            alert("참가 프로그램을 선택해 주세요.");
            return;
        }

        if(!confirm("저장하시겠습니까?")) return;

        document.frm.email.value = document.frm.email1.value + "@" + document.frm.email2.value;
        document.frm.mobile.value= document.frm.mobile1.value + "-" + document.frm.mobile2.value + "-" + document.frm.mobile3.value;

        frm.submitForm2("_self", "tour_application.php", "save");
        showLoadingLayer(this);

    });

    //$("#date2").datepicker(getDatepickerOption("app2"));

    $('#date2').datepicker({changeMonth: true, changeYear: true, showButtonPanel:true,yearRange: 'c:c+2',constrainInput: true, maxDate: '+1y', beforeShowDay: noWeekendsOrHolidays});
}

function noWeekendsOrHolidays(date) {

    if (date < new Date())
    {
        return [false];
    }
    else
    {
        var noWeekend = jQuery.datepicker.noWeekends(date);
        return noWeekend[0] ? [true] : noWeekend;
    }

}

function noBefore(date){
    if (date < new Date())
    return [false];
    return [true];
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

<input type="hidden" name="program" id="program" value="" />
<input type="hidden" name="mobile" id="mobile" value="" />
<input type="hidden" name="email" id="email" value="" />


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
				<p class="tour_tit">마을투어는 매일 2타임으로 진행합니다.<span>각 프로그램을 따로 혹은 같이 신청할 수 있습니다.</span></p>
				<div class="tour_info">
					<ul>
						<li><strong>오전투어  </strong>10:30 ~ 11:30 (최대 20인)</li>
						<li><strong>오후투어  </strong>15:00 ~ 16:00 (최대 20인)</li>
						<li class="point">※ 마을단체투어 및 집밥체험 예약은 희망일 2일전~당일취소는 전액환불 불가합니다.</li>
					</ul>
				</div>
				<div class="per_data">
					<div class="per_d_box">
						<dl>
							<dt>1. 개인정보의 수집, 이용, 목적</dt>
							<dd>- 본인 확인을 위해 최소한의 개인정보가 제공되며 투어예약, 투어시간 변경, 취소, 영수증발급을 위한 목적등 기타 원활한 양질의 서비스 제공을 위해 사용됩니다.</dd>
							<dd>- 정확한 정보를 제공해주셔야 합니다. 부정확한 정보로 예약사고 발생시 공공미술프리즘에서는책임지지 않습니다.</dd>
						</dl>
						<dl>
							<dt>2. 수집, 이용하려는 개인정보의 항목</dt>
							<dd>- 수집항목 : 이름, 전화번호, 이메일</dd>
						</dl>
						<dl>
							<dt>3. 개인정보의 보유 및 이용기간</dt>
							<dd>- 보유기간 : 60일간</dd>
							<dd>- 제공받은 개인정보는 예약접수 및 투어안내에 이용될 목적이며 투어가 끝난후 보유기간 이후에는 지체없이 파기됩니다.</dd>
						</dl>
						<dl>
							<dt>4. 위의 개인정보 수집·이용에 대한 동의를 거부할 권리가 있습니다. </dt>
							<dd>그러나 동의를 거부할 경우 청춘발산마을 서비스 이용에 제한을 받을 수 있습니다.</dd>
						</dl>
					</div>
					<p>
						<input type="checkbox" id="chk" name="chk"/>
						<label for="chk">개인정보 제공에 동의합니다.</label>
					</p>
				</div>
				<div class="per_ipt">
					<h3>개인정보 입력</h3>
					<p class="point_tour">투어신청을 하시려면 아래의 필수항목을 입력하신 후 신청하기 버튼을 클릭해 주시기 바랍니다.</p>
					<table summary="개인정보 입력"  class="web_app">
						<caption>개인정보 입력</caption>
						<tbody>
							<tr>
								<td colspan="2" class="app_grop">
									<div class="app_box">
										<table>
											<tbody>
												<tr>
													<td class="title">
														투어날짜<span>*</span>
													</td>
													<td>
														<label class="labelx" for="day">투어날짜</label>
														<input type="text" id="date2" class="per_i calendar" name="date2" required msg="투어날짜를 입력하세요." />
													</td>
												</tr>
												<tr>
													<td class="title">기관<span>*</span></td>
													<td>
														<label class="labelx" for="comp">기관</label>
														<input type="text" id="company" class="per_i" name="company" required msg="기관을 입력하세요."/>
													</td>
												</tr>
												<tr>
													<td class="title">휴대폰<span>*</span></td>
													<td class="phont_p">
														<select id="boa_set5" name="mobile1" id="mobile1" class="sel_1" required msg="휴대폰 앞자리를 선택하세요.">
														<option value="010">010</option>
														<option value="011">011</option>
                                                        <option value="016">016</option>
                                                        <option value="018">018</option>
                                                        <option value="070">070</option>
														</select>
														<span>-</span>
														<label class="labelx" for="phone">휴대폰</label>
														<input type="text" id="mobile2" class="phone" name="mobile2" required msg="휴대폰 번호를 입력하세요."/>
														<span>-</span>
														<label class="labelx" for="phone2">휴대폰</label>
														<input type="text" id="mobile3" class="phone" name="mobile3" required msg="휴대폰 번호를 입력하세요."/>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="app_box">
										<table>
											<tbody>
												<tr>
													<td class="title">투어시간<span>*</span></td>
													<td>
														<select id="boa_set4" name="time2"  class="sel_2" required msg="투어시간을 선택하세요.">
														<option value="오전투어">오전투어</option>
														<option value="오후투어">오후투어</option>
														</select>
													</td>
												</tr>
												<tr>
													<td class="title">이름<span>*</span></td>
													<td>
														<label class="labelx" for="name">이름</label>
														<input type="text" id="name" class="per_i" name="name" placeholder="작성 예) 홍길동" required msg="이름을 입력하세요."/>
													</td>
												</tr>
												<tr>
													<td class="title">이메일<span>*</span></td>
													<td>
														<label class="labelx" for="email1">이메일</label>
														<input type="text" id="email1" class="email" name="email1" required msg="이메일을 입력하세요."/>
														<span>@</span>
														<label class="labelx" for="email2">이메일</label>
														<input type="text" id="email2" class="email" name="email2" required msg="이메일을 입력하세요."/>
														<select id="boa_set6" name="mailcd" onchange="doSetMailCode(this.value)"  class="sel_1">
														<option value="">직접입력</option>
													<option value="chol.com">chol.com</option>
													<option value="dreamwiz.com">dreamwiz.com</option>
													<option value="empal.com">empal.com</option>
													<option value="freechal.com">freechal.com</option>
													<option value="gmail.com">gmail.com</option>
													<option value="hanafos.com">hanafos.com</option>
													<option value="hanmail.net">hanmail.net</option>
													<option value="hanmir.com">hanmir.com</option>
													<option value="hotmail.com">hotmail.com</option>
													<option value="korea.com">korea.com</option>
													<option value="lycos.com">lycos.com</option>
													<option value="nate.com">nate.com</option>
													<option value="naver.com">naver.com</option>
													<option value="netian.com">netian.com</option>
													<option value="paran.com">paran.com</option>
													<option value="yahoo.co.kr">yahoo.co.kr</option>
													<option value="yahoo.com">yahoo.com</option>

														</select>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td class="title">프로그램<span>*</span></td>
								<td colspan="">
									<input type="checkbox" id="program1" class="per_c" name="program_tmp" value="마을이웃 투어" <?=$parameters->print2("sc_category") == "1" ? "checked" : ""?>/>
									<label class="check" for="program1">마을이웃 투어</label>
									<input type="checkbox" id="program2" class="per_c" name="program_tmp" value="마을해설사 투어" <?=$parameters->print2("sc_category") == "2" ? "checked" : ""?>/>
									<label class="check" for="program2">마을해설사 투어</label>
									<input type="checkbox" id="program3" class="per_c" name="program_tmp" value="주민 집밥 투어"  <?=$parameters->print2("sc_category") == "3" ? "checked" : ""?>/>
									<label class="check" for="program3">주민 집밥 투어</label>
								</td>
							</tr>
							<tr>
								<td class="title">인원수<span>*</span></td>
								<td colspan="">
									<select id="boa_set7" name="num2" class="sel_1" required msg="인원수를 선택하세요.">
									<?
    for($i=1 ; $i<=20 ; $i++)
    {
?>
<option value="<?=$i?>" <?=$single01["num2"] == $i ? "selected" : ""?>><?=$i?>명</option>
<?
    }
?>
									</select>
									<span class="group">※ 20명이상 단체는 개별 문의 부탁드립니다.</span>
								</td>
							</tr>
							<tr>
								<td class="title">기타 요청사항<span>*</span></td>
								<td colspan="" class="texta">
									<label for="" class="labelx">기타 요청사항</label>
									<textarea rows="10" cols="100" style="resize: none; border:1px solid #dadada;" name="content" class="texta" required msg="기타 요청사항을 입력하세요."></textarea>
								</td>
							</tr>
						</tbody>
					</table>

					<div class="tour_app_btn">
						<a href="tour_list.php" class="btn_x">취소하기</a>
						<a href="#save" id="btnSave" class="btn_o">신청하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
<?include $path_include_prefix."inc/user_footer.inc";?>