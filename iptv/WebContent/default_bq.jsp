<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/manager/common/taglibs.jsp"%>
<%@page import="com.netitv.util.HttpUtil"%>
<%@page import="com.netitv.util.CommonsUtil"%>
<%@page import="com.netitv.util.LogUtil"%>
<%
	LogUtil.logAccessInformation(request);//debug信息
/***写cookie信息 ***/
		String userID = request.getParameter("userId");
		if( userID != null && !"".equals(userID)){
			if(userID.indexOf("%26") >= 0){
				userID = "";
			}
			userID = CommonsUtil.htmlEncoder(userID);
			session.setAttribute("iptv_userId",userID);
			HttpUtil.addCookie(response,"userID",userID,null);
		}
		
		String backUrl = request.getParameter("backUrl");
		if( backUrl != null && !"".equals(backUrl)){
			if(backUrl.indexOf("%26") >= 0){
				backUrl = "";
			}
			backUrl = CommonsUtil.htmlEncoder(backUrl);
			session.setAttribute("iptv_backUrl",backUrl);
			HttpUtil.addCookie(response,"backUrl",backUrl,null);
		}
		
		String localIp = request.getParameter("localIp");
		if( localIp != null && !"".equals(localIp)){
			if(localIp.indexOf("%26") >= 0){
				localIp = "";
			}
			localIp = CommonsUtil.htmlEncoder(localIp);
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

function goToEng(userId,backUrl,localIp){
	location.href = "${ctx }/servlet/authenticate?userId="+userId+"&flag=2";
}

function goToYyzj(userId,backUrl,localIp){
	location.href = "${ctx }/servlet/authenticate?userId="+userId+"&flag=1";
}
</script>
</head>

<body>
<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/hbyp-01.jpg" width="640" height="130" /></td>
  </tr>
</table>
<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/hbyp-02.jpg" width="640" height="20" /></td>
  </tr>
</table>
<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="40"><img src="images/hbyp-03.jpg" width="40" height="300" /></td>
    <td width="560" height="300" background="images/hbyp-04.jpg"><table width="560" border="0" align="right" cellpadding="0" cellspacing="0">
      <tr>
        <td width="271"><a href="#" onclick="goToEng('${sessionScope.iptv_userId }','${sessionScope.iptv_backUrl }','${sessionScope.iptv_localIp}')"><img src="images/fkyy-logo-1.png" name="Image6" width="271" height="249" border="0" id="Image6" /></a></td>
        <td width="18">&nbsp;</td>
        <td width="271"><a href="#" onclick="goToYyzj('${sessionScope.iptv_userId }','${sessionScope.iptv_backUrl }','${sessionScope.iptv_localIp}')"><img src="images/yyzj-logo-1.png" name="Image7" width="271" height="249" border="0" id="Image7" /></a></td>
      </tr>
    </table></td>
    <td width="40"><img src="images/hbyp-05.jpg" width="40" height="300" /></td>
  </tr>
</table>
<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="640" height="80" style="background: url('images/hbyp-06.jpg') no-repeat;" align="center"><span style="font-size: 24px;color: #ffffff;"></span></td>
  </tr>
</table>
</body>
</html>
