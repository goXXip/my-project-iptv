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
	letter-spacing: -1px;margin: 0px;font-family: "黑体";width: 640px;height: 530px;background: transparent;
}
.img{border-color:yellow;border-width:2px;}
.titleon {
	float: left;width: 208px;height: 47px;overflow: hidden;padding-left: 10px;
	border-style: solid;border-width: 2px;border-color: #C0F8F2;color: #FFFFFF;font-size: 18px;
	line-height: 47px;background: url("images/bg-02.jpg");
}
.titleoff {
	float: left;width: 210px;height: 47px;overflow: hidden;padding-left: 10px;
	border-style: solid;border-width: 1px;border-color: #8bf1e7;color: #edff6f;
	font-size: 18px;line-height: 47px;background: url("images/bg-01.jpg");
}
.liston {
	float: left;width: 128px;height: 122px;
	/* border: solid 1px #214c47; */
}
.listoff {
	float: left;width: 128px;height: 122px;
}
.listoff .listtitle {
	float: left;width: 128px;height: 25px;overflow: hidden;
	text-align: center;padding: 0px;margin: 5px 0px 0px 0px;
	font-size: 16px;line-height: 25px;color: #FFFFFF;
}
.liston .listtitle {
	float: left;width: 128px;height: 25px;
	overflow: hidden;text-align: center;padding: 0px;
	margin: 5px 0px 0px 0px;font-size: 16px;line-height: 25px;color: #edff6f;
}
.liston img {
	border: solid 2px yellow;
}
</style>

<script type="text/javascript">
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
			location.href = "${ctx}/default_bq.jsp" ;
		return 0;
		break;
	default:
		return 1;
	}
}
document.onirkeypress = keyEvent;
document.onkeypress = keyEvent;

var area = 0; //0 导航  1置顶节目  2相关推荐节目
var btn_pos = 0 ;
var filmArray = ${requestScope.filmArray};//置顶节目
var relativeArray = ${requestScope.relativeArray};//相关推荐节目
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
		if(btn_pos > filmArray.length -1 && relativeArray.length >0 ){
			area = 2 ;
			btn_pos = 0;
			$("t_2_"+btn_pos).className = "liston";
			return ;
		}
		$("t_1_"+btn_pos).className = "titleon";
	}
	else if(area == 2){
		if(_num < 0){
			$("t_2_"+btn_pos).className = "listoff";
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
				var id = filmArray[btn_pos];
				var url = "${ctx }/yyzj/filmAction!detail.do?filmId="+id+"&from=index";
				location.href = url;
			}
		}	
	}
	else if(area == 2 ){
		if(relativeArray.length >0){
			if( btn_pos < relativeArray.length){
				var id = relativeArray[btn_pos];
				var url = "${ctx }/yyzj/filmAction!detail.do?filmId="+id+"&from=index";
				location.href = url;
			}
		}
	}	
}
</script>

</head>

<body bgcolor="transparent">
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="${ctx }/yyzj/images/menu0.jpg" width="184" height="72" name="menu0" border="0" id="menu0" /></td>
    <td><img src="${ctx }/yyzj/images/menu1-1.jpg" name="menu1-1" width="136" height="72" border="0" id="menu1" /></td>
    <td><img src="${ctx }/yyzj/images/menu2-1.jpg" name="menu2-1" width="129" height="72" border="0" id="menu2" /></td>
    <td><img src="${ctx }/yyzj/images/menu3-1.jpg" name="menu3-1" width="195" height="72" border="0" id="menu3" /></td>
  </tr>
</table>
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="35"><img src="images/zyzj-2.jpg" width="35" height="434" /></td>
    <td width="575" valign="top"><table width="575" border="0" cellspacing="0" cellpadding="0"  bgcolor="#214c47">
      <tr>
        <td height="10"></td>
      </tr>
    </table>
    <table width="575" border="0" cellspacing="0" cellpadding="0">
    	<tr>
    		<td width="10" bgcolor="#214c47"></td>
	    	<td width="555">
		      <table width="555" border="0" align="center" cellpadding="0" cellspacing="0">
		      <tr>
			       <c:if test="${fn:length(requestScope.filmList) > 0 }">
				      <c:forEach items="${requestScope.filmList}" begin="0" end="0" var="result" varStatus="status">
				        	<td width="230" height="54" bgcolor="#214c47">
					        	<div id="t_1_0" class="titleoff" >${result.name }</div>
				        	</td>
				      </c:forEach>
			      </c:if>
		        <td width="325" rowspan="5" style="border-style: solid;border-color: #8bf1e7;border-width: 1px;">
		        	 <table border="0" align="center" cellpadding="0" cellspacing="0" width="325">
		        		  <tr><td height="12" bgcolor="#214c47"></td></tr>
				          <tr><td height="244">
				            <iframe id="freeVideo" frameborder="0" scrolling="no" style="background-color: transparent;" width="325" height="244"></iframe>
				           </td>
				          </tr>
				          <tr><td height="12" bgcolor="#214c47"></td></tr>
			        </table> 
		        </td>
		      </tr>
			  <tr bgcolor="#214c47">
			  	<td height="54">
	        	  <c:if test="${fn:length(requestScope.filmList) > 1 }">
		      			<c:forEach items="${requestScope.filmList}" begin="1" end="1" var="result" varStatus="status">
				        		<div id="t_1_1" class="titleoff" >${result.name }</div>
			        	 </c:forEach>
      				</c:if>
	        	</td>
			  </tr>
			 <tr bgcolor="#214c47">
	        	<td height="54">
	        	  <c:if test="${fn:length(requestScope.filmList) > 2 }">
		      			<c:forEach items="${requestScope.filmList}" begin="2" end="2" var="result" varStatus="status">
				        		<div id="t_1_2" class="titleoff" >${result.name }</div>
			        	 </c:forEach>
      				</c:if>
	        	</td>
			  </tr>
			  <tr bgcolor="#214c47">
	        	<td height="54">
	        	  <c:if test="${fn:length(requestScope.filmList) > 3 }">
		      			<c:forEach items="${requestScope.filmList}" begin="3" end="3" var="result" varStatus="status">
				        		<div id="t_1_3" class="titleoff" >${result.name }</div>
			        	 </c:forEach>
      				</c:if>
	        	</td>
			  </tr>
			  <tr bgcolor="#214c47">
	        	<td height="54">
	        	  <c:if test="${fn:length(requestScope.filmList) > 4 }">
		      			<c:forEach items="${requestScope.filmList}" begin="4" end="4" var="result" varStatus="status">
				        		<div id="t_1_4" class="titleoff" >${result.name }</div>
			        	 </c:forEach>
      				</c:if>
	        	</td>
			  </tr>
		    </table>
	    </td>
    	<td width="10" bgcolor="#214c47"></td>
    </tr>
    </table>
      <table width="575" border="0" cellspacing="0" cellpadding="0" bgcolor="#214c47">
        <tr>
          <td height="10"></td>
        </tr>
      </table>
      <table  width="575" border="0" cellspacing="0" cellpadding="0" bgcolor="#214c47" height="144">
     	<tr><td width="10"></td>
	       <td>
			   <table width="565" border="0" cellspacing="0" cellpadding="0">
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
	       </td>
     	 </tr>
      </table>
    </td>
    <td width="34"><img src="images/zyzj-3.jpg" width="34" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/zyzj-4.jpg" width="644" height="26" /></td>
  </tr>
</table>

<script type="text/javascript">

var firstFileID = "${requestScope.defaultPlayID}";//默认播放第一个影片第一集
var prefix = "${requestScope.prefix}";

	function init(){
		initFocus();
		$("freeVideo").src = prefix + "PlayTrailerInVas.jsp?left=271&top=88&width=327&height=246&type=VOD&value=" + firstFileID;
	}

	init();
</script>

</body>
</html>
