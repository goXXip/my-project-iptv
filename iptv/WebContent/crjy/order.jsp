<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="640*530" />
<title>成人教育_订购确认</title>
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
	background-color: #214c47;
}
a:link{text-decoration:none;}
a:hover{text-decoration:none;}
a:VISITED {text-decoration:none;}
.STYLE9 {color: #FFFFFF; font-size: 20px; font-family: "黑体";}
.STYLE18 {color: #f7d400; font-size: 16px; font-family: "黑体"; }
.msgDiv{margin: 0 auto;margin-top: 100px;width: 400px;color: #ffffff;font-size: 20px; }
</style>
<script type="text/javascript" src="js/global.js"></script>
</head>

<body>

<%@ include file="/crjy/head.jsp" %>

<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="33"><img src="${ctx }/crjy/images/zyzj-2.jpg" width="33" height="434" /></td>
    <td width="575" valign="top"  bgcolor="#214c47">
   		<div class="msgDiv">	   		
   			<table border="0" cellpadding="0" cellspacing="0">
				  <tr>
				    <td height="50" colspan="2"><span class="STYLE9">《${film.name }》</span></td>
				  </tr>
				  <tr>
				    <td height="40" valign="top" class="STYLE18">价格：${film.price }</td>
				    <td height="40" valign="top" class="STYLE18">有效期：${film.period }</td>
				  </tr>
				  <tr>
				    <td height="44" valign="top">
					     <a href="${ctx }/servlet/order?ContentID=${film.contentId}&filmId=${film.id}&channelId=3" id="defaultFocus">
					   		 <img src="images/anniu-01.jpg" name="Image13" width="90" height="38" border="0" id="Image13"/>
					    </a>
				    </td>
				  </tr>
			</table>
		</div>
    </td>
    <td width="32"><img src="${ctx }/crjy/images/zyzj-3.jpg" width="32" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="${ctx }/crjy/images/zyzj-4.jpg" width="640" height="26" /></td>
  </tr>
</table>

<jsp:include page="/crjy/footer.jsp"></jsp:include>

</body>
</html>
