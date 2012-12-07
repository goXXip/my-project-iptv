<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="640*530" />
<title>孕育早教_订购确认</title>
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
a{display: inline-block;text-decoration:none;}
.STYLE9 {color: #FFFFFF; font-size: 20px; font-family: "黑体";}
.STYLE18 {color: #f7d400; font-size: 16px; font-family: "黑体"; }
.msgDiv{margin: 0 auto;margin-top: 30px;width: 520px;color: #ffffff;font-size: 20px; }
.messageinfo{margin: 0 auto;margin-top: 10px;width: 520px;color: #ffffff;font-size: 18px;line-height: 30px;text-align: left;}
</style>
<script type="text/javascript" src="js/global.js"></script>
</head>

<body>

<%@ include file="/yyzj/head.jsp" %>

<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="33"><img src="${ctx }/yyzj/images/zyzj-2.jpg" width="33" height="434" /></td>
    <td width="575" valign="top"  bgcolor="#214c47">
        <div class="messageinfo">
    		温馨提示：您即将订购的是孕育早教产品包（含孕育保健、婴幼早教、少儿成长），成功订购后您可在30天内随意观看孕育早教产品包内的所有节目。
    	</div>
   		<div class="msgDiv">	   		
   			<table border="0" cellpadding="0" cellspacing="0">
				  <tr>
				  	 <td width="144" rowspan="3" valign="top"><img src="${ctx }/uploadImages/${film.bigImage.id}.${film.bigImage.suffix}" width="128" height="170" /></td>
				     <td height="50"><span class="STYLE9">《${film.name }》</span></td>
				  </tr>
				  <tr>
				    <td height="40" valign="top">
				    	<span class="STYLE18">价格：20元/月</span>
				    	<span class="STYLE18" style="padding-left: 30px;">有效期：一个月</span>
				    </td>
				  </tr>
				  <tr>
				    <td height="44" valign="top">
					     <a href="${ctx }/servlet/order?ContentID=${film.contentId}&filmId=${film.id}&channelId=1" id="defaultFocus">
					   		 <img src="images/anniu-01.jpg" name="Image13" width="90" height="38" border="0" id="Image13"/>
					    </a>
				    </td>
				  </tr>
			</table>
		</div>
    </td>
    <td width="32"><img src="${ctx }/yyzj/images/zyzj-3.jpg" width="32" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="${ctx }/yyzj/images/zyzj-4.jpg" width="640" height="26" /></td>
  </tr>
</table>

<jsp:include page="/yyzj/footer.jsp"></jsp:include>

</body>
</html>
