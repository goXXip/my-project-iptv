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
	letter-spacing: -1px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	width: 640px;
	height: 530px;
	font-family: "黑体";
}
a{text-decoration:none;}
.STYLE14 {font-family: "黑体";color:#ffffff;font-size: 16px;float: left;padding: 5px 10px 5px 10px;}/*color:#edff6f;*/
.liston {
	float: left;
	width: 128px;
	height: 122px;
	/* border: solid 1px #214c47; */
}

.listoff {
	float: left;
	width: 128px;
	height: 122px;
}

.listoff .listtitle {
	float: left;
	width: 128px;
	height: 25px;
	overflow: hidden;
	text-align: center;
	padding: 0px;
	margin: 5px 0px 0px 0px;
	font-size: 16px;
	line-height: 25px;
	color: #FFFFFF;
}

.liston .listtitle {
	float: left;
	width: 128px;
	height: 25px;
	overflow: hidden;
	text-align: center;
	padding: 0px;
	margin: 5px 0px 0px 0px;
	font-size: 16px;
	line-height: 25px;
	color: #edff6f;
}
.liston img {
	border-style: solid;
	border-width: 2px;
	border-color: #C0F8F2;
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

<%@ include file="/yyzj/head.jsp" %>

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
      <table width="564" border="0" cellspacing="0" cellpadding="0" style="margin-left:10px;">
        <tr>
    	   <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 0 }">
	    		 	<c:forEach items="${pageBean.items}" begin="0" end="0" var="result" varStatus="status">
	    				<div id="t_0" class="listoff"><a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /></a><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	       </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 1 }">
	    		 	<c:forEach items="${pageBean.items}" begin="1" end="1" var="result" varStatus="status">
	    				<div id="t_1" class="listoff"><a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /></a><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 2 }">
	    		 	<c:forEach items="${pageBean.items}" begin="2" end="2" var="result" varStatus="status">
	    				<div id="t_2" class="listoff"><a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /></a><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	      <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 3 }">
	    		 	<c:forEach items="${pageBean.items}" begin="3" end="3" var="result" varStatus="status">
	    				<div id="t_3" class="listoff"><a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /></a><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	      </td>
    	</tr>
    	<tr>
    	   <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 4 }">
	    		 	<c:forEach items="${pageBean.items}" begin="4" end="4" var="result" varStatus="status">
	    				<div id="t_4" class="listoff"><a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /></a><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	       </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 5 }">
	    		 	<c:forEach items="${pageBean.items}" begin="5" end="5" var="result" varStatus="status">
	    				<div id="t_5" class="listoff"><a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /></a><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 6 }">
	    		 	<c:forEach items="${pageBean.items}" begin="6" end="6" var="result" varStatus="status">
	    				<div id="t_6" class="listoff"><a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /></a><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	      <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 7 }">
	    		 	<c:forEach items="${pageBean.items}" begin="7" end="7" var="result" varStatus="status">
	    				<div id="t_7" class="listoff"><a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /></a><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	      </td>
    	</tr>
    	<tr>
    	   <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 8 }">
	    		 	<c:forEach items="${pageBean.items}" begin="8" end="8" var="result" varStatus="status">
	    				<div id="t_8" class="listoff"><a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /></a><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	       </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 9 }">
	    		 	<c:forEach items="${pageBean.items}" begin="9" end="9" var="result" varStatus="status">
	    				<div id="t_9" class="listoff"><a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /></a><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 10 }">
	    		 	<c:forEach items="${pageBean.items}" begin="10" end="10" var="result" varStatus="status">
	    				<div id="t_10" class="listoff"><a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /></a><div class="listtitle">${result.name }</div></div>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	      <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 11 }">
	    		 	<c:forEach items="${pageBean.items}" begin="11" end="11" var="result" varStatus="status">
	    				<div id="t_11" class="listoff"><a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /></a><div class="listtitle">${result.name }</div></div>
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
           	<div class="STYLE14">
           		<a href="${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=${requestScope.columnID }&curPage=${pageBean.curPage-1}&pageSize=12&channelId=1" class="STYLE14">上一页</a>
           	</div>
         </c:if>
          <c:if test="${pageBean.curPage < pageBean.totalPages}">
	         <div class="STYLE14">
	           	<a href="${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=${requestScope.columnID }&curPage=${pageBean.curPage+1}&pageSize=12&channelId=1" class="STYLE14">下一页</a>
	         </div>
          </c:if>
      </div>
      </td>
    <td width="34"><img src="images/zyzj-3.jpg" width="34" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/zyzj-4.jpg" width="644" height="26" /></td>
  </tr>
</table>

<jsp:include page="/yyzj/footer.jsp"></jsp:include>

</body>
</html>
