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
	var keyCode;
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

<%@ include file="/crazyenglish_hd/head.jsp" %>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="69"><img src="images/fkyy-gq-4.jpg" width="69" height="590"/></td>
    <td width="1142" valign="top" bgcolor="#602121">
    <table width="1142" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="15"></td>
      </tr>
    </table>
     <table border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        	<c:if test="${fn:length(requestScope.filmList) > 0 }">
			      <c:forEach items="${requestScope.filmList}" begin="0" end="0" var="result" varStatus="status">			        	
			      		<td width="485"  height="72" bgcolor="#602121">
				        	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=index" id="defaultFocus" onfocus="focusStyle('t_0_0','titleon');" onblur="focusStyle('t_0_0','titleoff');">
				        		<div id="t_0_0" class="titleoff" >${result.name }</div>
				        	</a>
			        	</td>
        		  </c:forEach>
		    </c:if>
        <td rowspan="5"><table border="1" cellpadding="0" cellspacing="2" bordercolor="#facb50">
	          <tr>
	            <td width="621" height="350" align="center" bordercolor="#000000" bgcolor="#000000">
	             	<iframe id="freeVideo" frameborder="0" scrolling="no" style="background-color: transparent;" width="621" height="350"></iframe>
	            </td>
	          </tr>
	        </table>
       </td>
      </tr>
	  <tr bgcolor="#602121">
	  	<td height="72">
       	  <c:if test="${fn:length(requestScope.filmList) > 1 }">
      			<c:forEach items="${requestScope.filmList}" begin="1" end="1" var="result" varStatus="status">
		        	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_1','titleon');" onblur="focusStyle('t_1_1','titleoff');">
		        		<div id="t_1_1" class="titleoff" >${result.name }</div>
		        	</a>
	        	 </c:forEach>
    				</c:if>
       	</td>
      </tr>
    <tr bgcolor="#602121">
       	<td height="72">
       	  <c:if test="${fn:length(requestScope.filmList) > 2 }">
      			<c:forEach items="${requestScope.filmList}" begin="2" end="2" var="result" varStatus="status">
		        	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_2','titleon');" onblur="focusStyle('t_1_2','titleoff');">
		        		<div id="t_1_2" class="titleoff" >${result.name }</div>
		        	</a>
	        	 </c:forEach>
    				</c:if>
       	</td>
	  </tr>
	  <tr bgcolor="#602121">
       	<td height="72">
       	  <c:if test="${fn:length(requestScope.filmList) > 3 }">
      			<c:forEach items="${requestScope.filmList}" begin="3" end="3" var="result" varStatus="status">
		        	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_3','titleon');" onblur="focusStyle('t_1_3','titleoff');">
		        		<div id="t_1_3" class="titleoff" >${result.name }</div>
		        	</a>
	        	 </c:forEach>
    				</c:if>
       	</td>
	  </tr>
	  <tr bgcolor="#602121">
       	<td height="72">
       	  <c:if test="${fn:length(requestScope.filmList) > 4 }">
      			<c:forEach items="${requestScope.filmList}" begin="4" end="4" var="result" varStatus="status">
		        	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_4','titleon');" onblur="focusStyle('t_1_4','titleoff');">
		        		<div id="t_1_4" class="titleoff" >${result.name }</div>
		        	</a>
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
	$("freeVideo").src = prefix + "HD_PlayTrailerInVas.jsp?left=569&top=122&width=621&height=350&type=VOD&value=" + firstFileID+"contenttype=10";

}
init();
</script>
</body>
</html>
