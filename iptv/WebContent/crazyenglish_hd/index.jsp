<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="1280*720" />
<title>疯狂英语</title>
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
	background-image: url("images/fkyy_bg.png");
	background-repeat:repeat;
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
.titleon a {color: #FFFFFF;}
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
.liston {
	float: left;
	width: 268px;
	height: 185px;
	border: solid 1px #facb50;
	background-color: #972C28;
	color: #ffffff;
}

.listoff {
	float: left;
	width: 268px;
	height: 185px;
	border: solid 1px #b96400;
	color: #ffffff;
}
a:link{text-decoration:none;}
a:hover{text-decoration:none;}
a:VISITED {text-decoration:none;}
</style>

<script type="text/javascript" src="js/common.js"></script>
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
	var keyCode = event.keyCode;
	if(!keyCode||keyCode=="undefined"){
		keyCode = event.which;
	}
	switch(keyCode) {
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

/**
 * 焦点时的样式
 */
function focusStyle(target, className) {
	if($(target) != "undefined") {
		$(target).className = className;
	}
}
</script>

</head>

<body>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><a href="${ctx }/crazyenglish_hd/filmAction!engIndex.do" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image8','','images/fkyy-gq-1-2.jpg',1)"><img src="images/fkyy-gq-1.jpg" name="Image8" width="302" height="101" border="0" id="Image8" /></a></td>
    <td width="652" align="right"><c:choose><c:when test="${requestScope.columnID == 5}"><a href="${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId=5&channelId=2"><img src="images/fkyy-gq-14-2.jpg" name="Image9" width="227" height="101" border="0" id="Image9" /></a></c:when><c:otherwise><a href="${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId=5&channelId=2" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image9','','images/fkyy-gq-14-2.jpg',1)"><img src="images/fkyy-gq-14.jpg" name="Image9" width="227" height="101" border="0" id="Image9"/></a></c:otherwise></c:choose></td>
    <td><c:choose><c:when test="${requestScope.columnID == 4}"><a href="${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId=4&channelId=2"><img src="images/fkyy-gq-3-2.jpg" name="Image10" width="326" height="101" border="0" id="Image10" /></a></c:when><c:otherwise><a href="${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId=4&channelId=2" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image10','','images/fkyy-gq-3-2.jpg',1)"><img src="images/fkyy-gq-3.jpg" name="Image10" width="326" height="101" border="0" id="Image10" /></a></c:otherwise></c:choose></td>
  </tr>
</table>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="69"><img src="images/fkyy-gq-4.jpg" width="69" height="590"/></td>
    <td width="1142" valign="top">
    <table width="1142" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="15"></td>
      </tr>
    </table>
     <table border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        	<c:if test="${fn:length(requestScope.filmList) > 0 }">
			      <c:forEach items="${requestScope.filmList}" begin="0" end="0" var="result" varStatus="status">			        	
			      		<td width="485"  height="72">
				        	<div id="t_1_0" class="titleoff" ><a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=index" id="defaultFocus" onfocus="focusStyle('t_1_0','titleon');" onblur="focusStyle('t_1_0','titleoff');">${result.name }</a></div>
			        	</td>
        		  </c:forEach>
		    </c:if>
        <td rowspan="5">
        	<table border="0" cellpadding="0" cellspacing="0" width="622">
		          <tr>
		            <td width="622" height="352" align="center">
		             	<iframe id="freeVideo" frameborder="0" scrolling="no" style="background-color: transparent;" width="622" height="352"></iframe>
		            </td>
		          </tr>
		    </table>
       </td>
      </tr>
	  <tr>
	  	<td height="72">
       	  <c:if test="${fn:length(requestScope.filmList) > 1 }">
      			<c:forEach items="${requestScope.filmList}" begin="1" end="1" var="result" varStatus="status">
		        		<div id="t_1_1" class="titleoff" ><a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_1','titleon');" onblur="focusStyle('t_1_1','titleoff');">${result.name }</a></div>
	        	 </c:forEach>
    	   </c:if>
       	</td>
      </tr>
    <tr>
       	<td height="72">
       	  <c:if test="${fn:length(requestScope.filmList) > 2 }">
      			<c:forEach items="${requestScope.filmList}" begin="2" end="2" var="result" varStatus="status">
		        		<div id="t_1_2" class="titleoff" ><a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_2','titleon');" onblur="focusStyle('t_1_2','titleoff');">${result.name }</a></div>
	        	 </c:forEach>
    	   </c:if>
       	</td>
	  </tr>
	  <tr>
       	<td height="72">
       	  <c:if test="${fn:length(requestScope.filmList) > 3 }">
      			<c:forEach items="${requestScope.filmList}" begin="3" end="3" var="result" varStatus="status">
		        	
		        		<div id="t_1_3" class="titleoff" ><a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_3','titleon');" onblur="focusStyle('t_1_3','titleoff');">${result.name }</a></div>
	        	 </c:forEach>
    	  </c:if>
       	</td>
	  </tr>
	  <tr>
       	<td height="72">
       	  <c:if test="${fn:length(requestScope.filmList) > 4 }">
      			<c:forEach items="${requestScope.filmList}" begin="4" end="4" var="result" varStatus="status">
		        		<div id="t_1_4" class="titleoff" ><a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_4','titleon');" onblur="focusStyle('t_1_4','titleoff');">${result.name }</a></div>
	        	 </c:forEach>
    	  </c:if>
       	</td>
	  </tr>
    </table>
    <%@ include file="/crazyenglish_hd/relative_fromindex_fragment.jsp" %>
    </td>
    <td><img src="images/fkyy-gq-5.jpg" width="69" height="590" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/fkyy-gq-6.jpg" width="1280" height="29" /></td>
  </tr>
</table>

<script type="text/javascript">

var firstFileID = "${requestScope.defaultPlayID}";//默认播放第一个影片第一集
var prefix = "${requestScope.prefix}";

function init(){
	$("freeVideo").src = prefix + "PlayTrailerInVas.jsp?left=572&top=122&width=622&height=352&type=VOD&value=" + firstFileID;
}
init();
</script>
</body>
</html>
