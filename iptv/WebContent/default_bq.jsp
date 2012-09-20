<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/manager/common/taglibs.jsp"%>
<%@page import="com.netitv.util.HttpUtil"%>
<%
/***写cookie信息 ***/
		String userID = request.getParameter("userId");
		if( userID != null && !"".equals(userID)){
			session.setAttribute("iptv_userId",userID);
			HttpUtil.addCookie(response,"userID",userID,null);
		}
		
		String backUrl = request.getParameter("backUrl");
		if( backUrl != null && !"".equals(backUrl)){
			session.setAttribute("iptv_backUrl",backUrl);
			HttpUtil.addCookie(response,"backUrl",backUrl,null);
		}
		
		String localIp = request.getParameter("localIp");
		if( localIp != null && !"".equals(localIp)){
			session.setAttribute("iptv_localIp",localIp);
			HttpUtil.addCookie(response,"localIp",localIp,null);
		}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="640*530" />
<title>标清首页</title>
<style type="text/css">
body {
    letter-spacing: -1px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "黑体";
	width: 640px;
	height: 530px;
	background: transparent;
}
</style>
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>
<script type="text/javascript">
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
			var backUrl = getCookie("backUrl_netitv");
			location.href = backUrl ;
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

<body onload="MM_preloadImages('images/fkyy-logo-2.png','images/yyzj-logo-2.png')">
<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/hbyp-01.jpg" width="640" height="123" /></td>
  </tr>
</table>
<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/hbyp-02.jpg" width="640" height="17" /></td>
  </tr>
</table>
<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="40"><img src="images/hbyp-03.jpg" width="40" height="340" /></td>
    <td width="560" height="340" background="images/hbyp-04.jpg"><table width="560" border="0" align="right" cellpadding="0" cellspacing="0">
      <tr>
        <td width="271"><a href="${ctx }/crazyenglish/filmAction!engIndex.do?userId=${sessionScope.iptv_userId }&backUrl=${sessionScope.iptv_backUrl }&localIp=${sessionScope.iptv_localIp}" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image6','','images/fkyy-logo-2.png',1)"><img src="images/fkyy-logo-1.png" name="Image6" width="271" height="146" border="0" id="Image6" /></a></td>
        <td width="18">&nbsp;</td>
        <td width="271"><a href="${ctx }/yyzj/filmAction!eduIndex.do?userId=${sessionScope.iptv_userId }&backUrl=${sessionScope.iptv_backUrl }&localIp=${sessionScope.iptv_localIp}" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image7','','images/yyzj-logo-2.png',1)"><img src="images/yyzj-logo-1.png" name="Image7" width="271" height="146" border="0" id="Image7" /></a></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="122">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td width="40"><img src="images/hbyp-05.jpg" width="40" height="340" /></td>
  </tr>
</table>
<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/hbyp-06.jpg" width="640" height="50" /></td>
  </tr>
</table>
</body>
</html>
