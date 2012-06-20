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
.STYLE15 {
	color: #edff6f;
	font-size: 24px;
	font-family: "黑体";
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
		location.href =  "${ctx}/yyzj_hd/filmAction!detail.do?filmId=${requestScope.filmID }&from=${requestScope.from}";
		return 0;
		break;
	case 33://上一页
		if(curPage > 1){
			var pageNo = curPage-1 ;
			var url = "${ctx }/yyzj_hd/filmAction!listAssetByFilmId.do?filmId=${requestScope.filmID }&curPage="+pageNo;
			location.href = url;
		}
		return 0;
		break;
	case 34://下一页
		if( curPage < totalPages){
			var pageNo = curPage+1 ;
			var url = "${ctx }/yyzj_hd/filmAction!listAssetByFilmId.do?filmId=${requestScope.filmID }&curPage="+pageNo;
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


	var epg_server = '${requestScope.localIp}';
	function goto_play(id,fileID,ztID,filmId){
		var pay_confirm_url = "${ctx}/yyzj_hd/filmAction!orderConfirm.do?filmId="+filmId;
		var backUrl = "${ctx}/yyzj_hd/filmAction!listAssetByFilmId.do?filmId="+filmId+"&curPage=${pageBean.curPage}";
		backUrl = escape(backUrl);
		var vodName =  escape("太空娃娃1");
		if(epg_server.indexOf("defaultwghd")>0){
			//location.href = epg_server + "HD_Authorization.jsp?CONTENTTYPE=0&BUSINESSTYPE=1&PROGID="+fileID+"&TYPE_ID=-1&PLAYTYPE=1&vodName="+vodName;
		}
		else{
			location.href = epg_server + "au_PlayFilm.jsp?PROGID="+fileID+"&PLAYTYPE=1&CONTENTTYPE=0&BUSINESSTYPE=1&ONECEPRICE=0&ISTVSERIESFLAG=1&FATHERSERIESID="+ztID+"&TYPEID=-1"+ "&backurl=" + backUrl;;
		}
	}

	function focusStyle_episode(target, className) {
		if(document.getElementById(target) != "undefined") {
			document.getElementById(target).className = className;
		}
	}
	
</script>

</head>

<body onload="MM_preloadImages('images/lyfkyy-1-2-2.jpg','images/lyfkyy-1-3-2.jpg')">
<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/yyzj-gq-1.jpg" width="588" height="101" /></td>
    <td width="652"><img src="images/yyzj-gq-2.jpg" width="196" height="101" border="0" usemap="#Map2" /></td>
    <td><img src="images/yyzj-gq-3.jpg" width="206" height="101" border="0" usemap="#Map3" /></td>
    <td><img src="images/yyzj-gq-4.jpg" width="290" height="101" border="0" usemap="#Map4" /></td>
  </tr>
</table>
<map name="Map2" id="Map2">
  <area shape="rect" coords="2,22,195,88" href="#" />
</map>
<map name="Map3" id="Map3">
  <area shape="rect" coords="8,25,196,87" href="#" />
</map>
<map name="Map4" id="Map4">
  <area shape="rect" coords="12,25,201,87" href="#" />
</map>
<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="65"><img src="images/yyzj-gq-5.jpg" width="65" height="591" /></td>
    <td width="1142" valign="top" bgcolor="214c47"><table width="100" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="15"></td>
      </tr>
    </table>
      <table border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="1017" height="75" valign="top"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#A0F3EB">
            <tr>
              <td width="998" height="65" bordercolor="214c47" background="images/yyzj-gq-8.jpg" bgcolor="214c47"><table border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="933" height="45" class="STYLE17 STYLE18"><span class="STYLE15">第一集 孕妇保健与婴儿护理保健与</span><span class="STYLE15">保健与</span></td>
                    <td width="17" class="STYLE17 STYLE18"><img src="images/sanjiao-1.png" width="12" height="18" /></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="75" valign="top"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#A0F3EB">
            <tr>
              <td width="998" height="65" bordercolor="214c47" background="images/yyzj-gq-8.jpg" bgcolor="214c47"><table border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="933" height="45" class="STYLE17 STYLE18"><span class="STYLE15">第二集 孕妇保健与婴儿护理保健</span></td>
                    <td width="17" class="STYLE17 STYLE18"><img src="images/sanjiao-1.png" width="12" height="18" /></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="75" valign="top"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#A0F3EB">
            <tr>
              <td width="998" height="65" bordercolor="214c47" background="images/yyzj-gq-8.jpg" bgcolor="214c47"><table border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="933" height="45" class="STYLE17 STYLE18"><span class="STYLE15">第三集 孕妇保健与婴儿护</span><span class="STYLE15">健与</span></td>
                    <td width="17" class="STYLE17 STYLE18"><img src="images/sanjiao-1.png" width="12" height="18" /></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="75" valign="top"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#A0F3EB">
            <tr>
              <td width="998" height="65" bordercolor="214c47" background="images/yyzj-gq-8.jpg" bgcolor="214c47"><table border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="933" height="45" class="STYLE17 STYLE18"><span class="STYLE15">第四集 孕妇保健与婴儿护理保健与</span><span class="STYLE15">保健与健与保健</span></td>
                    <td width="17" class="STYLE17 STYLE18"><img src="images/sanjiao-1.png" width="12" height="18" /></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="75" valign="top"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#A0F3EB">
            <tr>
              <td width="998" height="65" bordercolor="214c47" background="images/yyzj-gq-8.jpg" bgcolor="214c47"><table border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="933" height="45" class="STYLE17 STYLE18"><span class="STYLE15">第五集 孕妇保健与婴儿护理保健与</span><span class="STYLE15">保健与</span></td>
                    <td width="17" class="STYLE17 STYLE18"><img src="images/sanjiao-1.png" width="12" height="18" /></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="75" valign="top"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#A0F3EB">
            <tr>
              <td width="998" height="65" bordercolor="214c47" background="images/yyzj-gq-8.jpg" bgcolor="214c47"><table border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="933" height="45" class="STYLE17 STYLE18"><span class="STYLE15">第六集 孕妇保健与婴儿护理保健</span></td>
                    <td width="17" class="STYLE17 STYLE18"><img src="images/sanjiao-1.png" width="12" height="18" /></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="75" valign="top"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#A0F3EB">
            <tr>
              <td width="998" height="65" bordercolor="214c47" background="images/yyzj-gq-8.jpg" bgcolor="214c47"><table border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="933" height="45" class="STYLE17 STYLE18"><span class="STYLE15">第七集 孕妇保健与婴儿护理保健与</span><span class="STYLE15">保健与</span><span class="STYLE15">健与</span><span class="STYLE15">保健健与保健</span></td>
                    <td width="17" class="STYLE17 STYLE18"><img src="images/sanjiao-1.png" width="12" height="18" /></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="40" align="center"><span class="STYLE12 STYLE14 STYLE24 STYLE18">1/8  　上一页　下一页</span></td>
        </tr>
      </table></td>
    <td width="73"><img src="images/yyzj-gq-6.jpg" width="73" height="591" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/yyzj-gq-7.jpg" width="1280" height="28" /></td>
  </tr>
</table>


<map name="Map" id="Map"><area shape="rect" coords="15,24,244,89" href="#" /></map></body>
</html>
