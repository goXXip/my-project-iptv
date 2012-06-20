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
	width: 1280px;
	height:720px;
}
.STYLE13 {font-family: "黑体"; font-size: 15px; color: #FFFFFF; }
.STYLE20 {font-size: 18px}
.STYLE21 {
	color: #FBB90B;
	font-size: 18px;
}
.STYLE22 {font-size: 18}
.STYLE23 {font-size: 20px}
.style15 {	font-size: 24px;
	color: #FFFFFF;
	font-family: "黑体";
}
.style171 {color: #FF9900; font-size: 16px; font-family: "黑体"; }
.STYLE25 {font-size: 36px; color: #FFFFFF; font-family: "黑体"; }
.STYLE26 {
	color: #FF9900;
	font-size: 24px;
	font-family: "黑体";
}
</style>
<script type="text/javascript">
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
</script>

<script type="text/javascript">
var from = "${requestScope.from}";
var columnID = "${requestScope.columnID}";
var $ = function(id){
	var o = document.getElementById(id);
	return o;
};
window.onload = function() {
	if($("defaultFocus") != "undefined" && $("defaultFocus") != null) {
		$("defaultFocus").focus();
	}
};
function keyEvent() {
	var keyCode;
	var keyCode = event.keyCode;
	if(!keyCode||keyCode=="undefined"){
		keyCode = event.which;
	}
	switch(keyCode) {
	case 8:
	case 109:
	case 283:
		//window.history.back();
		if(from == "index"){
			location.href = "${ctx }/crazyenglish_hd/filmAction!engIndex.do";
		}
		else if(from == "column"){
			location.href = "${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId=" +columnID +"&channelId=2";
		}
		else{
			location.href = "${ctx }/crazyenglish_hd/filmAction!engIndex.do";
		}
		return 0;
		break;
	default:
		return 1;
	}
}
document.onirkeypress = keyEvent;
document.onkeypress = keyEvent;

/**
 * 焦点时的样式
 * @param target 焦点目标
 */
function focusStyle(target, className) {
	if($(target) != "undefined") {
		$(target).className = className;
	}
}
</script>
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
        <tr>
          <td width="252" rowspan="4" valign="top"><img src="images/fkyy-gq-9.jpg" width="200" height="275" /></td>
          <td height="70" colspan="3"><span class="STYLE25">《中学生英语能力综合教程》</span></td>
        </tr>
        <tr>
          <td height="138" colspan="3" valign="top" class="style15">简介：<br />
            李阳全新独创的发音手势符号，让你轻松掌握发音要诀！让你轻松掌握发音要诀！让你轻松掌握发音要诀！让你轻松掌握发音要诀！让你轻松掌握发音要诀！3000个实用单词，500个精彩句子，使你成为叱咤风云的演讲家!</td>
        </tr>
        <tr>
          <td height="70" valign="top" class="STYLE26">集数：120集 <br />
            价格：免费 </td>
          <td height="70" valign="top" class="STYLE26">主讲：李阳<br />
            期限：3个月</td>
          <td height="70" valign="top" class="STYLE26">适用：初中生</td>
        </tr>
        <tr>
          <td width="286" height="76" valign="top"><a href="#"><img src="images/fkyy-gq-13.jpg" width="209" height="58" border="0" /></a></td>
          <td width="286" valign="top"><a href="#"><img src="images/fkyy-gq-12.jpg" width="209" height="58" border="0" /></a></td>
          <td width="288" valign="top"></td>
        </tr>
      </table>
      <table height="146" border="1" align="center" cellpadding="0" cellspacing="12" bordercolor="602121">
        <tr>
          <td width="268" height="185" bordercolor="facb50" bgcolor="#972C28"><table border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="132" height="165"><img src="images/fkyy-gq-10.jpg" height="165" /></td>
              <td width="116" valign="top"><p class="STYLE13"><span class="STYLE23">现代美国英语900句</span><br />
                  <br />
                  <span class="STYLE22"><span class="STYLE20">主讲：李阳</span><br />
                  <span class="STYLE21">免费</span></span></p>                </td>
            </tr>
            
          </table></td>
          <td width="269" bordercolor="facb50" bgcolor="#972C28"><table border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="132" height="165"><img src="images/fkyy-gq-10.jpg" height="165" /></td>
              <td width="116" valign="top"><p class="STYLE13"><span class="STYLE23">现代美国英语900句</span><br />
                      <br />
                      <span class="STYLE22"><span class="STYLE20">主讲：李阳</span><br />
                      <span class="STYLE21">免费</span></span></p></td>
            </tr>
          </table></td>
          <td width="269" bordercolor="facb50" bgcolor="#972C28"><table border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="132" height="165"><img src="images/fkyy-gq-10.jpg" height="165" /></td>
              <td width="116" valign="top"><p class="STYLE13"><span class="STYLE23">现代美国英语900句</span><br />
                      <br />
                      <span class="STYLE22"><span class="STYLE20">主讲：李阳</span><br />
                      <span class="STYLE21">免费</span></span></p></td>
            </tr>
          </table></td>
          <td width="268" bordercolor="facb50" bgcolor="#972C28"><table border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="132" height="165"><img src="images/fkyy-gq-10.jpg" height="165" /></td>
              <td width="116" valign="top"><p class="STYLE13"><span class="STYLE23">现代美国英语900句</span><br />
                      <br />
                      <span class="STYLE22"><span class="STYLE20">主讲：李阳</span><br />
                      <span class="STYLE21">免费</span></span></p></td>
            </tr>
          </table></td>
        </tr>
    </table></td>
    <td><img src="images/fkyy-gq-5.jpg" width="69" height="590" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/fkyy-gq-6.jpg" width="1280" height="29" /></td>
  </tr>
</table>

<%@ include file="/crazyenglish_hd/footer.jsp" %>
</body>
</html>
