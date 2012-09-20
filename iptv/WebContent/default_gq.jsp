<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/manager/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>高清首页</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<script type="text/javascript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
</head>

<body onload="MM_preloadImages('images/fkyy-gq-logo-2.png','images/yyzj-gq-logo-2.png')">
<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/hbyp-gq-01.jpg" width="417" height="167" /></td>
    <td><img src="images/hbyp-gq-02.jpg" width="440" height="167" /></td>
    <td><img src="images/hbyp-gq-03.jpg" width="423" height="167" /></td>
  </tr>
</table>
<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/hbyp-gq-04.jpg" width="1280" height="23" /></td>
  </tr>
</table>
<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/hbyp-gq-05.jpg" width="166" height="464" /></td>
    <td width="946" height="464" background="images/hbyp-gq-06.jpg"><table width="850" height="391" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="208"><a href="${ctx }/crazyenglish_hd/filmAction!engIndex.do?userId=${param.userId }&backUrl=${param.backUrl }&localIp=${param.localIp}" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image8','','images/fkyy-gq-logo-2.png',1)"><img src="images/fkyy-gq-logo-1.png" name="Image8" width="394" height="208" border="0" id="Image8" /></a></td>
        <td width="62">&nbsp;</td>
        <td><a href="${ctx }/yyzj_hd/filmAction!eduIndex.do?userId=${param.userId }&backUrl=${param.backUrl }&localIp=${param.localIp}" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image9','','images/yyzj-gq-logo-2.png',1)"><img src="images/yyzj-gq-logo-1.png" name="Image9" width="394" height="208" border="0" id="Image9" /></a></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="81">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td><img src="images/hbyp-gq-07.jpg" width="168" height="464" /></td>
  </tr>
</table>
<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/hbyp-gq-08.jpg" width="1280" height="66" /></td>
  </tr>
</table>
</body>
</html>
