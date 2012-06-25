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
.STYLE12 {font-family: "黑体";color: #FF9900;font-size: 24px;}
.STYLE14 {font-family: "黑体";color:#ffffff;font-size: 24px;}/*color:#edff6f;*/
.STYLE17 {color: #FBB90B; font-size: 18px; font-family: "黑体"; }
.STYLE18 {font-size: 24px;color: #FFFFFF;}
.STYLE19 {color: #FFFFFF;font-size: 18px;}
.STYLE15 {color: #ffffff;font-size: 18px;font-family: "黑体";}
.STYLE25 {color: #FFFFFF;font-size: 18px;font-family: "黑体";}
a:link {text-decoration: none;}
a:hover {text-decoration: none;}
a:VISITED {text-decoration: none;}
</style>

<script type="text/javascript" src="js/common.js"></script>
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
 */
function focusStyle(target, className) {
	if($(target) != "undefined") {
		$(target).className = className;
	}
};
function focusImg(target, className) {
	if($(target) != "undefined") {
		$(target).className = className;
	}
	var titleObj = target+"_title";
	if($(titleObj) != "undefined") {
		if(className == "liston"){
			$(titleObj).className = "STYLE25";
		}
		else if(className == "listoff"){
			$(titleObj).className = "STYLE15";
		}
	}
}
</script>

</head>

<body>

<%@ include file="/yyzj_hd/head.jsp" %>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="65"><img src="images/yyzj-gq-5.jpg" width="65" height="591" /></td>
    <td width="1142" valign="top" bgcolor="#214c47"><table width="100" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="40"></td>
      </tr>
    </table>
	<table border="0" align="center" cellpadding="0" cellspacing="4"  width="1142">
	        <tr>
	          <td width="224" height="177" align="center">			    			 
		           <c:if test="${fn:length(pageBean.items) > 0 }">
					    <c:forEach items="${pageBean.items}" begin="0" end="0" var="result" varStatus="status">
						   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusImg('t_2_0','liston');" onblur="focusImg('t_2_0','listoff');">
							    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_0" class="listoff"/>
						    </a>
						 </c:forEach>
				  </c:if>
			  </td>
	          <td width="224" align="center">
	             <c:if test="${fn:length(pageBean.items) > 1 }">
				   <c:forEach items="${pageBean.items}" begin="1" end="1" var="result" varStatus="status">
						   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusImg('t_2_1','liston');" onblur="focusImg('t_2_1','listoff');">
							    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_1" class="listoff"/>
						    </a>
					</c:forEach>
				 </c:if>
	          </td>
	          <td width="224" align="center">
	             <c:if test="${fn:length(pageBean.items) > 2 }">
				   <c:forEach items="${pageBean.items}" begin="2" end="2" var="result" varStatus="status">
						   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusImg('t_2_2','liston');" onblur="focusImg('t_2_2','listoff');">
							    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_2" class="listoff"/>
						    </a>
					</c:forEach>
				 </c:if>
	          </td>
	          <td width="224" align="center">
	             <c:if test="${fn:length(pageBean.items) > 3 }">
				   <c:forEach items="${pageBean.items}" begin="3" end="3" var="result" varStatus="status">
						   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusImg('t_2_3','liston');" onblur="focusImg('t_2_3','listoff');">
							    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_3" class="listoff"/>
						    </a>
					</c:forEach>
				 </c:if>
	          </td>
	         <td width="224" align="center">
	             <c:if test="${fn:length(pageBean.items) > 4 }">
				   <c:forEach items="${pageBean.items}" begin="4" end="4" var="result" varStatus="status">
						   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusImg('t_2_4','liston');" onblur="focusImg('t_2_4','listoff');">
							    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_4" class="listoff"/>
						    </a>
					</c:forEach>
				 </c:if>
	          </td>
	        </tr>
	        <tr>
	          <td height="30" align="center" valign="top">
	          	 <c:if test="${fn:length(pageBean.items) > 0 }">
					  <c:forEach items="${pageBean.items}" begin="0" end="0" var="result" varStatus="status">
						  <span class="STYLE25" id="t_2_0_title">${result.name }</span>
					</c:forEach>
				 </c:if>
	          </td>
	          <td align="center" valign="top">
	          	 <c:if test="${fn:length(pageBean.items) > 1 }">
					  <c:forEach items="${pageBean.items}" begin="1" end="1" var="result" varStatus="status">
						  <span class="STYLE25" id="t_2_1_title">${result.name }</span>
					</c:forEach>
				 </c:if>
	          </td>
	          <td align="center" valign="top">
	             <c:if test="${fn:length(pageBean.items) > 2 }">
					  <c:forEach items="${pageBean.items}" begin="2" end="2" var="result" varStatus="status">
						  <span class="STYLE25" id="t_2_2_title">${result.name }</span>
					</c:forEach>
				 </c:if>
	          </td>
	          <td align="center" valign="top">          	
				<c:if test="${fn:length(pageBean.items) > 3 }">
					<c:forEach items="${pageBean.items}" begin="3" end="3" var="result" varStatus="status">
						  <span class="STYLE25" id="t_2_3_title">${result.name }</span>
					</c:forEach>
				 </c:if>
			  </td>
	          <td align="center" valign="top">
	             <c:if test="${fn:length(pageBean.items) > 4 }">
					  <c:forEach items="${pageBean.items}" begin="4" end="4" var="result" varStatus="status">
						  <span class="STYLE25" id="t_2_4_title">${result.name }</span>
					</c:forEach>
				 </c:if>
	          </td>
	        </tr>
	</table>
    <table border="0" align="center" cellpadding="0" cellspacing="4"  width="1142">
	        <tr>
	          <td width="224" height="177" align="center">			    			 
		           <c:if test="${fn:length(pageBean.items) > 5 }">
					    <c:forEach items="${pageBean.items}" begin="5" end="5" var="result" varStatus="status">
						   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusImg('t_2_5','liston');" onblur="focusImg('t_2_5','listoff');">
							    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_5" class="listoff"/>
						    </a>
						 </c:forEach>
				  </c:if>
			  </td>
	          <td width="224" align="center">
	             <c:if test="${fn:length(pageBean.items) > 6 }">
				   <c:forEach items="${pageBean.items}" begin="6" end="6" var="result" varStatus="status">
						   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusImg('t_2_6','liston');" onblur="focusImg('t_2_6','listoff');">
							    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_6" class="listoff"/>
						    </a>
					</c:forEach>
				 </c:if>
	          </td>
	          <td width="224" align="center">
	             <c:if test="${fn:length(pageBean.items) > 7 }">
				   <c:forEach items="${pageBean.items}" begin="7" end="7" var="result" varStatus="status">
						   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusImg('t_2_7','liston');" onblur="focusImg('t_2_7','listoff');">
							    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_7" class="listoff"/>
						    </a>
					</c:forEach>
				 </c:if>
	          </td>
	          <td width="224" align="center">
	             <c:if test="${fn:length(pageBean.items) > 8 }">
				   <c:forEach items="${pageBean.items}" begin="8" end="8" var="result" varStatus="status">
						   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusImg('t_2_8','liston');" onblur="focusImg('t_2_8','listoff');">
							    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_8" class="listoff"/>
						    </a>
					</c:forEach>
				 </c:if>
	          </td>
	         <td width="224" align="center">
	             <c:if test="${fn:length(pageBean.items) > 9 }">
				   <c:forEach items="${pageBean.items}" begin="9" end="9" var="result" varStatus="status">
						   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusImg('t_2_9','liston');" onblur="focusImg('t_2_9','listoff');">
							    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_9" class="listoff"/>
						    </a>
					</c:forEach>
				 </c:if>
	          </td>
	        </tr>
	        <tr>
	          <td height="30" align="center" valign="top">
	          	 <c:if test="${fn:length(pageBean.items) > 5 }">
					  <c:forEach items="${pageBean.items}" begin="5" end="5" var="result" varStatus="status">
						  <span class="STYLE25" id="t_2_5_title">${result.name }</span>
					</c:forEach>
				 </c:if>
	          </td>
	          <td align="center" valign="top">
	          	 <c:if test="${fn:length(pageBean.items) > 6 }">
					  <c:forEach items="${pageBean.items}" begin="6" end="6" var="result" varStatus="status">
						  <span class="STYLE25" id="t_2_6_title">${result.name }</span>
					</c:forEach>
				 </c:if>
	          </td>
	          <td align="center" valign="top">
	             <c:if test="${fn:length(pageBean.items) > 7 }">
					  <c:forEach items="${pageBean.items}" begin="7" end="7" var="result" varStatus="status">
						  <span class="STYLE25" id="t_2_7_title">${result.name }</span>
					</c:forEach>
				 </c:if>
	          </td>
	          <td align="center" valign="top">          	
				<c:if test="${fn:length(pageBean.items) > 8 }">
					<c:forEach items="${pageBean.items}" begin="8" end="8" var="result" varStatus="status">
						  <span class="STYLE25" id="t_2_8_title">${result.name }</span>
					</c:forEach>
				 </c:if>
			  </td>
	          <td align="center" valign="top">
	             <c:if test="${fn:length(pageBean.items) > 9 }">
					  <c:forEach items="${pageBean.items}" begin="9" end="9" var="result" varStatus="status">
						  <span class="STYLE25" id="t_2_9_title">${result.name }</span>
					</c:forEach>
				 </c:if>
	          </td>
	        </tr>
	</table>
      <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="100" align="center" class="STYLE14">${pageBean.curPage}/${pageBean.totalPages} 
		           　<c:choose>
		           <c:when test="${pageBean.curPage > 1}">
		           		<a href="${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=${requestScope.columnID }&curPage=${pageBean.curPage-1}&pageSize=10" class="STYLE12">上一页</a>
		           </c:when>
		           <c:otherwise>
		           		<a href="#" class="STYLE14">上一页</a>
		           </c:otherwise>
		      </c:choose>
		           　<c:choose>
		           <c:when test="${pageBean.curPage < pageBean.totalPages}">
		           		<a href="${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=${requestScope.columnID }&curPage=${pageBean.curPage+1}&pageSize=10" class="STYLE12">下一页</a>
		           </c:when>
		           <c:otherwise>
		           		<a href="#" class="STYLE14">下一页</a>
		           </c:otherwise>
		      </c:choose>
		  </td>
        </tr>
      </table></td>
    <td width="73"><img src="images/yyzj-gq-6.jpg" width="73" height="591" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/yyzj-gq-7.jpg" width="1280" height="28" /></td>
  </tr>
</table>

</body>
</html>
