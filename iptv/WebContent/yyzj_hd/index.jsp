<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="1280*720" />
<title>孕育早教</title>
<script type="text/javascript" src="js/common.js"></script>
<style type="text/css">
body {
    letter-spacing: -1px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "黑体";
	width: 1280px;
	height:720px;
	background: transparent;
	background-image: url("images/yyzj-bg.png");
}
.titleon {
	float: left;
	width: 443px;
	height: 65px;
	overflow: hidden;
	padding-left: 15px;
	border-style: solid;
	border-width: 2px;
	border-color: #C0F8F2;
	color: #FFFFFF;
	font-size: 24px;
	line-height: 70px;
	background: url("images/bg-02.jpg");
}
.titleon a{color: #FFFFFF;}
.titleoff {
	float: left;
	width: 445px;
	height: 65px;
	overflow: hidden;
	padding-left: 15px;
	border-style: solid;
	border-width: 1px;
	border-color: #8bf1e7;
	color: #edff6f;
	font-size: 24px;
	line-height: 70px;
	background: url("images/bg-01.jpg");
}
.titleoff a{color: #edff6f;}
a:link{text-decoration:none;}
a:hover{text-decoration:none;}
a:VISITED {text-decoration:none;}
.STYLE25 {color: #ffffff;font-size: 24px;font-family: "黑体";}
</style>

<script type="text/javascript">
var backUrl = "";
var $ = function(id){
	var o = document.getElementById(id);
	return o;
};
window.onload = function() {
	if($("defaultFocus") != "undefined" && $("defaultFocus") != null) {
		$("defaultFocus").focus();
	}
	backUrl = getCookie("backUrl_netitv");
};
function getCookie(key) {
	   var search = key + "=";
	   if(document.cookie.length > 0) {
	      offset = document.cookie.indexOf(search);
	      if(offset != -1) {
	         offset += search.length;
	         end = document.cookie.indexOf(";", offset);
	         if(end == -1) end = document.cookie.length;
	         return unescape(document.cookie.substring(offset, end));
	      }
	   }
	   return "";
}
function keyEvent() {
	var keyCode;
	var keyCode = event.keyCode;
	if(!keyCode||keyCode=="undefined"){
		keyCode = event.which;
	}
	switch(keyCode) {
		case 1://up
		case 269:
			verticalChan(-1);
			return 0;
			break;
		case 2://down
		case 270:
			verticalChan(+1);
			return 0;
			break;
		case 3://left
		case 271:
			horizonChan(-1);
			return 0;
			break;
		case 4://right
		case 272:
			horizonChan(1);
			return 0;
			break;
		case 13:
			doSelect();
			return 0;
			break;
	case 8:
	case 109:
	case 283:
		if(backUrl != ""){
			location.href = backUrl ;
		}
		else{
			window.history.back();
		}
		return 0;
		break;
	default:
		return 1;
	}
}
document.onirkeypress = keyEvent;
document.onkeypress = keyEvent;

function focusStyle(target, className) {
	if($(target) != "undefined") {
		$(target).className = className;
	}
}

var area = 0; //0 导航  1置顶节目  2相关推荐节目
var btn_pos = 0 ;
var filmArray = ${requestScope.filmArray};//
var relativeArray = ${requestScope.relativeArray};
var menuArray = ["${ctx }/yyzj_hd/filmAction!eduIndex.do","${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=1&channelId=1","${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=2&channelId=1","${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=3&channelId=1"];
function init(){
	if(filmArray.length >0){
		area = 1;
	}else{
		area = 0;
	}
}

function verticalChan(__num){
	if( area == 0 ){

	}
	else if( area == 1){

	}
	else if(area == 2){

	}
}

function horizonChan(_num){
	if( area == 0){

	}
	else if( area == 1){

	}
	else if(area == 2){

	}
}

function doSelect(){
	if(area==0){
		if( btn_pos < menuArray.length){
			var url = menuArray[btn_pos];
			location.href = url;
		}
	}
	else if(area ==1){
		if(filmArray.length >0){
			if( btn_pos < filmArray.length){
				var id = filmArray[btn_pos];
				var url = "${ctx }/yyzj_hd/filmAction!detail.do?filmId="+id+"&from=index";
				location.href = url;
			}
		}	
	}
	else if(area == 2 ){
		if(relativeArray.length >0){
			if( btn_pos < relativeArray.length){
				var id = relativeArray[btn_pos];
				var url = "${ctx }/yyzj_hd/filmAction!detail.do?filmId="+id+"&from=index";
				location.href = url;
			}
		}
	}	
}

</script>

</head>

<body bgcolor="transparent">

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="65">&nbsp;</td>
    <td><img src="images/yyzj-gq-1.jpg" name="Image9" width="240" height="101" border="0" id="menu0" /></td>
    <td><img src="images/yyzj-gq-15.jpg" width="282" height="101" /></td>
    <td><img src="images/yyzj-gq-2-2.jpg" name="Image11" width="196" height="101" border="0" id="menu1" /></td>
    <td><img src="images/yyzj-gq-3-2.jpg" name="Image12" width="213" height="101" border="0" id="menu2" /></td>
    <td><img src="images/yyzj-gq-4-2.jpg" name="Image13" width="213" height="101" border="0" id="menu3" /></td>
    <td width="71">&nbsp;</td>
  </tr>
</table>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="65"><img src="images/yyzj-gq-5.jpg" width="65" height="591" /></td>
    <td width="1142" valign="top">
    <table width="1142" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="15"></td>
      </tr>
    </table>
    <table border="0" align="center" cellpadding="0" cellspacing="0" width="1142">
     <tr><td width="15"></td>
     <td width="1127">
	      <table border="0" align="center" cellpadding="0" cellspacing="0" width="1127">
	      <tr>
		       <c:if test="${fn:length(requestScope.filmList) > 0 }">
			      <c:forEach items="${requestScope.filmList}" begin="0" end="0" var="result" varStatus="status">
			        	<td width="485"  height="72">
				        	<div id="t_0_0" class="titleoff" >${result.name }</div>
			        	</td>
			      </c:forEach>
		      </c:if>
	        <td rowspan="5">
		        <table border="0" cellpadding="0" cellspacing="0" width="624">
		          <tr>
		            <td width="624" height="354" align="center">
		             	<iframe id="freeVideo" frameborder="0" scrolling="no" style="background-color: transparent;" width="624" height="354"></iframe>
		            </td>
		          </tr>
		        </table>
	        </td>
	      </tr>
			<tr>
			  	<td height="72">
	        	  <c:if test="${fn:length(requestScope.filmList) > 1 }">
		      			<c:forEach items="${requestScope.filmList}" begin="1" end="1" var="result" varStatus="status">
				        		<div id="t_1_1" class="titleoff" >${result.name }</a></div>
			        	 </c:forEach>
	     				</c:if>
	        	</td>
	       </tr>
			 <tr>
	        	<td height="72">
	        	  <c:if test="${fn:length(requestScope.filmList) > 2 }">
		      			<c:forEach items="${requestScope.filmList}" begin="2" end="2" var="result" varStatus="status">
				        		<div id="t_1_2" class="titleoff" >${result.name }</div>
			        	 </c:forEach>
	     				</c:if>
	        	</td>
			  </tr>
			  <tr>
	        	<td height="72">
	        	  <c:if test="${fn:length(requestScope.filmList) > 3 }">
		      			<c:forEach items="${requestScope.filmList}" begin="3" end="3" var="result" varStatus="status">
				        	<div id="t_1_3" class="titleoff" >${result.name }</div>
			        	 </c:forEach>
	     				</c:if>
	        	</td>
			  </tr>
			  <tr>
	        	<td height="72">
	        	  <c:if test="${fn:length(requestScope.filmList) > 4 }">
		      			<c:forEach items="${requestScope.filmList}" begin="4" end="4" var="result" varStatus="status">
				        		<div id="t_1_4" class="titleoff" >${result.name }</div>
			        	 </c:forEach>
	     				</c:if>
	        	</td>
			  </tr>
	    </table>
    </td></tr>
    </table>
    <%@ include file="/yyzj_hd/relative_fromindex_fragment.jsp" %>
      </td>
    <td width="73"><img src="images/yyzj-gq-6.jpg" width="73" height="591" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/yyzj-gq-7.jpg" width="1280" height="28" /></td>
  </tr>
</table>

<script type="text/javascript">

var firstFileID = "${requestScope.defaultPlayID}";//默认播放第一个影片第一集
var prefix = "${requestScope.prefix}";

	function init(){
		if(firstFileID != ""){
			//$("freeVideo").src = prefix + "HD_PlayTrailerInVas.jsp?left=569&top=122&width=621&height=350&type=VOD&value=" + firstFileID;
			$("freeVideo").src = prefix + "PlayTrailerInVas.jsp?left=568&top=122&width=624&height=354&type=VOD&value=" + firstFileID;
			//$("freeVideo").src = prefix + "PlayTrailerInVas.jsp?left=275&top=90&width=325&height=244&type=VOD&value=" + firstFileID;
		}
	}

init();
</script>
</body>
</html>
