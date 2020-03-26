var frm = null;
$(function(){
    var ret = _callAlertBox();
    if (!ret){
        history.back();
        return;
    }
    frm - document.forms["frm"];

    $.datepicker.regional['ko'] = {
        closeText: '닫기',
        prevText: '이전달',
        nextText: '다음달',
        currenText:  '이번달',
        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        dayNames: ['일','월','화','수','목','금','토'],
        dayNamesShort: ['일','월','화','수','목','금','토'],
        dayNamesMin: ['일','월','화','수','목','금','토'],
        weekHeader: 'Wk',
        dateFormat : 'yy-mm-dd',
        firstDay: 0,
        isRTL: false,
        showMonthAfterYear: false,
        yearSuffix: '년' };
    $.datepicker.setDefaults($.datepicker.regional['ko']);


    $(".c_box img").each(function(){
        var w = $(this).width();
        if(w > 700){
            $(this).width(700);
            $(this).css("cursor","pointer");
            $(this).click(function(){
                openPopup2(window.documentRoot + "common/image_pop.php?src=" + $(this),attr("src"), "image_preview", 100, 100, 50, 10, "yes", "yes");
            });
        }
    });

    $(".line_detail img").each(function(){
        var w = $(this).width();
        if (w > 500){
            $(this).width(500);
            $(this).css("cursor","pointer");
            $(this).click(function(){
                openPopup2(window.documentRoot + "common/image_pop.php?src=" + $(this).attr("src"), "image_preview", 100, 100, 50, 10, "yes", "yes");
            });
        }
    });

    _formInit();

    if(window.fw_domReady) window.fw_domReady();
    if(window.fw_domReady2) window.fw_domReady2();
    if(window.fw_domReady3) window.fw_domReady3();
});

function getDatePickerOption(type){

    var ret = {
        dateFormat : "yy-mm-dd",
        showOn : 'both',
        buttonImage: window.documentRoot + 'web/images/admin/btn_calender.gif',
        buttonImageOnly: true,
        buttonText: '날짜선택',
        closeText: '닫기',
        showButtonPanel: true,
        showAnim : "fadeIn"
    };
    if (type == "birthday"){
        ret.changeMonth = true;
        ret.changeYear = true;
        ret.maxDate = new Date();    
    }

    return ret;
}
$(window).load(function(){
    if (window.fw_init != null) fw_init();
});

function _preview_img(){
    var obj = null;

    if(!jQuery.browser.msie)
    {
        obj = event.currentTarget;
    }
    else
    {
        var event = window.event;
        obj = event.srcElement;
    }

    var w = obj.w +20;
    var h = obj.h;
    var src = obj.src;
    if(src.indexOf("http://") == 0 && src.indexOf("/") >=0)
    {
        src = remove(src, "http://");
        src = src.substring(src.indexOf("/"));
    }

    if( w > 800) w = 800;
    if( h > 600) h = 600;
    var w = openPopup2(window.documentRoot + "common/image_pop.php?src=" + src, "img_preview", w, h, 30, 0, "yes", "yes");
}

function initCombo(obj)
{
    while(obj.options.length > 0)
    {
        obj.options[obj.options.length-1] = null;
    }
}

function nvl(o, rep){
    if(o == null) return rep;
    return o;
}

function _formInit(){
    for(var z=0 ; z<document.forms.length; z++){
        var form = document.forms[z];

        form.processParameters = _processParameters;
        form.setParameter = _setParameter;
        form.validate = _validate;
        form.isValidate = _validate;
        form.submitForm = _submitForm;
        form.submitForm2 = _submitForm2;
        form.submitForm3 = _submitForm3;
        form.setMultipart =_setMultipart;

        for (var i=0; i<form.elements.length ;i++ ){
            obj = form.elements[i];

            obj.setRequired = function(isRequired){
                if(isRequired) this.setAttribute("requrired","true");
                else this.removeAttribute("required");
            };

            if(obj.getAttribute("required") != null && nvl(obj.title, "") !="") obj.title = "필수입력사항입니다.";

            if(obj.tagName == "INPUT")
            {
                obj.setAttribute('autocomlpete','off');

                if(obj.type.toUpperCase() == "TEXT")
                {
                    obj.remove = _remove;
                    obj.split = _split;
                    obj.replace = _replace;

                    if(obj.disabled) obj.style.backgroundColor = "#ebebeb";

                    if(obj.getAttribute("RIGHT") != null) obj.style.textAlign = "right";
                    if(obj.getAttribute("CENTER") != null) obj.style.textAlign = "center";
                    if(obj.getAttribute("MONEY") != null){
                        obj.makeComma = _makeComma;

                        obj.style.textAlign = "right";
                        obj.remove(",");
                        obj.makeComma();
                        if(obj.value == "") obj.value = "0";
                    }
                    if(obj.getAttribute("MONEY") != null || obj.getAttribute("NUMBER")!= null|| obj.getAttribute("NUMBER2")!= null || obj.getAttribute("DATE")!= null){
                        obj.style.imeMode = "disabled";
                        if(obj.getAttribute("DATE") != null){
                            obj.title = "Input Fotmat 19690220";
                            obj.maxLength = 10;
                        }
                    }
                    if(obj.getAttribute("ENG") != null){
                        obj.style.imeMode = "disabled";
                    }

                    if(obj.getAttribute("EMAIL") != null) obj.checkTextfieldForEmail = _checkTextfieldForEmail;
                    //
                }
                if(obj.type.toUpperCase() == "PASSWORD"){
                //
                }
                
                $(obj).focus(_onfocus);
                $(obj).blur(_onblur);
                $(obj).keydown(_onkeydown);
                $(obj).focusout(_onfocusout);
            }
            else if(obj.tagName == "SELECT")
            {
                if(obj.disabled) obj.style.backgroundColor = "#ebebeb";

                $(obj).focus(_onfocus);
                $(obj).blur(_onblur);
                $(obj).keydown(_onkeydown);

            }
            else if(obj.tagName == "TEXTAREA")
            {
                if(obj.disabled) obj.style.backgroundColor = "#ebebeb"

                $(obj).focus(_onfocus);
                $(obj).blur(_onblur);
            }
        }
    }
}

function _setParameter(name, value){
    if($("#"+name).get(0) == null)$(this).append('<input type="hidden" id="' + name + '"name="' + name + '"value="" />\n');
    $("#" + name).val(value);
}

function _processParameters(){
    var cParams = "";
    for(var i=0 ; i<$("*[name*='tmp_']").size(); i++){
        var o = $("*[name*='tmp_']").get(i);
        if(cParams.indexOf(o.name) >=0) continue;

        var value = o.value;
        if($(o).attr("type") == "radio") value = nvl(getRadioValue(frm[o.name]),"");
        var name2 = o.name.substring(4);

        if($("#sc_"+name2).get(0) ==null) $(this).append('<input type="hidden" id="sc_' + name2 + '"name="sc_' + name2 + '"value=""/>\n');
        $("#sc_" + name2).val(value);
        cParams += o.name + ",";
    }
    $("#page").val(1);
}

function _validate(typeName){
    var obj;
    var value;
    var is_required;
    var highlight_color = "";

    if(typeName == null) typeName = "";
    for(var i=0 ; i<frm.elements.length; i++)
    {
        obj = frm.elements[i];
        if((obj.tagName == "INPUT" && (obj.type.toUpperCase() == "TEXT" || obj.type.toUpperCase() == "PASSWORD")) || obj.tagName == "TEXTAREA" || obj.tagName == "SELECT"){
            //
        }
    }

    for(var i=0; i<frm.elements.length; i++){
        obj = frm.elements[i];
        value = obj.value;
        var required = nvl(obj.getAttribute("REQUIRED"),"");

        if(required != null) is_required = true;
        else is_required = false;

        if(!is_required) continue;

        if(obj.getAttribute("REQUIRED") == null || required != typeName) continue;

        var msg = $.trim(obj.getAttribute("MSG"));
        if(msg == "") msg = "필수 항목입니다.";

        var minLength = obj.getAttribute("MINLENGTH");

        if(obj.tagName == "INPUT"){
            if(obj.getAttribute("EMAIL") != null){
                if(value == ""){
                    alert(msg);
                    obj.focus();
                    return false;
                }

                if(!obj.checkTextfieldForEmail()){
                    alert("이메일 형식에 맞지 않습니다.");
                    obj.focus();

                    return false;
                }
            }
            
            if(obj.getAttribute("DATE") != null){
                var str = remove(value, "-");
                if(str.length != 8){
                    alert("YYYY-MM-DD 형식으로 입력하세요.\n 예) 2005-05-25");
                    obj.focus();

                    return false;
                }
            }

            if(obj.getAttribute("MONEY") != null){
                if(value == "0"){
                    alert(msg);
                    obj.focus();

                    return false;
                }
            }
            if(obj.type.toUpperCase() == "TEXT" || obj.type.toUpperCase() == "PASSWORD"){
                if($.trim(value) == ""){
                    alert(msg);
                    obj.focus();

                    return false;
                }
                if(minLength != null){
                    if($.trim(value).length < minLength){
                        alert("취소" + minLength + "글자 이상 입력하셔야 합니다.");
                        obj.focus();

                        return false;
                    }
                }
                obj.value = $.trim(value);
            }
            else if(obj.type.toUpperCase() == "FILE"){
                var value = obj.value;

                if(value == ""){
                    if(obj.getAttribute("OLD") == null && frm["old_" + obj.name] != null) value = frm["old_"+obj.name].value
                    else if($.trim(obj.getAttribute("OLD"),"") != "") value = obj.getAttribute("OLD");
                }

                if(value == ""){
                    alert(msg);
                    obj.focus();
                    return false;
                }
            }
            else if(obj.type.toUpperCase() == "RADIO")
            {
                obj = frm[obj.name];
                var ret = getRadioValue(obj);
                if(ref == null){
                    msg = $.trim(obj[0].getAttribute("MSG"));
                    if(msg == "") msg = "필수 항목입니다.";

                    alert(msg);
                    return false;
                }
            }
        }
        else if(obj.tagName == "SELECT"){
            if(obj.selectedIndex < 0){
                alert(msg);
                obj.focus();

                return false;
            }

            value = obj[obj.selectedIndex].value;
            if(value == "" ){
                alert(msg);
                obj.focus();

                return false;
            }
        }
        else if(obj.tagName == "TEXTAREA"){
            if($.trim(value) == ""){
                alert(msg);
                obj.focus();

                return false;
            }

            if(minLength != null){
                if($.trim(value).length < minLength){
                    alert("최소" + minLength + "글자 이상 입력하셔야 합니다.");
                    obj.focus();
                    return false;
                }
            }
        }
    }
    return true;
}
function _callAlertBox(){
    var msg = "";
    if(document.getElementById("message") != null) msg = document.getElementById("message").innerHTML;
    if(msg != "")
    {
        alert(msg);
        return false;
    }
    return true;
}

function _submitForm3(winObj, action){
    var frm = document.frm;
    if(this.submit != null) frm = this;
    
    if(winObj == null) winObj = window;

    var str = "";
    var value = "";
    var skipObjNames = new Array();
    for(var i=0; i<frm.elements.length; i++)
    {
        var obj = frm.elements[i];
        if(obj.disabled){
            obj.disabled = false;
            obj.disabled2 = true;
        }

        if(obj.tagName == "INPUT"){
            if(obj.getAttribute("MONEY") != null) obj.value = remove(obj.value, ",");
        }

        if(obj.name == null || (obj.name.indexOf("sc_") != 0 && obj.name.indexOf("pk_") !=0)) continue;
        if(skipObjNames[obj.name]) continue;

        if(obj.type.toUpperCase() == "RADIO"){
            value = getRadioValue(obj);
            skipObjNames[obj.name] = true;
        }
        else if(obj.type.toUpperCase() == "CHECKBOX"){
            var arr = getCheckBoxvalue(obj);
            for(var i=0; i<arr.length ; i++){
                str += obj.name + "=";
                str += arr[i] + "&";
            }
            skipObjNames[obj.name] = true;
            continue;
        }
        else value = obj.value;

        if(value == null || obj.value == "") continue;

        str += obj.name + "=";
        str += value + "&";
    }

    if(frm.act != null && frm.act.value != "") str += "act=" + frm.act.value + "&";
    if(frm.act != null && frm.act.value != "") str += "page=" + frm.page.value + "&";

    if(str != "") winObj.location.href = action + "?" + str;
    else winObj.location.href = action;

    for (var i=0; i<frm.elements.length ;i++ ){
        var obj = frm.elements[i];
        if(obj.disabled2) obj.disabled = true;

        if(obj.tagName == "INPUT")
            if(obj.getAttribute("MONEY") != null) obj.value = makeComma(obj.value);
    }
}

function _submitForm2(target, action, act, pgmId){
    var frm = document.frm;
    if(this.submit != null) frm = this;

    if(pgmId == null) pgmId = "";

    act = nvl(act, "");
    if(act != "") $("#act").val(act);

    target = nvl(target, "_self");

    frm.target = target;
    frm.action = action;
    frm.setParameter("pgmId", pgmId);

    for(var i=0 ; i<frm.elements.length; i++){
        var obj= frm.elements[i];
        if(obj.disabled){
            obj.disabled = false;
            obj.disabled2 = true;
        }

        if(obj.tarName == "INPUT") if(obj.gatAttribute("MONEY") != null) obj.value = remove(obj.value, ",");
    }

    frm.method = "post";
    frm.submit();
    frm.isSubmit = true;

    for(var i=0; i<frm.elements.length ; i++){
        var obj = frm.elements[i];
        if(obj.disabled2) obj.disabled = true;

        if(obj.tagName == "INPUT"){
            if(obj.getAttribute("MONEY") != null) obj.value = makeComma(obj.value);
        }
    }
}

function _submitForm(target, sysId, pgmId, worker, is_redirect)
{
    var frm = document.frm;
    if(this.submit != null) frm = this;

    target = nvl(target, "_self");
    frm.target = target;

    frm.sysId.value = sysId;
    frm.pgmId.value = pgmId;
    frm.action = window.documentRoot + "servlet.biz";
    frm.worker.value = nvl(worker, "");

    if(is_redirect) frm.pageMethod.value = "redirect";
    else frm.pageMethod.value = "forward";

    for(var i=0; i<frm.elements.length; i++)
    {
        var obj = frm.elements[i];
        if(obj.disabled)
        {
            obj.disabled = false;
            obj.disabled2 = true;
        }
        if(obj.tagName == "INPUT")
        {
            if(obj.getAttribute("MONEY") !=null) obj.value = remove(obj.value, ",");
        }
    }

    frm.submit();

    for(var i=0; i<frm.elements.length ; i++)
    {
        var obj = frm.elements[i];
        if(obj.disabled2)
        {
            obj.disabled = true;
        }
        if(obj.tagName == "INPUT")
        {
            if(obj.getAttribute("MONEY") != null) obj.value = makeComma(obj.value);
        }
    }
}

function _setMultipart(is_multi)
{
    if(!is_multi) this.encoding = "application/x-www-form-urlencoded";
    else this.encoding = "multipart/form-data";
}

function _onfocusout()
{
    var obj = this;

    if(window.fw_onfocusout1 != null) fw_onfocusout1(obj);

    if(obj.getAttribute("MONEY") != null)
    {
        obj.makeComma();
        if(obj.value == "") obj.value = "0";
    }

    if(obj.getAttribute("DATE") != null)
    {
        var value = obj.value;
        if(value == "") return;

        if(obj.getAttribute("REQUIRED") != null)
        {
            var v = obj.value.split("-").join("");
            if(v.length != 8)
            {
                alert("날짜 형식에 맞춰서 입력하세요. \n 월,일은 반드시 두글자로 입력하셔야 합니다.");
                obj.value = "";
                obj.focus();
                return;
            }
        }

        obj.value = obj.value.split("-").join("");
        obj.value = obj.value.substring(0, 4) + "-" + obj.value.substring(4, 6) + "-" + obj.value.substring(6, 8);
    }

    if(obj.getArrribute("MINLENGTH") != null)
    {
        var minLength = obj.getAttribute("MINLENGTH");
        if(obj.value != "" && $.trim(obj.value).length < minLength)
        {
            alert("최소한" + minLength + "글자이상 입력하셔야 합니다.");
            event.returnValue = false;
            obj.focus();
        }
    }
}

function _onkeydown(event)
{
    var obj = this;
    if(window.fw_onkeydown1 != null) fw_onkeydown1(obj);

    var iKey = event.keyCode;

    if((iKey == 88 || iKey == 67 || iKey == 86) && event.ctrlKey)
    {
        event.returnValue = true;
        return true;
    }

    if(iKey == 13)
    {
        if(obj.tagName == "SELECT" || (obj.tagName == "INPUT" && (obj.type == "text" || obj.type == "password")))
        {
            _onenterdown(event, obj);
            event.returnValue = false;
            return false;
        }
    }
    var s = String.fromCharCode(iKey);

    if(iKey != 32)
    {
        if((iKey >= 34 && iKey <= 40) || iKey == 45 || iKey == 46 || iKey == 32 || iKey == 8) return;
        if(iKey == 25 || iKey == 17) return;
    }

    if(obj.getAttribute("NUMBER") != null || obj.getAttribute("MONEY") != null || obj.getAttribute("DATE") != null)
    {
        if(iKey >= 96 && iKey <= 105)
        {
            event.returnValue = true;
            return true;
        }

        if(s>=0 && s<=9) event.returnValue = true;
        else event.returnValue = false;
    }
    else if(obj.getAttribute("NUMBER2") != null)
    {
        if((iKey >=96 && iKey <=105) || iKey ==109)
        {
            event.returnValue = true;
            return true;
        }

        if((s >= 0 && s<=9 ) || iKey == 189 || iKey == 190) event.returnValue = true;
        else event.returnValue = false;
    }

    var type = obj.type.tpUpperCase();
    if(obj.tagName == "INPUT")
    {
        if(type == "TEXT" || type == "PASSWORD")
        { 
            if(iKey == 27)
            {
                var preValue = obj.preValue;
                if(preValue == null) preValue ="";
                obj.value = preValue;
            }
        }
    }
    return event.returnValue;
}

function _onenterdown(evnet, obj)
{
    if(window.fw_onenterdown1 != null) fw_onenterdown1(obj);
    if(window.fw_onenterdown2 != null) fw_onenterdown2(obj);

    if(obj.type == "text" || obj.type == "password")
    {
        event.returnValue = false;
        return;
    }
}

function _onblur()
{
    var obj = this;

    if(window.fw_onblur1 != null) fw_onblur1(obj);
    if(window.fw_onblur2 != null) fw_onblur2(obj);
}

var preValue;
function _onfocus()
{
    var obj = this;

    if(window.fw_onFocus1 != null) fw_onfocus1(obj);
    if(window.fw_onFocus2 != null) fw_onfocus2(obj);

    if(obj.getAttribute("MONEY") != null) obj.value = remove(obj.value, ",");
    if((obj.tagName == "INPUT" && (obj.type.toUpperCase() == "TEXT" || obj.type.toUpperCase() == "PASSWORD")) || obj.tagName == "TEXTAREA")
    {
        obj.preValue = obj.value;

        if(obj.getAttribute("DESELECTED") != null || obj.tagName == "TEXTAREA") return;
        obj.select();
    }
}
function _checkTextfieldForEmail(errorMsg)
{
    var obj = this;
    
    var strng = obj.value;
    re1 = new RegExp("(@.*@)|(\\.\\.)|(@\\.)|(^\\.)");
    re2 = new RegExp("^.+\\@(\\[?)[a-zA-Z0-9\\-\\.]+\\.([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$");
    if(re1.test(strng) || !re2.test(strng) )
    {
        if(errorMsg != null && errorMsg != "")
        {
            alert(errorMsg);
            obj.focus();
        }
        return false;
    }
    else return true;
}

function _getRadioValue(){
    var obj = this;
    if(obj.length == undefined){
        if(obj.checked) return obj.value;
        else return null;
    }

    for (var i=0 ; i<obj.length ; i++ ){
        if(obj[i].checked) return obj[i].value;
    }
    return null;
}

function _remove(gubun)
{
    var str = this.value;
    this.value = str.split(gubun).join("");
}

function _split(delim, arrLength)
{
    var str = this.value;

    if(arrLength == null) arrLength = str.split(delim).length;

    var ref = new Array(arrLength);
    if(str == "")
    {
        for (var i=0 ; i<arrLength ; i++) ret[i] = "";
    }
    var t = str.split(delim);

    if(t.length < arrLength)
    {
        for(var i=0; i<arrLength ; i++)
        {
            if(i < t.length) ret[i] = t[i];
            else ret[i] = "";
        }
    }
    else
    {
        for(var i= 0; i<arrLength ; i++)
        {
            ret[i] = t[i];
        }

        for(var i=arrLength ; i<t.length ; i++)
        {
            if(i == arrLength) ret[arrLength-1] += delim;

            if(i == t.length-1) ret[arrLength-1] += t[i];
            else ret[arrLength-1] += t[i] + delim;
        }
    }

    this.value = ret;
}

function _replace(str, gubun, rep)
{
    var str = this.value;
    this.value = str.split(gubun).join(rep);
}

function _makeComma()
{
    var checkText = this.value;

    checkText = new String(parseNumber(checkText));
    var len = checkText.length;
    var str = checkText;
    if(len<4)
    {
        this.value = str;
    }
    else if(len == 4)
    {
        str = checkText.substr(0,1) + "," + checkText.substr(1,len);
        this.value = str;
    }
    else if(len == 5)
    {
        str = checkText.substr(0,2) + "," + checkText.substr(2,len);
        this.value = str;
    }
    else if(len == 6)
    {
        str = checkText.substr(0,3) + "," + checkText.substr(3,len);
        this.value = str;
    }
    else if(len == 7)
    {
        str = checkText.substr(0,1) + "," + checkText.substr(1,3) + "," + checkText.substr(4,len);
        this.value = str;
    }
    else if(len == 8)
    {
        str = checkText.substr(0,2) + "," + checkText.substr(2,3) + "," + checkText.substr(5,len);
        this.value = str;
    }
    else if(len == 9)
    {
        str = checkText.substr(0,3) + "," + checkText.substr(3,3) + "," + checkText.substr(6,len);
        this.value = str;
    }
    else if(len == 10)
    {
        str = checkText.substr(0,1) + "," + checkText.substr(1,3) + "," + checkText.substr(4,3) + "," + checkText.substr(7,len);
        this.value = str;
    }
    else if(len == 11)
    {
        str = checkText.substr(0,2) + "," + checkText.substr(2,3) + "," + checkText.substr(5,3) + "," + checkText.substr(8,len);
        this.value = str;
    }
    else if(len == 12)
    {
        str = checkText.substr(0,3) + "," + checkText.substr(3,3) + "," + checkText.substr(6,3) + "," + checkText.substr(9,len);
        this.value = str;
    }
    else if (len > 12)
    {
        alert("Invalidate Number");
        this.value = checkText;
    }
}