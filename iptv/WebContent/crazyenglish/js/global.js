/**
 * @author Feiger
 */

var PLAY_WINDOW = "win";//窗口播放
var PLAY_FULLSCREEN = "full";//全屏播放，需要进行权限验证


var userID;
var localIP;
var backUrl;

var $ = function(id){
	var o = document.getElementById(id);
	return o;
};
window.onload = function() {
	if($("defaultFocus") != "undefined" && $("defaultFocus") != null) {
		$("defaultFocus").focus();
	}
};
function keyEvent() {
	var keyCode;
	var keyCode = event.keyCode;
	if(!keyCode||keyCode=="undefined"){
		keyCode = event.which;
	}
	switch(keyCode) {
	case 8:
	case 109:
	case 283:
		window.history.back();
//		window.history.go(-1);
//		window.location.href = getRefUrl();
		return 0;
		break;
	default:
		return 1;
	}
}
document.onirkeypress = keyEvent;
document.onkeypress = keyEvent;

/**
 * 播放节目
 * @param mode 播放模式，win为窗口免认证播放，full为认证全屏播放
 * @param fileID 节目ID
 * @param ztID 认证专题（垫片）ID
 * @param spUrl 授权完成之后要跳转SP的确认订购展示页面
 * @param backUrl 用于播放完成后返回地址
 */
function play(mode, fileID, ztID, spUrl, backUrl) {
	if(mode == PLAY_WINDOW) {
		$("freeVideo").src = localIP+"PlayTrailerInVas.jsp?left=336&top=83&width=264&height=270&type=VOD&value=" + fileID;
		/*
		$("getTrailerInfo").style.display = 'block';
		$("getTrailerInfo").style.left = "336px";
		$("getTrailerInfo").style.top = "83px";
		*/
		//top.trailer.src   = localIP+"PlayTrailerInVas.jsp?left=336&top=83&width=264&height=270&type=VOD&value=" + fileID;
	} else {
		location.href = localIP + "au_PlayFilm.jsp?CONTENTTYPE=0&PLAYTYPE=1&BUSINESSTYPE=1&PROGID=" + fileID + "&backurl=" + backUrl;
		//var SP_URL = spUrl;
		//var BACK_URL = backUrl;
		//alert("http://" +localIP + ":8082/EPG/jsp/defaultwg/en/sp_PlayFilm.jsp?FILM_ID=" + fileID + "&ZT_ID=" + ztID + "&SP_NAME=鸿波&SP_URL=" + escape(SP_URL) + "&BACK_URL=" + escape(BACK_URL));
		//location.href = "http://" +localIP + ":8082/EPG/jsp/defaultwg/en/sp_PlayFilm.jsp?FILM_ID=" + fileID + "&ZT_ID=" + ztID + "&SP_NAME=鸿波&SP_URL=" + escape(SP_URL) + "&BACK_URL=" + escape(BACK_URL);
		//location.href = localIP+"IPTVseriesListDetail.jsp?FILM_ID="+fileID;
	}
}

function getRefUrl() {
	var ref = ''; 
	if (document.referrer.length > 0) { 
		ref = document.referrer; 
	} 
	try { 
		if (ref.length == 0 && opener.location.href.length > 0) { 
			ref = opener.location.href; 
		} 
	} catch (e) {}
	return ref;
}

/**
 * 获取url参数
 * @param param
 * @returns
 */
function getParamValue(param) {
	var url = location.href; 
	var paraString = url.substring(url.indexOf("?")+1,url.length).split("&"); 
	var paraObj = {};
	for (i=0; j=paraString[i]; i++){ 
		paraObj[j.substring(0,j.indexOf("=")).toLowerCase()] = j.substring(j.indexOf("=")+1,j.length); 
	} 
	var returnValue = paraObj[param.toLowerCase()]; 
	if(typeof(returnValue)=="undefined"){ 
		return ""; 
	}else{ 
		return returnValue; 
	} 
}

/**
 * 焦点时的样式
 * @param target 焦点目标
 * @param className
 */
function focusStyle(target, className) {
	if($(target) != "undefined") {
		$(target).className = className;
//		event.srcElement.getElementsByTagName("div")[0].className = className;
	}
}