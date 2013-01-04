<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="640*530" />
<title>孕育早教</title>
<style type="text/css">
body {
	letter-spacing: -1px;margin: 0px;
	width: 640px;height: 530px;font-family: "黑体";
}
.STYLE14 {font-family: "黑体";color:#ffffff;font-size: 16px;float: left;padding: 5px 10px 5px 10px;}/*color:#edff6f;*/
.STYLE15 {font-family: "黑体";color: #FFFFFF;font-size: 16px;float: left;padding: 5px 10px 5px 10px;border: 2px solid yellow;}
.liston {float: left;width: 128px;height: 122px;/*border: solid 1px #214c47;*/background:#7baaa4;}
.listoff {float: left;width: 128px;height: 122px;}
.listoff .listtitle {float: left;width: 128px;height: 25px;overflow: hidden;
	text-align: center;padding: 0px;margin: 5px 0px 0px 0px;font-size: 16px;line-height: 25px;color: #FFFFFF;
}
.liston .listtitle {float: left;width: 128px;height: 25px;
	overflow: hidden;text-align: center;padding: 0px;
	margin: 5px 0px 0px 0px;font-size: 16px;line-height: 25px;/*color: #edff6f;*/color: #FFFFFF;
}
.liston img {border: 2px solid yellow;}/*border-color: #C0F8F2;*/
</style>

<script type="text/javascript">
var curPage =  ${pageBean.curPage};
var totalPages = ${pageBean.totalPages};
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
	case 283://back
		location.href = "${ctx }/yyzj/filmAction!eduIndex.do";
		return 0;
		break;
	case 33://上一页
		if( curPage > 1){
			var pageNo = curPage-1 ;
			var url = "${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId="+columnID+"&curPage="+pageNo+"&pageSize=12&channelId=1";
			location.href = url;
		}
		return 0;
		break;
	case 34://下一页
		if( curPage < totalPages){
			var pageNo = curPage+1 ;
			var url = "${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId="+columnID+"&curPage="+pageNo+"&pageSize=12&channelId=1";
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

var area = 0; //0 菜单导航区  1节目列表区  2分布导航区
var btn_pos = 0 ;//横坐标
var y_pos = 0 ;//纵坐标
var filmArray = ${requestScope.filmArray};//置顶节目
var relativeArray = ${requestScope.relativeArray};//上下页导航
var menuArray = ["${ctx }/yyzj/filmAction!eduIndex.do","${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=1&channelId=1","${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=2&channelId=1","${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=3&channelId=1"];

function initFocus(){
	if(filmArray.length >0){
		area = 1;
		btn_pos = 0;
		y_pos = 0;
		focusItem();
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
		if(_num<0){
			if( y_pos <= 0 ){
				y_pos = 0;
				return ;
			}
		}
		else{
			var array_row = filmArray[btn_pos];
			if( y_pos >= array_row.length -1  ){
				y_pos = array_row.length -1;
				return;
			}
		}
		unfocusItem();
		y_pos += _num;
		focusItem();
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
		$("page_"+btn_pos).className = "STYLE14";
		btn_pos += _num;
		$("page_"+btn_pos).className = "STYLE15";
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
function focusItem(){
	var array_row = filmArray[btn_pos];
	if( y_pos > array_row.length -1){
		y_pos = 0;
	}
	if( y_pos < 0 ){
		y_pos = 0;
	}
	$("t_"+btn_pos+"_"+y_pos).className = "liston";
}
function unfocusItem(){
	var array_row = filmArray[btn_pos];
	if( y_pos > array_row.length -1){
		y_pos = 0;
	}
	if( y_pos < 0 ){
		y_pos = 0;
	}
	$("t_"+btn_pos+"_"+y_pos).className = "listoff";
}
//纵向移动
function verticalChan(_num){
	if( area == 0){
		if(_num > 0 && filmArray.length >0){
			unfocusMenu();
			area = 1;
			btn_pos  = 0;
			y_pos = 0;
			focusItem();
		}
	}
	else if( area == 1){
		if(_num>0 && btn_pos >= filmArray.length -1 && relativeArray.length <= 0){
			btn_pos = filmArray.length -1;
			return;
		}
		unfocusItem();
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
			$("page_"+btn_pos).className = "STYLE15";
			return ;
		}
		focusItem();
	}
	else if(area == 2){
		if(_num < 0){
			$("page_"+btn_pos).className = "STYLE14";
			area = 1;
			btn_pos = filmArray.length -1;
			focusItem();
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
				var id = filmArray[btn_pos][y_pos];
				var url= "${ctx }/yyzj/filmAction!detail.do?filmId="+id;
				location.href = url;
			}
		}	
	}
	else if(area == 2 ){
		if(relativeArray.length >0){
			if( btn_pos < relativeArray.length){
				var currentPage = relativeArray[btn_pos];
				var url = "${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId="+columnID+"&curPage="+currentPage+"&pageSize=12&channelId=1";
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
        <tr>
          <td height="10"></td>
        </tr>
      </table>
    <table width="575" border="0" cellspacing="0" cellpadding="0" bgcolor="#214c47">
	  <tr><td width="10"></td>
	  <td width="564">
      <table width="564" border="0" cellspacing="0" cellpadding="0">
        <tr>
    	   <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 0 }">
	    		 	<c:forEach items="${pageBean.items}" begin="0" end="0" var="result" varStatus="status">
	    				<div id="t_0_0" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	       </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 1 }">
	    		 	<c:forEach items="${pageBean.items}" begin="1" end="1" var="result" varStatus="status">
	    				<div id="t_0_1" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 2 }">
	    		 	<c:forEach items="${pageBean.items}" begin="2" end="2" var="result" varStatus="status">
	    				<div id="t_0_2" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	      <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 3 }">
	    		 	<c:forEach items="${pageBean.items}" begin="3" end="3" var="result" varStatus="status">
	    				<div id="t_0_3" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	      </td>
    	</tr>
    	<tr>
    	   <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 4 }">
	    		 	<c:forEach items="${pageBean.items}" begin="4" end="4" var="result" varStatus="status">
	    				<div id="t_1_0" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	       </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 5 }">
	    		 	<c:forEach items="${pageBean.items}" begin="5" end="5" var="result" varStatus="status">
	    				<div id="t_1_1" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 6 }">
	    		 	<c:forEach items="${pageBean.items}" begin="6" end="6" var="result" varStatus="status">
	    				<div id="t_1_2" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	      <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 7 }">
	    		 	<c:forEach items="${pageBean.items}" begin="7" end="7" var="result" varStatus="status">
	    				<div id="t_1_3" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	      </td>
    	</tr>
    	<tr>
    	   <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 8 }">
	    		 	<c:forEach items="${pageBean.items}" begin="8" end="8" var="result" varStatus="status">
	    				<div id="t_2_0" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	       </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 9 }">
	    		 	<c:forEach items="${pageBean.items}" begin="9" end="9" var="result" varStatus="status">
	    				<div id="t_2_1" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 10 }">
	    		 	<c:forEach items="${pageBean.items}" begin="10" end="10" var="result" varStatus="status">
	    				<div id="t_2_2" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	      <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 11 }">
	    		 	<c:forEach items="${pageBean.items}" begin="11" end="11" var="result" varStatus="status">
	    				<div id="t_2_3" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	      </td>
    	</tr>
      </table>
      </td></tr>
      </table>
       <div id="page_navigator" style="width: 300px;margin: 0 auto;text-align: center;overflow: hidden;">
         <div class="STYLE14">${pageBean.curPage}/${pageBean.totalPages}</div>
           <c:if test="${pageBean.curPage > 1}">
           		<div class="STYLE14" id="page_0">上一页</div>
           </c:if>
           <c:if test="${pageBean.curPage < pageBean.totalPages}">
           		<c:choose>
           			<c:when test="${pageBean.curPage > 1}"><div class="STYLE14" id="page_1">下一页</div></c:when>
           			<c:otherwise><div class="STYLE14" id="page_0">下一页</div></c:otherwise>
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

</body>
</html>
