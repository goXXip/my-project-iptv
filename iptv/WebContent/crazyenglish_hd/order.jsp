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
	width:1280px;
	height:720px;
}
a:link{text-decoration:none;}
a:hover{text-decoration:none;}
a:VISITED {text-decoration:none;}
.STYLE25 {font-size: 36px; color: #FFFFFF; font-family: "黑体"; }
.STYLE26 {color: #FF9900;font-size: 24px;font-family: "黑体";}
.msgDiv{margin: 0 auto;margin-top: 200px;width: 800px;color: #ffffff;font-size: 24px; }
</style>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/global.js"></script>

</head>

<body>

<%@ include file="/crazyenglish_hd/head.jsp" %>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="69"><img src="images/fkyy-gq-4.jpg" width="69" height="590"/></td>
    <td width="1142" valign="top" bgcolor="602121"><table width="100" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="15"></td>
      </tr>
    </table>
      <table width="1112" border="0" align="center" cellpadding="0" cellspacing="0">
	      <tr><td>
	      	 <div class="msgDiv">
		      	 <table border="0" cellpadding="0" cellspacing="0">
		      	      <tr>
				          <td width="252" rowspan="4" valign="top"><img src="images/fkyy-gq-9.jpg" width="200" height="275" /></td>
				          <td height="70" colspan="2"><span class="STYLE25">《${film.name }》</span></td>
				      </tr>
				      <tr>
				          <td height="70" valign="top" class="STYLE26">集数：${film.serialCount }集 <br />
				            价格：${film.price }</td>
				          <td height="70" valign="top" class="STYLE26">主讲：${film.actor }<br />
				            期限：${film.period }</td>
				          <td height="70" valign="top" class="STYLE26">适用：${film.audient }</td>
				        </tr>
				        <tr>
				          <td width="286" height="76" valign="top">
					          <a href="${ctx }/servlet/order?ContentID=${film.contentId}&filmId=${film.id}&channelId=1" id="defaultFocus" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('order_img','','images/fkyy-gq-11-2.jpg',1)">
					          	<img src="images/fkyy-gq-11.jpg" width="209" height="58" border="0" id="order_img"/>
					          </a>
				          </td>
				          <td width="286" valign="top"></td>
				          <td width="288" valign="top"></td>
				        </tr>
		      	 </table>	 
	      	 </div>
	      </td></tr>
      </table>
      </td>
    <td><img src="images/fkyy-gq-5.jpg" width="69" height="590" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/fkyy-gq-6.jpg" width="1280" height="29" /></td>
  </tr>
</table>

</body>
</html>
