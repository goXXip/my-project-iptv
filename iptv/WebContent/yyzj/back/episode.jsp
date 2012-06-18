<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>孕育早教</title>
<style type="text/css">
body {
	letter-spacing: -1px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "黑体";
}
a:link{text-decoration:none;}
a:hover{text-decoration:none;}
a:VISITED {text-decoration:none;}
.STYLE9 {color: #FFFFFF; font-size: 20px; font-family: "黑体";}
.STYLE10 {color: #FFFFFF; font-size: 18px; font-family: "黑体"; }
.STYLE12 {
	color: #FF9900;
	font-size: 16px;
}
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
.titleon .titleplay {
	float: right;
	width: 20px; 
	height: 20px;
	margin: 15px 35px 0px 0px;
	line-height: 47px;
	background: url("images/sanjiao-1.gif") no-repeat;
	visibility: visible;
}
</style>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/Cookies.js"></script>

<script type="text/javascript">

	var context = "${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}";
	function goto_play(mode,fileID,ztID,filmId){
		var pay_confirm_url = context + "/yyzj/filmAction!orderConfirm.do?filmId="+filmId;
		var backUrl = context + "/yyzj/filmAction!listAssetByFilmId.do?filmId="+filmId;
		play(mode, fileID, ztID, pay_confirm_url, backUrl);
	}
	
</script>
</head>

<body>
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/zyzj-1.jpg" width="184" height="72" name="Image5" border="0" usemap="#Image5Map" id="Image5" /></td>
    <td><img src="images/zyzj-1-2.jpg" name="Image6" width="136" height="72" border="0" usemap="#Image6Map" id="Image6" /></td>
    <td><img src="images/zyzj-1-3.jpg" name="Image7" width="129" height="72" border="0" usemap="#Image7Map" id="Image7" /></td>
    <td><img src="images/zyzj-1-4.jpg" name="Image8" width="195" height="72" border="0" usemap="#Image8Map" id="Image8" /></td>
  </tr>
</table>
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="35"><img src="images/zyzj-2.jpg" width="35" height="434" /></td>
    <td width="575" valign="top" bgcolor="214c47"><table width="100" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="10"></td>
      </tr>
    </table>
      <table width="550" border="0" align="center" cellpadding="0" cellspacing="0">
      <c:forEach items="${pageBean.items}" var="result" varStatus="status">
    			<c:if test="${status.count == 1}">
    				<tr>
    					 <td width="291" height="55"><a href="javascript:goto_play('full','${result.fileid }','${requestScope.contentID }','${result.filmid }');" id="defaultFocus" onfocus="focusStyle('t${status.count }','titleon');" onblur="focusStyle('t${status.count }','titleoff');"><div id="t${status.count }" class="titleoff">第${status.count }集   ${result.name }<div class="titleplay"></div></div></a></td>
    				</tr>
    			</c:if>
    			<c:if test="${status.count != 1}">
    				<tr>
    					 <td height="55"><a href="javascript:goto_play('full', '${result.fileid }','${requestScope.contentID }','${result.filmid }');" onfocus="focusStyle('t${status.count }','titleon');" onblur="focusStyle('t${status.count }','titleoff');"><div id="t${status.count }" class="titleoff">第${status.count }集  ${result.name }<div class="titleplay"></div></div></a></td>
    				</tr>
    			</c:if>
      </c:forEach>
    </table>
        <table width="500"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td align="center" height="27" valign="bottom" class="STYLE12 STYLE14">${pageBean.curPage}/${pageBean.totalPages} 
		           　<c:choose>
		           <c:when test="${pageBean.curPage > 1}">
		           		<a href="${ctx }/yyzj/filmAction!listAssetByFilmId.do?filmId=${requestScope.filmID }&curPage=${pageBean.curPage-1}" class="STYLE12 STYLE14">上一页</a>
		           </c:when>
		           <c:otherwise>
		           		<a href="#" class="STYLE12 STYLE14">上一页</a>
		           </c:otherwise>
		      </c:choose>
		           　<c:choose>
		           <c:when test="${pageBean.curPage < pageBean.totalPages}">
		           		<a href="${ctx }/yyzj/filmAction!listAssetByFilmId.do?filmId=${requestScope.filmID }&curPage=${pageBean.curPage+1}" class="STYLE12 STYLE14">下一页</a>
		           </c:when>
		           <c:otherwise>
		           		<a href="#" class="STYLE12 STYLE14">下一页</a>
		           </c:otherwise>
		      </c:choose>
           </td>
        </tr>
      </table></td>
    <td width="34"><img src="images/zyzj-3.jpg" width="34" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/zyzj-4.jpg" width="644" height="28" /></td>
  </tr>
</table>

<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>
