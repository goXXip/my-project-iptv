<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="1280*720" />
<title>孕育早教_错误页面</title>
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
a:link{text-decoration:none;color: #f7d400;}
a:hover{text-decoration:none;color: #f7d400;}
a:VISITED {text-decoration:none;color: #f7d400;}
.msgDiv{margin: 0 auto;margin-top: 200px;width: 800px;color: #ffffff;font-size: 26px; }

</style>

<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/global.js"></script>

</head>

<body>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="65" background="${ctx }/yyzj_hd/images/yyzj-gq-14.jpg">&nbsp;</td>
    <td><a href="${ctx }/yyzj_hd/filmAction!eduIndex.do" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image9','','${ctx }/yyzj_hd/images/yyzj-gq-1-2.jpg',1)"><img src="${ctx }/yyzj_hd/images/yyzj-gq-1.jpg" name="Image9" width="240" height="101" border="0" id="Image9" /></a></td>
    <td><img src="${ctx }/yyzj_hd/images/yyzj-gq-15.jpg" width="282" height="101" /></td>
    <td><a href="${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=1&channelId=1" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image11','','${ctx }/yyzj_hd/images/yyzj-gq-2-2.jpg',1)"><img src="${ctx }/yyzj_hd/images/yyzj-gq-2.jpg" name="Image11" width="196" height="101" border="0" id="Image11" /></a></td>
    <td><a href="${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=2&channelId=1" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image12','','${ctx }/yyzj_hd/images/yyzj-gq-3-2.jpg',1)"><img src="${ctx }/yyzj_hd/images/yyzj-gq-3.jpg" name="Image12" width="213" height="101" border="0" id="Image12" /></a></td>
    <td><a href="${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=3&channelId=1" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image13','','${ctx }/yyzj_hd/images/yyzj-gq-4-2.jpg',1)"><img src="${ctx }/yyzj_hd/images/yyzj-gq-4.jpg" name="Image13" width="213" height="101" border="0" id="Image13" /></a></td>
    <td width="71" background="${ctx }/yyzj_hd/images/yyzj-gq-14.jpg">&nbsp;</td>
  </tr>
</table>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="65"><img src="${ctx }/yyzj_hd/images/yyzj-gq-5.jpg" width="65" height="591" /></td>
    <td width="1142" valign="top" bgcolor="214c47"><table width="100" border="0" cellspacing="0" cellpadding="0">
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
    <td width="73"><img src="${ctx }/yyzj_hd/images/yyzj-gq-6.jpg" width="73" height="591" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="${ctx }/yyzj_hd/images/yyzj-gq-7.jpg" width="1280" height="28" /></td>
  </tr>
</table>

</body>
</html>
