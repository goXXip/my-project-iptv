<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="1280*720" />
<title>孕育早教</title>
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
.style151 {font-size: 24px;
	color: #FFFFFF;
	font-family: "黑体";
}
.STYLE27 {
	font-size: 36px;
	color: #edff6f;
}
.STYLE28 {
	font-size: 24px;
	color: #edff6f;
}
a:link{text-decoration:none;}
a:hover{text-decoration:none;}
a:VISITED {text-decoration:none;}
.STYLE9 {color: #FFFFFF; font-size: 36px; font-family: "黑体";}
.STYLE18 {color: #f7d400; font-size: 24px; font-family: "黑体"; }
.msgDiv{margin: 0 auto;margin-top: 50px;width: 1000px;color: #ffffff;font-size: 24px; }
.messageinfo{margin: 0 auto;margin-top: 10px;width: 1000px;color: #ffffff;font-size: 22px;line-height: 34px;text-align: left;}
</style>

<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/global.js"></script>

</head>

<body>

<%@ include file="/yyzj_hd/head.jsp" %>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="65"><img src="images/yyzj-gq-5.jpg" width="65" height="591" /></td>
    <td width="1142" valign="top" bgcolor="214c47"><table width="100" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="15"></td>
      </tr>
    </table>
      <table width="1112" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr><td>
            <div class="messageinfo">
    			温馨提示：您即将订购的是孕育早教产品包（含孕育保健、婴幼早教、少儿成长），成功订购后您可在30天内随意观看孕育早教产品包内的所有节目。
    		</div>
           <div class="msgDiv">	   		
	   			<table border="0" cellpadding="0" cellspacing="0">
					  <tr>
					    <td width="450" rowspan="4" valign="top"><img src="${ctx }/uploadImages/${film.bigImage_HD.id}.${film.bigImage_HD.suffix}" width="385" height="263" /></td>
					    <td height="70" colspan="2"><span class="STYLE9">《${film.name }》</span></td>
					  </tr>
					  <tr>
					    <td height="40" valign="top" class="STYLE18">价格：20元/月</td>
					    <td height="40" valign="top" class="STYLE18">有效期：一个月</td>
					  </tr>
					  <tr>
					    <td height="44" valign="top">
						    <a href="${ctx }/servlet/order?ContentID=${film.contentId}&filmId=${film.id}&channelId=1&hd_flag=hd" id="defaultFocus" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('order_img','','images/yyzj-gq-13-2.jpg',1)">
						   		 <img src="images/yyzj-gq-13.jpg" width="209" height="58" border="0" id="order_img"/>
						    </a>
					    </td>
					    <td>&nbsp;</td>
					  </tr>
				</table>
		   </div>
         </td></tr>
      </table>
      </td>
    <td width="73"><img src="images/yyzj-gq-6.jpg" width="73" height="591" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/yyzj-gq-7.jpg" width="1280" height="28" /></td>
  </tr>
</table>

</body>
</html>
