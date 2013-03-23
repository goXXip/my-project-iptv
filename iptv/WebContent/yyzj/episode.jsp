<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="640*530" />
<title>孕育早教</title>
<style type="text/css">
body {
	letter-spacing: -1px;
	margin: 0px;
	width: 640px;
	height: 530px;
	font-family: "黑体";
}
.img{border-color:yellow;border-width:2px;}
.STYLE14 {font-family: "黑体";color:#ffffff;font-size: 16px;float: left;padding: 5px 10px 5px 10px;}/*color:#edff6f;*/
.STYLE15 {font-family: "黑体";color: #FFFFFF;font-size: 16px;float: left;padding: 5px 10px 5px 10px;border: 2px solid yellow;}
.titleon {
	float: left;width:533px; height:47px;overflow: hidden;
	padding-left: 13px;border-style: solid; border-width: 2px;
	border-color: #C0F8F2; color: #FFFFFF; font-size: 18px;
	line-height: 47px;background: url("images/bg-02.jpg");
}
.titleoff {
	float: left;width: 535px; height: 47px;overflow: hidden;
	padding-left: 13px;border-style: solid; border-width: 1px;
	border-color: #8bf1e7;color: #edff6f; font-size: 18px;
	line-height: 47px;background: url("images/bg-01.jpg");
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
	case 13:
		doSelect();
		return 0;
		break;
	case 8:
	case 109:
	case 283:
		location.href =  "${ctx}/yyzj/filmAction!detail.do?filmId=${requestScope.filmID }&from=${requestScope.from}";
		return 0;
		break;
	case 33://上一页
		if(curPage > 1){
			var pageNo = curPage-1 ;
			var url = "${ctx }/yyzj/filmAction!listAsset.do?filmId=${requestScope.filmID }&curPage="+pageNo+"&channelId=2";
			location.href = url;
		}
		return 0;
		break;
	case 34://下一页
		if( curPage < totalPages){
			var pageNo = curPage+1 ;
			var url = "${ctx }/yyzj/filmAction!listAsset.do?filmId=${requestScope.filmID }&curPage="+pageNo+"&channelId=2";
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
//全屏播放：
//localIp+ "epg_pageAction.jsp?action=addUrl&goUrl="+gotoUrl+"&backUrl="+backUrl; 

//localIp为进入本应用时，从电信链接地址传入，表示EPG服务器地址

//goUrl 为视频播放地址
//var   gotoUrl = localIp + "play_pageControl.jsp?PROGID="+fileID;
//fileID表示视频ID

//backUrl 表示要返回的地址，用于从视频播放页面返回，一般为当前页面

//注意backUrl   goUrl 两个参数需要escape编码后传给epg_pageAction.jsp页面


	var epg_server = '${requestScope.localIp}';
	function goto_play(id,fileID,ztID,filmId){
		var backUrl = "${ctx}/yyzj/filmAction!listAsset.do?filmId="+filmId+"&curPage=${pageBean.curPage}";
		backUrl = escape(backUrl);
		var gotoUrl = epg_server + "play_pageControl.jsp?PROGID="+fileID;
		gotoUrl = escape(gotoUrl);
		location.href = epg_server + "epg_pageAction.jsp?action=addUrl&goUrl="+gotoUrl+"&backUrl="+backUrl;
	}

	var area = 0; //0 导航  1置顶节目  2相关推荐节目
	var btn_pos = 0 ;
	var filmArray = ${requestScope.filmArray};//置顶节目
	var relativeArray = ${requestScope.relativeArray};//上下页导航
	var menuArray = ["${ctx }/yyzj/filmAction!eduIndex.do","${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=1&channelId=1","${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=2&channelId=1","${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=3&channelId=1"];

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
			unfocusMenu();
			btn_pos += _num;
			focusMenu();
		}
		else if( area == 1){
		
		}
		else if(area == 2){
			if(_num<0){
				if(btn_pos <=0 ){
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
		var img_name = $("menu"+btn_pos).name;
		$("menu"+btn_pos).src = "${ctx }/yyzj/images/"+img_name+"-2.jpg";
	}
	function unfocusMenu(){
		var img_name = $("menu"+btn_pos).name;
		$("menu"+btn_pos).src = "${ctx }/yyzj/images/"+img_name+".jpg";
	}
	//纵向移动
	function verticalChan(_num){
		if( area == 0){
			if(_num > 0 && filmArray.length >0){
				unfocusMenu();
				area = 1;
				btn_pos  = 0;
				$("t_1_"+btn_pos).className = "titleon";
			}
		}
		else if( area == 1){
			if(_num>0 && btn_pos >= filmArray.length -1 && relativeArray.length <= 0){
				btn_pos = filmArray.length -1;
				return;
			}
			$("t_1_"+btn_pos).className = "titleoff";
			btn_pos += _num;
			if(btn_pos < 0 ){
				area = 0 ;
				btn_pos = 0;
				focusMenu();
				return;
			}
			if(btn_pos > filmArray.length -1 && relativeArray.length >0){
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
					var url = "${ctx }/yyzj/filmAction!listAsset.do?filmId=${requestScope.filmID }&curPage="+currentPage+"&channelId=1";
					location.href = url;
				}
			}
		}	
	}
	
</script>
</head>

<body>

<table width="644" border="0" cellspacing="0" cellpadding="0" bgcolor="#006054">
  <tr>
    <td><img src="${ctx }/yyzj/images/menu0.jpg" width="184" height="70" name="menu0" border="0" id="menu0" /></td>
    <td><c:choose><c:when test="${requestScope.columnID == 1}"><img src="${ctx }/yyzj/images/menu1-2.jpg" name="menu1-2" width="136" height="70" border="0" id="menu1" /></c:when><c:otherwise><img src="${ctx }/yyzj/images/menu1-1.jpg" name="menu1-1" width="136" height="70" border="0" id="menu1" /></c:otherwise></c:choose></td>
    <td><c:choose><c:when test="${requestScope.columnID == 2}"><img src="${ctx }/yyzj/images/menu2-2.jpg" name="menu2-2" width="129" height="70" border="0" id="menu2" /></c:when><c:otherwise><img src="${ctx }/yyzj/images/menu2-1.jpg" name="menu2-1" width="129" height="70" border="0" id="menu2" /></c:otherwise></c:choose></td>
    <td><c:choose><c:when test="${requestScope.columnID == 3}"><img src="${ctx }/yyzj/images/menu3-2.jpg" name="menu3-2" width="195" height="70" border="0" id="menu3" /></c:when><c:otherwise><img src="${ctx }/yyzj/images/menu3-1.jpg" name="menu3-1" width="195" height="70" border="0" id="menu3" /></c:otherwise></c:choose></td>
  </tr>
</table>
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="35"><img src="images/zyzj-2.jpg" width="35" height="434" /></td>
    <td width="575" valign="top" bgcolor="#214c47">
    <table width="575" border="0" cellspacing="0" cellpadding="0" bgcolor="#214c47">
      <tr>
        <td height="10"></td>
      </tr>
    </table>
    <div style="height: 385px;width: 575px;background-color:#214c47; ">
	     <table width="550" border="0" align="center" cellpadding="0" cellspacing="0">
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
    <td width="34"><img src="images/zyzj-3.jpg" width="34" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/zyzj-4.jpg" width="644" height="26" /></td>
  </tr>
</table>
<script  type="text/javascript">
	initFocus();
</script>

<div style="display: none;">
    <img src="${ctx }/yyzj/images/menu0.jpg" width="184" height="72"/>
    <img src="${ctx }/yyzj/images/menu0-2.jpg" width="184" height="72"/>
    <img src="${ctx }/yyzj/images/menu1-1.jpg" width="136" height="72"/>
    <img src="${ctx }/yyzj/images/menu1-1-2.jpg" width="136" height="72"/>
    <img src="${ctx }/yyzj/images/menu1-2.jpg" width="136" height="72"/>
    <img src="${ctx }/yyzj/images/menu1-2-2.jpg" width="136" height="72"/>
    <img src="${ctx }/yyzj/images/menu2-1.jpg" width="129" height="72"/>
    <img src="${ctx }/yyzj/images/menu2-1-2.jpg" width="129" height="72"/>
    <img src="${ctx }/yyzj/images/menu2-2.jpg" width="129" height="72"/>
    <img src="${ctx }/yyzj/images/menu2-2-2.jpg" width="129" height="72"/>
    <img src="${ctx }/yyzj/images/menu3-1.jpg" width="195" height="72"/>
    <img src="${ctx }/yyzj/images/menu3-1-2.jpg" width="195" height="72"/>
    <img src="${ctx }/yyzj/images/menu3-2.jpg" width="195" height="72"/>
    <img src="${ctx }/yyzj/images/menu3-2-2.jpg" width="195" height="72"/>
</div>
</body>
</html>
