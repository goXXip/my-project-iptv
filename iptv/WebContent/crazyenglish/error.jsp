<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="640*530" />
<title>疯狂英语_错误页面</title>
<style type="text/css">
<!--
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
a{display: inline-block;text-decoration:none;}
.msgDiv{margin: 0 auto;margin-top: 100px;width: 400px;color: #ffffff;font-size: 20px; }
-->
</style>
<script type="text/javascript" src="js/global.js"></script>

</head>

<body bgcolor="transparent">

<%@ include file="/crazyenglish/head.jsp" %>
<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="33"><img src="${ctx }/crazyenglish/images/lyfkyy-2.jpg" width="33" height="434" /></td>
    <td width="575" valign="top" bgcolor="#602121">
   		<div class="msgDiv">
   			<c:choose>
   				<c:when test="${requestScope.msg != null}">${requestScope.msg }</c:when>
   				<c:otherwise>应用暂时不能访问,请稍后,按首页键返回</c:otherwise>
   			</c:choose>
   		</div>
    </td>
    <td width="32"><img src="${ctx }/crazyenglish/images/lyfkyy-3.jpg" border="0" width="32" height="434" /></td>
  </tr>
  <tr>
      <td colspan="3"><img src="images/lyfkyy-4.jpg" width="640" height="26" border="0"/></td>
  </tr>
</table>

<jsp:include page="/crazyenglish/footer.jsp"></jsp:include>
</body>
</html>
