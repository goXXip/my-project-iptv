﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="640*530" />
<title>李阳疯狂英语</title>
<style type="text/css">
body {
	letter-spacing: -1px;margin: 0px;font-family: "黑体";
    width: 640px;height: 530px;
}
.STYLE14 {font-family: "黑体";color: #FFFFFF;font-size: 16px;padding: 0px 10px 0px 10px;float: left;}
.STYLE15 {font-family: "黑体";color: #FFFFFF;font-size: 16px;float: left;padding: 0px 10px 0px 10px;border: 2px solid yellow;}
.STYLE13 {font-family: "黑体"; font-size: 16px; color: #FFFFFF; margin-top:10px;}
.liston {
	float: left;margin-right: 5px;width: 180px;
	height: 120px;border: solid 1px #FFDC37;background-color: #8E3131;
}
.listoff {
	float: left;margin-right: 5px;width: 180px;
	height: 120px;border: solid 1px #b96400;
}
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
		location.href = "${ctx }/crazyenglish/filmAction!engIndex.do";
		return 0;
		break;
	case 33://上一页
		if(curPage > 1){
			var pageNo = curPage-1 ;
			var url = "${ctx }/crazyenglish/filmAction!listFilmByColumnId.do?columnId="+columnID+"&curPage="+pageNo+"&pageSize=9&channelId=2";
			location.href = url;
		}
		return 0;
		break;
	case 34://下一页
		if( curPage < totalPages){
			var pageNo = curPage+1 ;
			var url = "${ctx }/crazyenglish/filmAction!listFilmByColumnId.do?columnId="+columnID+"&curPage="+pageNo+"&pageSize=9&channelId=2";
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
var filmArray = ${requestScope.filmArray};//节目列表
var relativeArray = ${requestScope.relativeArray};//上下页导航
var menuArray = ["${ctx }/crazyenglish/filmAction!engIndex.do","${ctx }/crazyenglish/filmAction!listFilmByColumnId.do?columnId=4&channelId=2","${ctx }/crazyenglish/filmAction!listFilmByColumnId.do?columnId=5&channelId=2"];

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
		$("page_"+btn_pos).className = "STYLE14";
		btn_pos += _num;
		$("page_"+btn_pos).className = "STYLE15";
	}
}
function focusMenu(){
	var img_name = $("menu"+btn_pos).name;
	$("menu"+btn_pos).src = "${ctx }/crazyenglish/images/"+img_name+"-2.jpg";
}
function unfocusMenu(){
	var img_name = $("menu"+btn_pos).name;
	$("menu"+btn_pos).src = "${ctx }/crazyenglish/images/"+img_name+".jpg";
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
		if(btn_pos > filmArray.length -1 && relativeArray.length >0 ){
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
	if(area == 0){
		if( btn_pos < menuArray.length){
			var url = menuArray[btn_pos];
			location.href = url;
		}
	}
	else if(area == 1){
		if(filmArray.length >0){
			if( btn_pos < filmArray.length){
				var id = filmArray[btn_pos][y_pos];
				var url= "${ctx }/crazyenglish/filmAction!detail.do?filmId="+id;
				location.href = url;
			}
		}	
	}
	else if(area == 2 ){
		if(relativeArray.length >0){
			if( btn_pos < relativeArray.length){
				var currentPage = relativeArray[btn_pos];
				var url = "${ctx }/crazyenglish/filmAction!listFilmByColumnId.do?columnId="+columnID+"&curPage="+currentPage+"&pageSize=9&channelId=2";
				location.href = url;
			}
		}
	}	
}
</script>

</head>

<body>
<table width="644" border="0" cellspacing="0" cellpadding="0" bgcolor="#8f0100">
  <tr>
    <td><img src="${ctx }/crazyenglish/images/menu0.jpg" width="179" height="70" name="menu0" border="0" id="menu0" /></td>
    <td><c:choose><c:when test="${requestScope.columnID == 4}"><img src="${ctx }/crazyenglish/images/menu1-1.jpg" name="menu1-1" width="180" height="70" border="0" id="menu1" /></c:when><c:otherwise><img src="${ctx }/crazyenglish/images/menu1-2.jpg" name="menu1-2" width="180" height="70" border="0" id="menu1" /></c:otherwise></c:choose></td>
    <td><c:choose><c:when test="${requestScope.columnID == 5}"><img src="${ctx }/crazyenglish/images/menu2-1.jpg" name="menu2-1" width="180" height="70" border="0" id="menu2" /></c:when><c:otherwise><img src="${ctx }/crazyenglish/images/menu2-2.jpg" name="menu2-2" width="180" height="70" border="0" id="menu2" /></c:otherwise></c:choose></td>
    <td><img src="${ctx }/crazyenglish/images/lyfkyy-1-4.jpg" width="105" height="70" /></td>
  </tr>
</table>
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="35"><img src="images/lyfkyy-2.jpg" width="35" height="434" /></td>
    <td width="575" valign="top" bgcolor="#602121">
    <table width="575" border="0" cellspacing="0" cellpadding="0" bgcolor="#602121">
        <tr><td height="10"></td></tr>
    </table>
  	<table width="575" border="0" cellspacing="0" cellpadding="0" bgcolor="#602121">
	  <tr><td width="10"></td>
	  <td width="564">
      <table width="564" border="0" cellspacing="0" cellpadding="0">
    	  <tr>
			 <td width="188" height="130">
			 	<c:if test="${fn:length(pageBean.items) > 0 }">
	        	  <c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="0" end="0">
							<div id="t_0_0" class="listoff">
								<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
						            <tr>
						              <td width="75" height="122">
							              <img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
						              </td>
						              <td width="90" valign="top"><p class="STYLE13">${result.name }</p>
						               <p class="STYLE13">适用：${result.audient }<br />
						                	主讲：${result.actor }</p></td>
						            </tr>
					          	</table>
				          	</div>
				  </c:forEach>
				</c:if>
			</td>
			<td width="188" height="130">
			 	<c:if test="${fn:length(pageBean.items) > 1 }">
	        	  <c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="1" end="1">
			 			<div id="t_0_1" class="listoff">
			 				<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
					            <tr>
					              <td width="75" height="122">
						              <img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
					              </td>
					              <td width="90" valign="top"><p class="STYLE13">${result.name }</p>
					              <p class="STYLE13">适用：${result.audient }<br />
							                	主讲：${result.actor }</p></td>
					            </tr>
			          		</table>
			          	</div>
				  </c:forEach>
				</c:if>
			</td>
			<td width="188" height="130">
			 	<c:if test="${fn:length(pageBean.items) > 2 }">
	        	  <c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="2" end="2">
			 			<div id="t_0_2" class="listoff">
				 			<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
					            <tr>
					              <td width="75" height="122">
					              		<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
					              </td>
					              <td width="90" valign="top"><p class="STYLE13">${result.name }</p>
					              <p class="STYLE13">适用：${result.audient }<br />
							                	主讲：${result.actor }</p></td>
					            </tr>
				          	</table>
				        </div>
				  </c:forEach>
				</c:if>
			</td>
      	</tr>
      	<tr>
			 <td width="188" height="130">
			 	<c:if test="${fn:length(pageBean.items) > 3 }">
	        	  <c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="3" end="3">
			 		<div id="t_1_0" class="listoff">
			 			<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
				            <tr>
				              <td width="75" height="122">
					              	<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
				              </td>
				              <td width="90" valign="top"><p class="STYLE13">${result.name }</p>
				                <p class="STYLE13">适用：${result.audient }<br />
						                	主讲：${result.actor }</p></td>
				            </tr>
			          	</table>
			         </div>
				  </c:forEach>
				</c:if>
			</td>
			<td width="188" height="130">
			 	<c:if test="${fn:length(pageBean.items) > 4 }">
	        	  <c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="4" end="4">
			 			<div id="t_1_1" class="listoff"><table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
				            <tr>
				              <td width="75" height="122">
					              	<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
				              </td>
				              <td width="90" valign="top"><p class="STYLE13">${result.name }</p>
				               <p class="STYLE13">适用：${result.audient }<br />
						                	主讲：${result.actor }</p></td>
				            </tr>
			          	</table></div>
				  </c:forEach>
				</c:if>
			</td>
			<td width="188" height="130">
			 	<c:if test="${fn:length(pageBean.items) > 5 }">
	        	  <c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="5" end="5">
			 		 	<div id="t_1_2" class="listoff"><table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
				            <tr>
				              <td width="75" height="122">
					              	<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
				              </td>
				              <td width="90" valign="top"><p class="STYLE13">${result.name }</p>
				               <p class="STYLE13">适用：${result.audient }<br />
						                	主讲：${result.actor }</p></td>
				            </tr>
			          	</table></div>
				  </c:forEach>
				</c:if>
			</td>
      	</tr>
      	<tr>
			 <td width="188" height="130">
			 	<c:if test="${fn:length(pageBean.items) > 6 }">
	        	  <c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="6" end="6">
			 		<div id="t_2_0" class="listoff"><table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
				            <tr>
				              <td width="75" height="122">
					              	<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
				              </td>
				              <td width="90" valign="top"><p class="STYLE13">${result.name }</p>
				               <p class="STYLE13">适用：${result.audient }<br />
						                	主讲：${result.actor }</p></td>
				            </tr>
			          	</table></div>
				  </c:forEach>
				</c:if>
			</td>
			<td width="188" height="130">
			 	<c:if test="${fn:length(pageBean.items) > 7 }">
	        	  <c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="7" end="7">
			 		<div id="t_2_1" class="listoff"><table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
				            <tr>
				              <td width="75" height="122">
					              	<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
				              </td>
				              <td width="90" valign="top"><p class="STYLE13">${result.name }</p>
				              <p class="STYLE13">适用：${result.audient }<br />
						                	主讲：${result.actor }</p></td>
				            </tr>
			          	</table></div>
				  </c:forEach>
				</c:if>
			</td>
			<td width="188" height="130">
			 	<c:if test="${fn:length(pageBean.items) > 8 }">
	        	  <c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="8" end="8">
			 		<div id="t_2_2" class="listoff"><table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
				            <tr>
				              <td width="75" height="122">
					            	 <img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
				              </td>
				              <td width="90" valign="top"><p class="STYLE13">${result.name }</p>
				               	<p class="STYLE13">适用：${result.audient }<br />
						                	主讲：${result.actor }</p></td>
				            </tr>
			          	</table></div>
				  </c:forEach>
				</c:if>
			</td>
      	</tr>
      </table></td>
	    </tr>
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
    <td width="34"><img src="images/lyfkyy-3.jpg" width="34" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/lyfkyy-4.jpg" width="644" height="26" border="0"/></td>
  </tr>
</table>


<script  type="text/javascript">
	initFocus();
</script>
<div style="display: none;">
   <img src="${ctx }/crazyenglish/images/menu0.jpg" width="179" height="72" />
   <img src="${ctx }/crazyenglish/images/menu0-2.jpg" width="179" height="72" />
   <img src="${ctx }/crazyenglish/images/menu1-1.jpg" width="180" height="72"/>
   <img src="${ctx }/crazyenglish/images/menu1-1-2.jpg" width="180" height="72"/>
   <img src="${ctx }/crazyenglish/images/menu1-2.jpg" width="180" height="72"/>
   <img src="${ctx }/crazyenglish/images/menu1-2-2.jpg" width="180" height="72"/>
   <img src="${ctx }/crazyenglish/images/menu2-1.jpg" width="180" height="72"/>
   <img src="${ctx }/crazyenglish/images/menu2-1-2.jpg" width="180" height="72"/>
   <img src="${ctx }/crazyenglish/images/menu2-2.jpg" width="180" height="72"/>
   <img src="${ctx }/crazyenglish/images/menu2-2-2.jpg" width="180" height="72"/>
</div>
</body>
</html>
