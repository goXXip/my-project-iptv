<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="640*530" />
<title>孕育早教</title>
<style type="text/css">
body {
	letter-spacing: -1px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	width: 640px;
	height: 530px;
	font-family: "黑体";
}
a:link{text-decoration:none;}
a:hover{text-decoration:none;}
a:VISITED {text-decoration:none;}
.STYLE9 {color: #FFFFFF; font-size: 20px; font-family: "黑体";}
.STYLE10 {color: #FFFFFF; font-size: 18px; font-family: "黑体"; }
.STYLE12 {font-family: "黑体";color: #FF9900;font-size: 16px;}
.STYLE14 {font-family: "黑体";color:#ffffff;font-size: 16px;}/*color:#edff6f;*/
.STYLE16 {
	font-family: "黑体";
	color: #edff6f;
}
.STYLE17 {color: #edff6f; font-size: 18px; font-family: "黑体"; }
.titleon {
	float: left;
	width:533px; 
	height:47px;
	overflow: hidden;
	padding-left: 13px;
	border-style: solid; 
	border-width: 2px;
	border-color: #C0F8F2; 
	color: #FFFFFF; 
	font-size: 18px;
	line-height: 47px;
	background: url("images/bg-02.jpg");
}
.titleoff {
	float: left;
	width: 535px; 
	height: 47px;
	overflow: hidden;
	padding-left: 13px;
	border-style: solid; 
	border-width: 1px;
	border-color: #8bf1e7; 
	color: #edff6f; 
	font-size: 18px;
	line-height: 47px;
	background: url("images/bg-01.jpg");
}
</style>


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
		location.href =  "${ctx}/yyzj/filmAction!detail.do?filmId=${requestScope.filmID }&from=${requestScope.from}";
		return 0;
		break;
	case 33://上一页
		if(curPage > 1){
			var pageNo = curPage-1 ;
			var url = "${ctx }/yyzj/filmAction!listAssetByFilmId.do?filmId=${requestScope.filmID }&curPage="+pageNo;
			location.href = url;
		}
		return 0;
		break;
	case 34://下一页
		if( curPage < totalPages){
			var pageNo = curPage+1 ;
			var url = "${ctx }/yyzj/filmAction!listAssetByFilmId.do?filmId=${requestScope.filmID }&curPage="+pageNo;
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


	var epg_server = '${requestScope.localIp}';
	function goto_play(id,fileID,ztID,filmId){
		var pay_confirm_url = "${ctx}/yyzj/filmAction!orderConfirm.do?filmId="+filmId;
		var backUrl = "${ctx}/yyzj/filmAction!listAssetByFilmId.do?filmId="+filmId+"&curPage=${pageBean.curPage}";
		backUrl = escape(backUrl);
		var gotoUrl = epg_server + "play_pageControl.jsp?PROGID="+fileID;
		gotoUrl = escape(gotoUrl);
		location.href = epg_server + "epg_pageAction.jsp?action=addUrl&goUrl="+gotoUrl+"&backUrl="+backUrl;
	}

	function focusStyle(target, className) {
		if($(target) != "undefined") {
			$(target).className = className;
		}
	}
	
</script>
</head>

<body>

<%@ include file="/yyzj/head.jsp" %>

<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="33"><img src="images/zyzj-2.jpg" width="33" height="434" /></td>
    <td width="575" valign="top" bgcolor="214c47"><table width="100" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="10"></td>
      </tr>
    </table>
    <div style="height: 385px;">
	     <table width="550" border="0" align="center" cellpadding="0" cellspacing="0">
	      <c:forEach items="${pageBean.items}" var="result" varStatus="status">
	    			<c:if test="${status.count == 1}">
	    				<tr>
	    					 <td width="291" height="55"><a href="javascript:goto_play(${result.id},'${result.fileId }','${requestScope.contentID }','${result.filmid }');" id="defaultFocus" onfocus="focusStyle('t_0_${status.count }','titleon');" onblur="focusStyle('t_0_${status.count }','titleoff');">
						        	<div id="t_0_${status.count }" class="titleon">第${(pageBean.curPage-1)*7+status.count }集  ${result.name }</div></a>
	    					 </td>
	    				</tr>
	    			</c:if>
	    			<c:if test="${status.count != 1}">
	    				<tr>
	    					 <td height="55">
	    					 	<a href="javascript:goto_play(${result.id },'${result.fileId }','${requestScope.contentID }','${result.filmid }');" onfocus="focusStyle('t_1_${status.count }','titleon');" onblur="focusStyle('t_1_${status.count }','titleoff');">
						        <div id="t_1_${status.count }" class="titleoff">第${(pageBean.curPage-1)*7+status.count }集  ${result.name }</div></a>
	    					 </td>
	    				</tr>
	    			</c:if>
	      </c:forEach>
	    </table>
    </div>
     <div id="page_navigator" style="text-align: center;">
         <table width="500"  border="0" align="center" cellpadding="0" cellspacing="0">
	        <tr>
	          <td align="center" height="27" valign="bottom" class="STYLE14">${pageBean.curPage}/${pageBean.totalPages} 
			           　<c:choose>
			           <c:when test="${pageBean.curPage > 1}">
			           		<a href="${ctx }/yyzj/filmAction!listAssetByFilmId.do?filmId=${requestScope.filmID }&curPage=${pageBean.curPage-1}" class="STYLE14">上一页</a>
			           </c:when>
			           <c:otherwise>
			           		上一页
			           </c:otherwise>
			      </c:choose>
			           　<c:choose>
			           <c:when test="${pageBean.curPage < pageBean.totalPages}">
			           		<a href="${ctx }/yyzj/filmAction!listAssetByFilmId.do?filmId=${requestScope.filmID }&curPage=${pageBean.curPage+1}" class="STYLE14">下一页</a>
			           </c:when>
			           <c:otherwise>
			           		下一页
			           </c:otherwise>
			      </c:choose>
	           </td>
	        </tr>
     	 </table>
      </div>
      </td>
    <td width="32"><img src="images/zyzj-3.jpg" width="32" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/zyzj-4.jpg" width="640" height="26" /></td>
  </tr>
</table>

<jsp:include page="/yyzj/footer.jsp"></jsp:include>

</body>
</html>
