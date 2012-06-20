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
.STYLE17 {color: #FBB90B; font-size: 18px; font-family: "黑体"; }
.STYLE18 {
	font-size: 24px;
	color: #FFFFFF;
}
.STYLE19 {
	color: #FFFFFF;
	font-size: 18px;
}
.STYLE15 {
	color: #edff6f;
	font-size: 24px;
	font-family: "黑体";
}
.STYLE25 {
	color: #FFFFFF;
	font-size: 18px;
	font-family: "黑体";
}
.STYLE24 {color: #FFFFFF}
</style>

<script type="text/javascript">
var curPage =  ${pageBean.curPage};
var totalPages = ${pageBean.totalPages};
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
		location.href = "${ctx }/yyzj_hd/filmAction!eduIndex.do";
		return 0;
		break;
	case 33://上一页
		if( curPage > 1){
			var pageNo = curPage-1 ;
			var url = "${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId="+columnID+"&curPage="+pageNo+"&pageSize=12";
			location.href = url;
		}
		return 0;
		break;
	case 34://下一页
		if( curPage < totalPages){
			var pageNo = curPage+1 ;
			var url = "${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId="+columnID+"&curPage="+pageNo+"&pageSize=12";
			location.href = url;
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
};

</script>

</head>

<body>
<%@ include file="/yyzj_hd/head.jsp" %>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="65"><img src="images/yyzj-gq-5.jpg" width="65" height="591" /></td>
    <td width="1142" valign="top" bgcolor="214c47"><table width="100" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="40"></td>
      </tr>
    </table>
      <table border="0" align="center" cellpadding="0" cellspacing="5">
        <tr>
          <td width="223" height="177" align="center"><img src="images/yyzj-gq-10.jpg" width="220" height="150" /></td>
          <td width="222" align="center"><img src="images/yyzj-gq-10.jpg" alt="" width="220" height="150" /></td>
          <td width="222" align="center"><img src="images/yyzj-gq-10.jpg" alt="" width="220" height="150" /></td>
          <td width="222" align="center"><img src="images/yyzj-gq-10.jpg" alt="" width="220" height="150" /></td>
          <td width="223" align="center"><img src="images/yyzj-gq-10.jpg" alt="" width="220" height="150" /></td>
        </tr>
        <tr>
          <td height="30" align="center" valign="top"><span class="STYLE25">孕妇保健与婴儿护理</span></td>
          <td align="center" valign="top"><span class="STYLE25">孕妇保健与婴儿护理</span></td>
          <td align="center" valign="top"><span class="STYLE25">孕妇保健与婴儿护理</span></td>
          <td align="center" valign="top"><span class="STYLE25">孕妇保健与婴儿护理</span></td>
          <td align="center" valign="top"><span class="STYLE25">孕妇保健与婴儿护理</span></td>
        </tr>
    </table>
      <table border="0" align="center" cellpadding="0" cellspacing="5">
        <tr>
          <td width="223" height="177" align="center"><img src="images/yyzj-gq-10.jpg" width="220" height="150" /></td>
          <td width="222" align="center"><img src="images/yyzj-gq-10.jpg" alt="" width="220" height="150" /></td>
          <td width="222" align="center"><img src="images/yyzj-gq-10.jpg" alt="" width="220" height="150" /></td>
          <td width="222" align="center"><img src="images/yyzj-gq-10.jpg" alt="" width="220" height="150" /></td>
          <td width="223" align="center"><img src="images/yyzj-gq-10.jpg" alt="" width="220" height="150" /></td>
        </tr>
        <tr>
          <td height="30" align="center" valign="top"><span class="STYLE25">孕妇保健与婴儿护理</span></td>
          <td align="center" valign="top"><span class="STYLE25">孕妇保健与婴儿护理</span></td>
          <td align="center" valign="top"><span class="STYLE25">孕妇保健与婴儿护理</span></td>
          <td align="center" valign="top"><span class="STYLE25">孕妇保健与婴儿护理</span></td>
          <td align="center" valign="top"><span class="STYLE25">孕妇保健与婴儿护理</span></td>
        </tr>
      </table>
      <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="100" align="center"><span class="STYLE12 STYLE14 STYLE24 STYLE18">1/8  　上一页　下一页</span></td>
        </tr>
      </table></td>
    <td width="73"><img src="images/yyzj-gq-6.jpg" width="73" height="591" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/yyzj-gq-7.jpg" width="1280" height="28" /></td>
  </tr>
</table>

<%@ include file="/yyzj_hd/footer.jsp" %>

</body>
</html>
