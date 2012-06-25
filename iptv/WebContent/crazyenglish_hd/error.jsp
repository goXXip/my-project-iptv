<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="1280*720" />
<title>疯狂英语_错误页面</title>
<style type="text/css">
body {
    letter-spacing: -1px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "黑体";
	width:1280px;
	height:720px;
}
a:link{text-decoration:none;}
a:hover{text-decoration:none;}
a:VISITED {text-decoration:none;}
.STYLE25 {font-size: 36px; color: #FFFFFF; font-family: "黑体"; }
.STYLE26 {color: #FF9900;font-size: 24px;font-family: "黑体";}
.msgDiv{margin: 0 auto;margin-top: 200px;width: 800px;color: #ffffff;font-size: 26px; }
</style>
<script type="text/javascript" src="js/global.js"></script>

</head>

<body>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><a href="${ctx }/crazyenglish_hd/filmAction!engIndex.do" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image8','','${ctx }/crazyenglish_hd/images/fkyy-gq-1-2.jpg',1)"><img src="${ctx }/crazyenglish_hd/images/fkyy-gq-1.jpg" name="Image8" width="302" height="101" border="0" id="Image8" /></a></td>
    <td width="652" align="right" background="${ctx }/crazyenglish_hd/images/fkyy-gq-2.jpg"><a href="${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId=5&channelId=2" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image9','','${ctx }/crazyenglish_hd/images/fkyy-gq-14-2.jpg',1)"><img src="${ctx }/crazyenglish_hd/images/fkyy-gq-14.jpg" name="Image9" width="227" height="101" border="0" id="Image9" /></a></td>
    <td><a href="${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId=4&channelId=2" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image10','','${ctx }/crazyenglish_hd/images/fkyy-gq-3-2.jpg',1)"><img src="${ctx }/crazyenglish_hd/images/fkyy-gq-3.jpg" name="Image10" width="326" height="101" border="0" id="Image10" /></a></td>
  </tr>
</table>
<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="69"><img src="${ctx }/crazyenglish_hd/images/fkyy-gq-4.jpg" width="69" height="590"/></td>
    <td width="1142" valign="top" bgcolor="#602121"><table width="100" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="15"></td>
      </tr>
    </table>
      <table width="1112" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr><td>
      	 <div class="msgDiv">
	      	 <c:choose>
	   				<c:when test="${requestScope.msg != null}">${requestScope.msg }</c:when>
	   				<c:otherwise>应用暂时不能访问,请稍后,按首页键返回</c:otherwise>
	   		 </c:choose>
      	 </div>
      </td></tr>
      </table>
      </td>
    <td><img src="${ctx }/crazyenglish_hd/images/fkyy-gq-5.jpg" width="69" height="590" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="${ctx }/crazyenglish_hd/images/fkyy-gq-6.jpg" width="1280" height="29" /></td>
  </tr>
</table>

</body>
</html>
