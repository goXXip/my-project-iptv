<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="1280*720" />
<title>成人教育_错误页面</title>
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

<%@ include file="/crjy_hd/head.jsp" %>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="65"><img src="${ctx }/crjy_hd/images/yyzj-gq-5.jpg" width="65" height="591" /></td>
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
    <td width="73"><img src="${ctx }/crjy_hd/images/yyzj-gq-6.jpg" width="73" height="591" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="${ctx }/crjy_hd/images/yyzj-gq-7.jpg" width="1280" height="28" /></td>
  </tr>
</table>

</body>
</html>
