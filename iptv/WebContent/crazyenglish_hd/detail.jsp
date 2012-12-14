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
.style15 {	font-size: 22px;color: #FFFFFF;font-family: "黑体";}
.STYLE25 {font-size: 28px; color: #FFFFFF; font-family: "黑体"; }
.STYLE26 {color: #FF9900;font-size: 22px;font-family: "黑体";}
</style>

<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript">
var from = "${requestScope.from}";
var columnID = "${requestScope.columnID}";
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
		if(from == "index"){
			location.href = "${ctx }/crazyenglish_hd/filmAction!engIndex.do";
		}
		else if(from == "column"){
			location.href = "${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId=" +columnID +"&channelId=2";
		}
		else{
			location.href = "${ctx }/crazyenglish_hd/filmAction!engIndex.do";
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
};
</script>
</head>

<body>

<%@ include file="/crazyenglish_hd/head.jsp" %>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="69"><img src="images/fkyy-gq-4.jpg" width="69" height="590"/></td>
    <td width="1142" valign="top" bgcolor="602121"><table width="100" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="15"></td>
      </tr>
    </table>
      <table width="1112" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="252" rowspan="4" valign="top"><img src="${ctx }/uploadImages/${film.bigImage_HD.id}.${film.bigImage_HD.suffix}" width="200" height="275" /></td>
          <td colspan="3"><span class="STYLE25">《${film.name }》</span></td>
        </tr>
        <tr>
          <td height="138" colspan="3" valign="top" class="style15">${film.description }</td>
        </tr>
        <tr>
          <td  valign="top" class="STYLE26">集数：${film.serialCount }集<br/>订购方式：包月 </td>
          <td  valign="top" class="STYLE26">主讲：${film.actor }</td>
          <td valign="top" class="STYLE26">适用：${film.audient }</td>
        </tr>
        <tr>
          <td width="286" height="70">
	         <a href="${ctx }/servlet/serviceAuth_hd?filmId=${film.id }&channelId=2&from=${requestScope.from}&ContentID=${film.contentId }" id="defaultFocus"  onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('play_img','','images/fkyy-gq-13-2.jpg',1)">
	          	<img src="images/fkyy-gq-13.jpg" width="209" height="58" border="0"  id="play_img"/>
	        </a>
          </td>
          <td width="286" valign="top"></td>
          <td width="288" valign="top"></td>
        </tr>
      </table>
     <%@ include file="/crazyenglish_hd/relative_fragment.jsp" %>
      </td>
    <td><img src="images/fkyy-gq-5.jpg" width="69" height="590" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/fkyy-gq-6.jpg" width="1280" height="29" /></td>
  </tr>
</table>

</body>
</html>
