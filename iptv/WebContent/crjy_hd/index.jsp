<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="1280*720" />
<title>成人教育</title>
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
.img{border-color:yellow;border-width:2px;}
a:link{text-decoration:none;}
a:hover{text-decoration:none;}
a:visited {text-decoration:none;}
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

function focusStyle(target, className) {
	if($(target) != "undefined") {
		$(target).className = className;
	}
}

</script>

</head>

<body bgcolor="transparent">

<table width="1280" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td width="64"><img src="images/crjy-gq-01.jpg" width="64" height="101" border="0"/></td>
		<td>
			<a href="${ctx }/crjy_hd/filmAction!crjyIndex.do" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image9','','images/crjy-gq-02.jpg',1)">
			<img src="images/crjy-gq-02.jpg" name="Image9" width="225" height="101" border="0" id="Image9" /></a>
		</td>
		<td><img src="images/crjy-gq-03.jpg" width="124" height="101" /></td>
		<td>
			<a href="${ctx }/crjy_hd/filmAction!listFilmByColumnId.do?columnId=6&channelId=3" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image11','','images/crjy-gq-04-2.jpg',1)">
				<img src="images/crjy-gq-04.jpg" name="Image11" width="194" height="101" border="0" id="Image11" />
			</a>
		</td>
		<td>
			<a href="${ctx }/crjy_hd/filmAction!listFilmByColumnId.do?columnId=7&channelId=3" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image12','','images/crjy-gq-05-2.jpg',1)">
				<img src="images/crjy-gq-05.jpg" name="Image12" width="199" height="101" border="0" id="Image12" />
			</a>
		</td>
		<td>
			<a href="${ctx }/crjy_hd/filmAction!listFilmByColumnId.do?columnId=8&channelId=3" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image13','','images/crjy-gq-06-2.jpg',1)">
				<img src="images/crjy-gq-06.jpg" name="Image13" width="195" height="101" border="0" id="Image13" />
			</a>
		</td>
		<td>
			<a href="${ctx }/crjy_hd/filmAction!listFilmByColumnId.do?columnId=9&channelId=3" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image14','','images/crjy-gq-07-2.jpg',1)">
				<img src="images/crjy-gq-07.jpg" name="Image14" width="196" height="101" border="0" id="Image14" />
			</a>
		</td>
		<td width="83"><img src="images/crjy-gq-08.jpg" width="83" height="101" border="0"/></td>
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
				        	<div id="t_1_0" class="titleoff" ><a href="${ctx }/crjy_hd/filmAction!detail.do?filmId=${result.id}&from=index" id="defaultFocus" onfocus="focusStyle('t_1_0','titleon');" onblur="focusStyle('t_1_0','titleoff');">${result.name }</a></div>
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
				        		<div id="t_1_1" class="titleoff" ><a href="${ctx }/crjy_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_1','titleon');" onblur="focusStyle('t_1_1','titleoff');">${result.name }</a></div>
			        	 </c:forEach>
	     		  </c:if>
	        	</td>
	       </tr>
			 <tr>
	        	<td height="72">
	        	  <c:if test="${fn:length(requestScope.filmList) > 2 }">
		      			<c:forEach items="${requestScope.filmList}" begin="2" end="2" var="result" varStatus="status">
				        		<div id="t_1_2" class="titleoff" ><a href="${ctx }/crjy_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_2','titleon');" onblur="focusStyle('t_1_2','titleoff');">${result.name }</a></div>
			        	 </c:forEach>
	     				</c:if>
	        	</td>
			  </tr>
			  <tr>
	        	<td height="72">
	        	    <c:if test="${fn:length(requestScope.filmList) > 3 }">
		      			<c:forEach items="${requestScope.filmList}" begin="3" end="3" var="result" varStatus="status">
				        	<div id="t_1_3" class="titleoff" ><a href="${ctx }/crjy_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_3','titleon');" onblur="focusStyle('t_1_3','titleoff');">${result.name }</a></div>
			        	 </c:forEach>
	     		   </c:if>
	        	</td>
			  </tr>
			  <tr>
	        	<td height="72">
	        	   <c:if test="${fn:length(requestScope.filmList) > 4 }">
		      			<c:forEach items="${requestScope.filmList}" begin="4" end="4" var="result" varStatus="status">
				        		<div id="t_1_4" class="titleoff" ><a href="${ctx }/crjy_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_4','titleon');" onblur="focusStyle('t_1_4','titleoff');">${result.name }</a></div>
			        	 </c:forEach>
	     		   </c:if>
	        	</td>
			  </tr>
	    </table>
    </td></tr>
    </table>
    <%@ include file="/crjy_hd/relative_fromindex_fragment.jsp" %>
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
			$("freeVideo").src = prefix + "PlayTrailerInVas.jsp?left=568&top=122&width=624&height=354&type=VOD&value=" + firstFileID;
		}
	}

init();
</script>
</body>
</html>
