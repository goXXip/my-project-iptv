<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="1280*720" />
<title>孕育早教</title>
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
a:link{text-decoration:none;}
a:hover{text-decoration:none;}
a:VISITED {text-decoration:none;}
.STYLE25 {color: #ffffff;font-size: 24px;font-family: "黑体";}
.style151 {font-size: 22px;color: #FFFFFF;font-family: "黑体";}
.STYLE27 {font-size: 28px;color: #FFFFFF;}
.STYLE28 {font-size: 22px;color: #edff6f;}
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
				location.href = "${ctx }/yyzj_hd/filmAction!eduIndex.do";
			}
			else if(from == "column"){
				location.href = "${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=" +columnID +"&channelId=1";
			}
			else{
				location.href = "${ctx }/yyzj_hd/filmAction!eduIndex.do";
			}
		return 0;
		break;
	default:
		return 1;
	}
}
document.onirkeypress = keyEvent;
document.onkeypress = keyEvent;
</script>

</head>

<body>

<%@ include file="/yyzj_hd/head.jsp" %>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="65"><img src="images/yyzj-gq-5.jpg" width="65" height="591" /></td>
    <td width="1142" valign="top" bgcolor="214c47"><table width="100" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="15"></td>
      </tr>
    </table>
      <table width="1112" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="405" rowspan="4" valign="top"><img src="${ctx }/uploadImages/${film.bigImage_HD.id}.${film.bigImage_HD.suffix}" width="385" height="263" /></td>
          <td colspan="3"><span class="STYLE27">《${film.name }》</span></td>
        </tr>
        <tr>
          <td height="138" colspan="3" valign="top" class="style151">${film.description }</td>
        </tr>
        <tr>
          <td valign="top" class="STYLE28">集数：${film.serialCount }集 <br />价格：免费</td>
          <td valign="top" class="STYLE28">适用：${film.audient }<br />期限：${film.period }</td>
          <td valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td width="256" height="70">
          	<a href="${ctx }/yyzj_hd/filmAction!listAssetByFilmId.do?filmId=${film.id}&channelId=1&from=${requestScope.from}" id="defaultFocus"  onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('play_img','','images/yyzj-gq-11-2.jpg',1)">
          		<img src="images/yyzj-gq-11.jpg" width="209" height="58" border="0" id="play_img"/>
          	</a>
          </td>
          <td width="230" valign="top"></td>
          <td width="221" valign="top"></td>
        </tr>
      </table>
       <%@ include file="/yyzj_hd/relative_fragment.jsp" %>
     </td>
    <td width="73"><img src="images/yyzj-gq-6.jpg" width="73" height="591" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/yyzj-gq-7.jpg" width="1280" height="28" /></td>
  </tr>
</table>

</body>
</html>
