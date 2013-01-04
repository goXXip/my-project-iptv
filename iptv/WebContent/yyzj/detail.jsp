<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="640*530" />
<title>孕育早教</title>
<style type="text/css">
body{letter-spacing: -1px;margin: 0px;width: 640px;height: 530px;font-family: "黑体";}
.img{border-color:yellow;border-width:2px;}
.btn_watch_focus{width: 100px;height: 40px;text-align: center;border: 2px solid yellow;}
.btn_watch{width: 100px;height: 40px;text-align: center;}
.STYLE9 {color: #FFFFFF; font-size: 20px; font-family: "黑体";}
.STYLE13 {font-family: "黑体"; font-size: 16px; color: #FFFFFF; }
.style15 {	font-size: 24px;color: #FFFFFF;font-family: "黑体";}
.STYLE18 {color: #f7d400; font-size: 16px; font-family: "黑体"; }
.liston {float: left;width: 128px;height: 122px;background:#7baaa4;
	/* border: solid 1px #214c47; */
}
.listoff {
	float: left;width: 128px;height: 122px;
}
.listoff .listtitle {
	float: left;width: 128px;height: 25px;
	overflow: hidden;text-align: center;padding: 0px;
	margin: 5px 0px 0px 0px;font-size: 16px;line-height: 25px;color: #FFFFFF;
}
.liston .listtitle {
	float: left;width: 128px;height: 25px;overflow: hidden;text-align: center;padding: 0px;
	margin: 5px 0px 0px 0px;font-size: 16px;line-height: 25px;/*color: #edff6f;*/color: #FFFFFF;
}
.liston img {
	border-style: solid;border-width: 2px;border-color: #C0F8F2;
}
</style>

<script type="text/javascript">
var from = "${requestScope.from}";
var columnID = "${requestScope.columnID}";
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
			if(from == "index"){
				location.href = "${ctx }/yyzj/filmAction!eduIndex.do";
			}
			else if(from == "column"){
				location.href = "${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=" +columnID +"&channelId=1";
			}
			else{
				location.href = "${ctx }/yyzj/filmAction!eduIndex.do";
			}
		return 0;
		break;
	default:
		return 1;
	}
}
document.onirkeypress = keyEvent;
document.onkeypress = keyEvent;

var area = 0; //0 菜单导航区  1节目列表区  2分布导航区
var btn_pos = 0 ;//横坐标
var relativeArray = ${requestScope.relativeArray};//上下页导航
var menuArray = ["${ctx }/yyzj/filmAction!eduIndex.do","${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=1&channelId=1","${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=2&channelId=1","${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=3&channelId=1"];

function initFocus(){
	area = 1;
	btn_pos = 0;
	$("defaultFocus").className = "btn_watch_focus";
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
		$("t_2_"+btn_pos).className = "listoff";
		btn_pos += _num;
		$("t_2_"+btn_pos).className = "liston";
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
		if(_num > 0){
			unfocusMenu();
			area = 1;
			btn_pos  = 0;
			initFocus();
		}
	}
	else if( area == 1){
		if(_num>0 && relativeArray.length <= 0){
			btn_pos = 0;
			return;
		}
		$("defaultFocus").className = "btn_watch";
		btn_pos += _num;
		if(btn_pos < 0 ){
			area = 0 ;
			btn_pos = 0;
			focusMenu();
			return;
		}
		if(btn_pos > 0 && relativeArray.length >0 ){
			area = 2 ;
			btn_pos = 0;
			$("t_2_"+btn_pos).className = "liston";
			return ;
		}
		initFocus();
	}
	else if(area == 2){
		if(_num < 0){
			$("t_2_"+btn_pos).className = "listoff";
			area = 1;
			btn_pos = 0;
			initFocus();
		}
	}
}

function doSelect(){
	if( area == 0 ){
		if( btn_pos < menuArray.length){
			var url = menuArray[btn_pos];
			location.href = url;
		}
	}
	else if(area == 1){
		var url = "${ctx }/servlet/serviceAuth?filmId=${film.id }&channelId=1&from=${requestScope.from}&ContentID=${film.contentId }";
		location.href = url;
	}
	else if(area == 2 ){
		if(relativeArray.length >0){
			if( btn_pos < relativeArray.length){
				var id = relativeArray[btn_pos];
				var url = "${ctx }/yyzj/filmAction!detail.do?filmId="+id;
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
     <tr><td height="10"></td></tr>
     <tr><td width="575">
      <table width="555" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="144" rowspan="3" valign="top"><img src="${ctx }/uploadImages/${film.bigImage.id}.${film.bigImage.suffix}" width="128" height="170" /></td>
          <td height="34" colspan="3"><span class="style15">《${film.name }》</span></td>
        </tr>
        <tr>
          <td height="134" colspan="3" valign="top" class="STYLE9">${film.description }</td>
        </tr>
        <tr>
          <td width="144" height="44" valign="top" class="STYLE18">集数：${film.serialCount }集 </td>
          <td width="144" height="44" valign="top" class="STYLE18">适用：${film.audient }</td>
          <td height="44" valign="top" class="STYLE18">&nbsp;</td>
        </tr>
        <tr>
          <td height="44" valign="top">&nbsp;</td>
          <td width="142" height="44" valign="top">
          		<div id="defaultFocus" class="btn_watch">
	          		<img src="images/anniu-02.jpg" name="Image13" width="90" height="38" border="0" />
	          	</div>
          </td>
          <td width="146" height="44" valign="top">&nbsp;</td>
          <td width="123" height="44" valign="top">&nbsp;</td>
        </tr>
      </table>
      </td></tr>
     </table>
      <table width="575" border="0" cellspacing="0" cellpadding="0" bgcolor="#214c47">
        <tr>
          <td height="10"></td>
        </tr>
      </table>
     <table width="575" border="0" cellspacing="0" cellpadding="0" bgcolor="#214c47">
	 <tr><td width="10"></td>
	 <td width="564">
      <table width="564" border="0" cellspacing="0" cellpadding="0">
        <tr>
    		<td width="141" align="left">
    			 <c:if test="${fn:length(requestScope.relativeList) > 0 }">
    			 	<c:forEach items="${requestScope.relativeList}" begin="0" end="0" var="result" varStatus="status">
	    			 	<div id="t_2_0" class="listoff">
				    		<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" />
				    		<div class="listtitle">${result.name }</div>
		    			</div>
	    			</c:forEach>
	    		 </c:if>
	    	</td>
    		<td width="141" align="left">
    			 <c:if test="${fn:length(requestScope.relativeList) > 1 }">
    			 	<c:forEach items="${requestScope.relativeList}" begin="1" end="1" var="result" varStatus="status">
    			 		<div id="t_2_1" class="listoff">
		    				<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" />
		    				<div class="listtitle">${result.name }</div>
	    				</div>
	    			</c:forEach>
	    		 </c:if>
	    	</td>
    		<td width="141" align="left">
    			 <c:if test="${fn:length(requestScope.relativeList) > 2 }">
    			 	<c:forEach items="${requestScope.relativeList}" begin="2" end="2" var="result" varStatus="status">
    			 		<div id="t_2_2" class="listoff">
		    				<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" />
		    				<div class="listtitle">${result.name }</div>
	    				</div>
	    			</c:forEach>
	    		 </c:if>
	    	</td>
    		<td width="141" align="left">
    			 <c:if test="${fn:length(requestScope.relativeList) > 3 }">
    			 	<c:forEach items="${requestScope.relativeList}" begin="3" end="3" var="result" varStatus="status">
    			 		<div id="t_2_3" class="listoff">
			    			<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" />
			    			<div class="listtitle">${result.name }</div>
	    				</div>
	    			</c:forEach>
	    		 </c:if>
	    	</td>
    	</tr>
     </table>
     </td></tr>
     </table>
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
</body>
</html>
