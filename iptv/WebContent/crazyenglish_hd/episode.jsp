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
.STYLE17 {color: #FBB90B; font-size: 18px; font-family: "黑体"; }
.STYLE18 {
	font-size: 24px
}
.STYLE24 {
	color: #FFFFFF;
	font-size: 24px;
}
</style>

<script type="text/javascript">
var curPage =  ${pageBean.curPage};
var totalPages = ${pageBean.totalPages};

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
		location.href =  "${ctx}/crazyenglish_hd/filmAction!detail.do?filmId=${requestScope.filmID }&from=${requestScope.from}";
		return 0;
		break;
	case 33://上一页
		if(curPage > 1){
			var pageNo = curPage-1 ;
			var url = "${ctx }/crazyenglish_hd/filmAction!listAssetByFilmId.do?filmId=${requestScope.filmID }&curPage="+pageNo;
			location.href = url;
		}
		return 0;
		break;
	case 34://下一页
		if( curPage < totalPages){
			var pageNo = curPage+1 ;
			var url = "${ctx }/crazyenglish_hd/filmAction!listAssetByFilmId.do?filmId=${requestScope.filmID }&curPage="+pageNo;
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
 * @param className
 */
function focusStyle(target, className) {
	if($(target) != "undefined") {
		$(target).className = className;
	}
}

var epg_server = '${requestScope.localIp}';
function goto_play(id,fileID,ztID,filmId){
	var pay_confirm_url = "${ctx}/crazyenglish_hd/filmAction!orderConfirm.do?filmId="+filmId;
	var currentPage = "${pageBean.curPage}";
	var backUrl = "${ctx}/crazyenglish_hd/filmAction!listAssetByFilmId.do?filmId="+filmId+"&curPage="+currentPage;
	backUrl = escape(backUrl);
	if(epg_server.indexOf("defaultwghd")>0){
		//location.href = epg_server + "HD_Authorization.jsp?CONTENTTYPE=0&BUSINESSTYPE=1&PROGID="+fileID+"&TYPE_ID=-1&PLAYTYPE=1&vodName=a";
	}else{
		location.href = epg_server + "au_PlayFilm.jsp?PROGID="+fileID+"&PLAYTYPE=1&CONTENTTYPE=0&BUSINESSTYPE=1&ONECEPRICE=0&ISTVSERIESFLAG=1&FATHERSERIESID="+ztID+"&TYPEID=-1"+ "&backurl=" + backUrl;
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
      <table border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="1017" height="75" valign="top"><table border="1" cellpadding="0" cellspacing="0" bordercolor="facb50">
          <tr>
            <td width="998" height="65" bordercolor="602121" background="images/fkyy-gq-8.jpg" bgcolor="602121"><table border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="933" height="45" class="STYLE17 STYLE18">第一集 疯狂英语集训英语集训英语集训营精彩视频</td>
                  <td width="17" class="STYLE17 STYLE18"><img src="images/sanjiao-1.png" width="12" height="18" /></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
        </tr>
      <tr>
        <td height="75" valign="top"><table border="1" cellpadding="0" cellspacing="0" bordercolor="facb50">
          <tr>
            <td width="998" height="65" bordercolor="602121" background="images/fkyy-gq-8.jpg" bgcolor="602121"><table border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="933" height="45" class="STYLE17 STYLE18">第二集 疯狂英语训营精彩视频</td>
                  <td width="17" class="STYLE17 STYLE18"><img src="images/sanjiao-1.png" alt="" width="12" height="18" /></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="75" valign="top"><table border="1" cellpadding="0" cellspacing="0" bordercolor="facb50">
          <tr>
            <td width="998" height="65" bordercolor="602121" background="images/fkyy-gq-8.jpg" bgcolor="602121"><table border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="933" height="45" class="STYLE17 STYLE18">第三集 疯狂英语集英训营精彩视频</td>
                  <td width="17" class="STYLE17 STYLE18"><img src="images/sanjiao-1.png" alt="" width="12" height="18" /></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="75" valign="top"><table border="1" cellpadding="0" cellspacing="0" bordercolor="facb50">
          <tr>
            <td width="998" height="65" bordercolor="602121" background="images/fkyy-gq-8.jpg" bgcolor="602121"><table border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="933" height="45" class="STYLE17 STYLE18">第四集 疯狂英语集训营精彩视频</td>
                  <td width="17" class="STYLE17 STYLE18"><img src="images/sanjiao-1.png" alt="" width="12" height="18" /></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="75" valign="top"><table border="1" cellpadding="0" cellspacing="0" bordercolor="facb50">
          <tr>
            <td width="998" height="65" bordercolor="602121" background="images/fkyy-gq-8.jpg" bgcolor="602121"><table border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="933" height="45" class="STYLE17 STYLE18">第五集 疯狂英语集英语集训训营精彩视频</td>
                  <td width="17" class="STYLE17 STYLE18"><img src="images/sanjiao-1.png" alt="" width="12" height="18" /></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="75" valign="top"><table border="1" cellpadding="0" cellspacing="0" bordercolor="facb50">
          <tr>
            <td width="998" height="65" bordercolor="602121" background="images/fkyy-gq-8.jpg" bgcolor="602121"><table border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="933" height="45" class="STYLE17 STYLE18">第六集 疯狂英语集英语集训英训营精彩视频</td>
                  <td width="17" class="STYLE17 STYLE18"><img src="images/sanjiao-1.png" alt="" width="12" height="18" /></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="75" valign="top"><table border="1" cellpadding="0" cellspacing="0" bordercolor="facb50">
          <tr>
            <td width="998" height="65" bordercolor="602121" background="images/fkyy-gq-8.jpg" bgcolor="602121"><table border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="933" height="45" class="STYLE17 STYLE18">第七集 疯狂英语集营精彩视频</td>
                  <td width="17" class="STYLE17 STYLE18"><img src="images/sanjiao-1.png" alt="" width="12" height="18" /></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="40" align="center"><span class="STYLE12 STYLE14 STYLE24">1/8  　上一页　下一页</span></td>
      </tr>
    </table>
    </td>
    <td><img src="images/fkyy-gq-5.jpg" width="69" height="590" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/fkyy-gq-6.jpg" width="1280" height="29" /></td>
  </tr>
</table>

<%@ include file="/crazyenglish_hd/footer.jsp" %>
</body>
</html>
