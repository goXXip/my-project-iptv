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
<meta name="page-view-size" content="1280*720" />
<title>高清首页</title>
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
	location.href = "${ctx }/servlet/authenticate_hd?userId="+userId+"&flag=2";
}

function goToYyzj(userId,backUrl,localIp){
	location.href = "${ctx }/servlet/authenticate_hd?userId="+userId+"&flag=1";
}
</script>
</head>

<body>
<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/hbyp-gq-01.jpg" width="417" height="200" /></td>
    <td><img src="images/hbyp-gq-02.jpg" width="440" height="200" /></td>
    <td><img src="images/hbyp-gq-03.jpg" width="423" height="200" /></td>
  </tr>
</table>
<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/hbyp-gq-04.jpg" width="1280" height="22" /></td>
  </tr>
</table>
<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/hbyp-gq-05.jpg" width="166" height="365" /></td>
    <td width="946" height="365" background="images/hbyp-gq-06.jpg"><table width="850" height="208" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="208"><a href="#" onclick="goToEng('${sessionScope.iptv_userId }','${sessionScope.iptv_backUrl }','${sessionScope.iptv_localIp}')"><img src="images/fkyy-gq-logo-1.png" name="Image8" width="394" height="208" border="0" id="Image8" /></a></td>
        <td width="62">&nbsp;</td>
        <td><a href="#" onclick="goToYyzj('${sessionScope.iptv_userId }','${sessionScope.iptv_backUrl }','${sessionScope.iptv_localIp}')"><img src="images/yyzj-gq-logo-1.png" name="Image9" width="394" height="208" border="0" id="Image9" /></a></td>
      </tr>
    </table></td>
    <td><img src="images/hbyp-gq-07.jpg" width="168" height="365" /></td>
  </tr>
</table>
<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="1280" height="133" style="background: url('images/hbyp-gq-08.jpg') no-repeat;" align="center">
    	<span style="font-size: 28px;color: #ffffff;"></span>
    </td>
  </tr>
</table>
</body>
</html>
