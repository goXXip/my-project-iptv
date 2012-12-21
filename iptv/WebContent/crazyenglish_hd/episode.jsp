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
a{text-decoration:none;}
.STYLE12 {font-family: "黑体";color: #FF9900;font-size: 24px;}
.STYLE14 {font-family: "黑体";color: #FFFFFF;font-size: 24px;}
.titleon {float:left;width:973px; height:65px;padding-left: 25px;border-style: solid; border-width: 2px;border-color: #FFA22F;color: #FFFFFF;font-size: 24px;line-height: 70px;background: url("images/bg-02.jpg");}
.titleoff {float:left;width: 975px; height: 65px;padding-left: 25px;border-style: solid;border-width: 1px;border-color: #CC7100; color: #FBB90B; font-size: 24px;line-height: 70px;background: url("images/bg-01.jpg");}
</style>

<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript">
var curPage =  ${pageBean.curPage};
var totalPages = ${pageBean.totalPages};

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
		location.href =  "${ctx}/crazyenglish_hd/filmAction!detail.do?filmId=${requestScope.filmID }&from=${requestScope.from}";
		return 0;
		break;
	case 33://上一页
		if(curPage > 1){
			var pageNo = curPage-1 ;
			var url = "${ctx }/crazyenglish_hd/filmAction!listAsset.do?filmId=${requestScope.filmID }&curPage="+pageNo;
			location.href = url;
		}
		return 0;
		break;
	case 34://下一页
		if( curPage < totalPages){
			var pageNo = curPage+1 ;
			var url = "${ctx }/crazyenglish_hd/filmAction!listAsset.do?filmId=${requestScope.filmID }&curPage="+pageNo;
			location.href = url;
		}
		return 0;
		break;
	default:
		return 1;
	}
}
document.onirkeypress = keyEvent;
document.onkeypress = keyEvent;

function focusStyle_episode(target, className) {
	if(document.getElementById(target) != "undefined") {
		document.getElementById(target).className = className;
	}
};

var epg_server = '${requestScope.localIp}';
function goto_play(id,fileID,ztID,filmId){
	var currentPage = "${pageBean.curPage}";
	var backUrl = "${ctx}/crazyenglish_hd/filmAction!listAsset.do?filmId="+filmId+"&curPage="+currentPage;
	backUrl = escape(backUrl);
	var gotoUrl = epg_server + "play.jsp?PROGID="+fileID+"&FATHERID="+ztID+"&TYPE_ID=-1&CONTENTTYPE=0&BUSINESSTYPE=1&TYPE_ID=-1&PLAYTYPE=1&ISTVSERIESFLAG=1&PROGNUM=&CHILDID="+fileID;
	gotoUrl = escape(gotoUrl);
	location.href = epg_server + "epg_pageAction.jsp?action=addUrl&goUrl="+gotoUrl+"&backUrl="+backUrl;
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
    <div style="height: 525px;">
      <table border="0" align="center" cellpadding="0" cellspacing="0">
      	<c:forEach items="${pageBean.items}" var="result" varStatus="status">
	      	<c:if test="${status.count == 1}">
		      	<tr>
		          <td width="1017" height="75" valign="top">
		         	 <a href="javascript:goto_play(${result.id },'${result.fileId }','${requestScope.contentID }','${result.filmid }');" id="defaultFocus" onfocus="focusStyle_episode('t${status.count }','titleon');" onblur="focusStyle_episode('t${status.count }','titleoff');">
				       <div id="t${status.count }" class="titleoff">第${(pageBean.curPage-1)*7+status.count }集   ${result.name }</div>
				     </a>
		          </td>
		        </tr>
	      	</c:if>
	       <c:if test="${status.count != 1}">
		      	<tr>
		          <td width="1017" height="75" valign="top">
		         	  <a href="javascript:goto_play(${result.id },'${result.fileId }','${requestScope.contentID }','${result.filmid }');" onfocus="focusStyle_episode('t${status.count }','titleon');" onblur="focusStyle_episode('t${status.count }','titleoff');">
				      	<div id="t${status.count }" class="titleoff">第${(pageBean.curPage-1)*7+status.count }集   ${result.name }</div>
				      </a>
		          </td>
		        </tr>
	      	</c:if>
	     </c:forEach>
    </table>
    </div>
     <div id="page_navigator" class="STYLE14" style="width: 1142px;text-align: center;">${pageBean.curPage}/${pageBean.totalPages} 
           <c:if test="${pageBean.curPage > 1}">
           		<a href="${ctx }/crazyenglish_hd/filmAction!listAsset.do?filmId=${requestScope.filmID }&curPage=${pageBean.curPage-1}&channelId=2" class="STYLE14">上一页</a>
           </c:if>
           <c:if test="${pageBean.curPage < pageBean.totalPages}">
           		<a href="${ctx }/crazyenglish_hd/filmAction!listAsset.do?filmId=${requestScope.filmID }&curPage=${pageBean.curPage+1}&channelId=2" class="STYLE14">下一页</a>
           </c:if>
     </div>
    </td>
    <td><img src="images/fkyy-gq-5.jpg" width="69" height="590" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/fkyy-gq-6.jpg" width="1280" height="29" /></td>
  </tr>
</table>

</body>
</html>
