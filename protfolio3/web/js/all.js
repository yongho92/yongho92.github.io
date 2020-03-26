// lnbNavi
var lnbNavi = function(gnbID,noscript,currentNum){
	var wrapper = document.getElementById(gnbID);
	if (noscript) removeClass(wrapper,noscript);	// 스크립트가 로딩되면 wrapper의 class중 'noscript'를 삭제합니다.

	var menu = getClass('depth1','li',wrapper);
	var menuLink = [];			// 이벤트를 발생시킬 대메뉴의 a들
	var submenu = [];			// 대메뉴의 하위에 위치한 ul들
	var submenuLink = [];		// 서브메뉴의 a들

	var initialize = function(){
		for (var i=0; i<menu.length; i++){
			menuLink[i] = menu[i].getElementsByTagName('a')[0];
			submenu[i] = menu[i].getElementsByTagName('div')[0];	// 서브메뉴는 div
			if(submenu[i] == undefined){
				submenu[i] = null;
			}
			if(submenu[i]) submenu[i].style.display = 'none';	// 서브메뉴 'hidden'초기화

			showCurrentmenu(i);
		}

		if (currentNum) menuLink[currentNum-1].onmouseover();		// 현재 메뉴 활성화
	};
	var showCurrentmenu = function(num){
		menuLink[num].onmouseover = menuLink[num].onfocus = function(){
			for(var i=0; i<menu.length; i++){
				var imgEl = menuLink[i].getElementsByTagName('img')[0];
				if(i == num){
					if (menu[i].className.indexOf('visible') == -1) addClass(menu[i],'visible');		// 활성화 된 메뉴에 class추가
					if (imgEl && imgEl.src.indexOf('_on.gif') == -1) imgEl.src = imgEl.src.replace('_off.gif', '_on.gif');	// 대메뉴 이미지 오버
					if(submenu[i]) {					// 서브메뉴가 있을때만 실행한다.
						submenu[i].style.display = 'block';
						subImgOver(i);					// 서브메뉴의 이미지 오버
					}
				} else {
					removeClass(menu[i],'visible');
					if (imgEl) imgEl.src = imgEl.src.replace('_on.gif', '_off.gif');
					if(submenu[i]) {					// 서브메뉴가 있을때만 실행한다.
						submenu[i].style.display = 'none';
					}
				}
			}
		}
		/* 마우스 아웃시 최초 활성화된 서브메뉴를 자동 보임
		menuLink[num].onmouseout = function(){
			if(currentNum) {
				setTimeout(function(){if (currentNum) menuLink[currentNum-1].onmouseover();},1000);
			}
		}*/
	};
	var subImgOver = function(num){
		submenuLink = submenu[num].getElementsByTagName('a');
		for(var i=0; i<submenuLink.length; i++){
			var imgEl = submenuLink[i].getElementsByTagName('img');
			for(var j=0; j<imgEl.length; j++){
				imgEl[j].onmouseover = imgEl[j].onfocus = function(){
					this.src = this.src.replace('_off.gif','_on.gif');
				}
				imgEl[j].onmouseout = imgEl[j].onblur = function(){
                      this.src = this.src.replace('_on.gif','_off.gif');
				}
			}
		}
	}
	initialize();
}

// add class
function addClass(element,value) {
	if (!element.className) {
		element.className = value;
	} else {
		newClassName = element.className;
		newClassName += " ";
		newClassName += value;
		element.className = newClassName;
	}
}

// remove class
function removeClass(element,value) {
	if (element.className == value) {
		element.className = "";
	} else if (element.className.indexOf(value) != -1) {
		element.className = element.className.replace(value,"");
	}
}

// get Class
function getClass(classname, tagname, tarID) {
	if (tarID == undefined) tarID = document;
	var element = this.nodeType == 1 ? this : tarID;
	var elements = [], nodes = tagname ? element.getElementsByTagName(tagname) : element.getElementsByTagName('*');	
	for(var i=0; i<nodes.length; i++) {
		var elementClassName = nodes[i].className;
		if (elementClassName.length > 0 && (elementClassName == arguments[0] || new RegExp("(^|\\s)" + arguments[0] + "(\\s|$)").test(elementClassName))) {
			elements.push(nodes[i]);
		}
	}
	return elements;
}

var pre = "", pre_byte = 0;;
function checkContent()
{
    var b = getStrBytes(document.frm.comment.value);
    if(b > 80)
    {
        alert("40자 이상 내용을 입력할 수 없습니다.");
        document.frm.comment.value = pre;
        //document.getElementById("byte_text").innerHTML = pre_byte;
        return;
    }
    
    //document.getElementById("byte_text").innerHTML = b;
    
    pre_byte = b;
    pre = document.frm.comment.value;
}