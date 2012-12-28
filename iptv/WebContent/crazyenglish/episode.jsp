<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="640*530" />
<title>李阳疯狂英语</title>
<style type="text/css">
body {
	letter-spacing: -1px;margin: 0px;
	width: 640px;height: 530px;font-family: "黑体";
}
.img{border-color:yellow;border-width:2px;}
.STYLE14 {font-family: "黑体";color: #FFFFFF;font-size: 16px;float: left;padding: 5px 10px 5px 10px;}
.STYLE15 {font-family: "黑体";color: #FFFFFF;font-size: 16px;float: left;padding: 5px 10px 5px 10px;border: 2px solid yellow;}
.titleon {
	float: left;width:533px; height:47px;padding-left: 18px;border-style: solid; 
	border-width: 2px;border-color: #FFA22F; color: #FFFFFF; font-size: 20px;
	line-height: 47px;background: url("images/lyfkyy-5-2.jpg");
}
.titleoff {
	float: left;width: 535px; height: 47px;padding-left: 18px;border-style: solid;
	border-width: 1px;border-color: #CC7100; color: #FBB90B;font-size: 20px; 
	line-height: 47px;background: url("images/lyfkyy-5.jpg");
}
</style>

<script type="text/javascript">
var curPage =  ${pageBean.curPage};
var totalPages = ${pageBean.totalPages};
var contentID = ${requestScope.contentID };

var $ = function(id){
	var o = document.getElementById(id);
	return o;
};
function keyEvent() {
	var keyCode;
	var keyCode = event.keyCode;
	if(!keyCode||keyCode=="undefined"){
		keyCode = event.which;
	}
	switch(keyCode) {
	case 38://up
		verticalChan(-1);
		return 0;
		break;
	case 40://down
		verticalChan(+1);
		return 0;
		break;
	case 37://left
		horizonChan(-1);
		return 0;
		break;
	case 39://right
		horizonChan(1);
		return 0;
		break;
	case 8:
	case 109:
	case 283:
		location.href =  "${ctx}/crazyenglish/filmAction!detail.do?filmId=${requestScope.filmID }&from=${requestScope.from}";
		return 0;
		break;
	case 33://上一页
		if(curPage > 1){
			var pageNo = curPage-1 ;
			var url = "${ctx }/crazyenglish/filmAction!listAsset.do?filmId=${requestScope.filmID }&curPage="+pageNo+"&channelId=2";
			location.href = url;
		}
		return 0;
		break;
	case 34://下一页
		if( curPage < totalPages){
			var pageNo = curPage+1 ;
			var url = "${ctx }/crazyenglish/filmAction!listAsset.do?filmId=${requestScope.filmID }&curPage="+pageNo+"&channelId=2";
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
	var currentPage = "${pageBean.curPage}";
	var backUrl = "${ctx}/crazyenglish/filmAction!listAsset.do?filmId="+filmId+"&curPage="+currentPage;
	backUrl = escape(backUrl);
	var gotoUrl = epg_server + "play_pageControl.jsp?PROGID="+fileID;
	gotoUrl = escape(gotoUrl);
	location.href = epg_server + "epg_pageAction.jsp?action=addUrl&goUrl="+gotoUrl+"&backUrl="+backUrl;
}

var area = 0; //0 导航  1置顶节目  2相关推荐节目
var btn_pos = 0 ;
var filmArray = ${requestScope.filmArray};//置顶节目
var relativeArray = ${requestScope.relativeArray};//上下页导航
var menuArray = ["${ctx }/crazyenglish/filmAction!engIndex.do","${ctx }/crazyenglish/filmAction!listFilmByColumnId.do?columnId=4&channelId=2","${ctx }/crazyenglish/filmAction!listFilmByColumnId.do?columnId=5&channelId=2"];

function initFocus(){
	if(filmArray.length >0){
		area = 1;
		$("t_1_"+btn_pos).className = "titleon";
	}else{
		area = 0;
		focusMenu();
	}
}

//横向移动
function horizonChan(_num){
	if( area == 0 ){
		if(_num<0){
			if(btn_pos <= 0 ){
				btn_pos = 0;
				return ;
			}
		}
		else{
			if(btn_pos >= menuArray.length -1  ){
				btn_pos = menuArray.length -1;
				return;
			}
		}
		$("menu"+btn_pos).className = "";
		btn_pos += _num;
		focusMenu();
	}
	else if( area == 1){
	
	}
	else if(area == 2){
		if(_num<0){
			if(btn_pos <= 0 ){
				btn_pos = 0;
				return ;
			}
		}
		else{
			if(btn_pos >= relativeArray.length -1  ){
				btn_pos = relativeArray.length -1 ;
				return;
			}
		}
		$("t_2_"+btn_pos).className = "STYLE14";
		btn_pos += _num;
		$("t_2_"+btn_pos).className = "STYLE15";
	}
}
function focusMenu(){
	$("menu"+btn_pos).className = "img";
}
//纵向移动
function verticalChan(_num){
	if( area == 0){
		if(_num > 0 && filmArray.length >0){
			$("menu"+btn_pos).className = "";
			area = 1;
			btn_pos  = 0;
			$("t_1_"+btn_pos).className = "titleon";
		}
	}
	else if( area == 1){
		$("t_1_"+btn_pos).className = "titleoff";
		btn_pos += _num;
		if(btn_pos < 0 ){
			area = 0 ;
			btn_pos = 0;
			focusMenu();
			return;
		}
		if(btn_pos > filmArray.length -1 && relativeArray.length >0 ){
			area = 2 ;
			btn_pos = 0;
			$("t_2_"+btn_pos).className = "STYLE15";
			return ;
		}
		$("t_1_"+btn_pos).className = "titleon";
	}
	else if(area == 2){
		if(_num < 0){
			$("t_2_"+btn_pos).className = "STYLE14";
			area = 1;
			btn_pos = filmArray.length -1;
			$("t_1_"+btn_pos).className = "titleon";
		}
	}
}

function doSelect(){
	if(area==0){
		if( btn_pos < menuArray.length){
			var url = menuArray[btn_pos];
			location.href = url;
		}
	}
	else if(area ==1){
		if(filmArray.length >0){
			if( btn_pos < filmArray.length){
				var asset = filmArray[btn_pos];
				goto_play(asset.id,asset.fileId,contentID,asset.filmid);
			}
		}	
	}
	else if(area == 2 ){
		if(relativeArray.length >0){
			if( btn_pos < relativeArray.length){
				var currentPage = relativeArray[btn_pos];
				var url = "${ctx }/crazyenglish/filmAction!listAsset.do?filmId=${requestScope.filmID }&curPage="+currentPage+"&channelId=2";
				location.href = url;
			}
		}
	}	
}
</script>
</head>

<body>
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="${ctx }/crazyenglish/images/lyfkyy-1.jpg" width="179" height="72" name="Image5" border="0" id="menu0" /></td>
    <td><img src="${ctx }/crazyenglish/images/lyfkyy-fkyy-2.jpg" name="Image9" width="180" height="72" border="0" id="menu1" /></td>
    <td><img src="${ctx }/crazyenglish/images/lyfkyy-yufd-2.jpg" name="Image10" width="180" height="72" border="0" id="menu2" /></td>
    <td><img src="${ctx }/crazyenglish/images/lyfkyy-1-4.jpg" width="105" height="72" /></td>
  </tr>
</table>
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="35"><img src="images/lyfkyy-2.jpg" width="35" height="434" /></td>
    <td width="575" valign="top" bgcolor="#602121">
    <table width="575" border="0" cellspacing="0" cellpadding="0" bgcolor="#602121">
      <tr>
        <td height="10"></td>
      </tr>
    </table>
    <div style="height: 385px;width:575px;background-color:#602121;">
      <table width="555" border="0" align="center" cellpadding="0" cellspacing="0">
	      <c:forEach items="${pageBean.items}" var="result" varStatus="status">
	         <tr>
		        <td height="55">
		        	<div id="t_1_${status.index }" class="titleoff">第${(pageBean.curPage-1)*7+status.count }集  ${result.name }</div>
		        </td>
     		 </tr>
	       </c:forEach>
      </table>
    </div>
     <div id="page_navigator" style="width: 300px;margin: 0 auto;text-align: center;overflow: hidden;">
	        <div class="STYLE14">${pageBean.curPage}/${pageBean.totalPages}</div>
	           <c:if test="${pageBean.curPage > 1}">
	           		<div class="STYLE14" id="t_2_0">上一页</div>
	           </c:if>
	           <c:if test="${pageBean.curPage < pageBean.totalPages}">
	           		<c:choose>
	           			<c:when test="${pageBean.curPage > 1}"><div class="STYLE14" id="t_2_1">下一页</div></c:when>
	           			<c:otherwise><div class="STYLE14" id="t_2_0">下一页</div></c:otherwise>
	           		</c:choose>
	           </c:if>
    </div>      
      </td>
    <td width="34"><img src="images/lyfkyy-3.jpg" width="34" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/lyfkyy-4.jpg" width="644" height="26" /></td>
  </tr>
</table>

<script  type="text/javascript">
	initFocus();
</script>

</body>
</html>

