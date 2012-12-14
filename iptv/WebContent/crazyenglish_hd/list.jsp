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
	width:1280px;
	height:720px;
}
.liston {
	float: left;
	width: 268px;
	height: 185px;
	border: solid 1px #facb50;
	background-color: #972C28;
	color: #ffffff;
}

.listoff {
	float: left;
	width: 268px;
	height: 185px;
	border: solid 1px #b96400;
	color: #ffffff;
}
a:link{text-decoration:none;}
a:hover{text-decoration:none;}
a:VISITED {text-decoration:none;}

.STYLE12 {font-family: "黑体";color: #FF9900;font-size: 24px;}
.STYLE14 {font-family: "黑体";color: #FFFFFF;font-size: 24px;}
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
		location.href = "${ctx }/crazyenglish_hd/filmAction!engIndex.do";
		return 0;
		break;
	case 33://上一页
		if(curPage > 1){
			var pageNo = curPage-1 ;
			var url = "${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId="+columnID+"&curPage="+pageNo+"&pageSize=8&channelId=2";
			location.href = url;
		}
		return 0;
		break;
	case 34://下一页
		if( curPage < totalPages){
			var pageNo = curPage+1 ;
			var url = "${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId="+columnID+"&curPage="+pageNo+"&pageSize=8&channelId=2";
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
</script>

</head>

<body>

<%@ include file="/crazyenglish_hd/head.jsp" %>

<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="69"><img src="images/fkyy-gq-4.jpg" width="69" height="590"/></td>
    <td width="1142" valign="top" bgcolor="602121">
    <table width="1142" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="40" align="center">&nbsp;</td>
      </tr>
    </table>
    <table height="146" border="0" align="center" cellpadding="0" cellspacing="12">
        <tr>
          <td width="268" height="185">
          	 <c:if test="${fn:length(pageBean.items) > 0 }">
				<c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="0" end="0">
					    <div id="t_0" class="listoff">
					          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;color: #ffffff">
					             <tr>
					              <td width="132" height="165">
					             	 <a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=column"  id="defaultFocus" onfocus="focusStyle('t_0','liston');" onblur="focusStyle('t_0','listoff');">
					              		<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
					              	</a>
					              </td>
					              <td width="116" valign="top"><span style="font-size: 24px">${result.name }</span><br />
					                 <span style="font-size: 20px">适用：${result.audient }<br />主讲：${result.actor }</span>
					              </td>
					             </tr>
					          </table>
		          		</div>
			    </c:forEach>
			 </c:if>
          </td>
          <td width="269">          	 
          	<c:if test="${fn:length(pageBean.items) > 1 }">
				<c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="1" end="1">
					    <div id="t_1" class="listoff">
					          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;color: #ffffff">
					             <tr>
					              <td width="132" height="165">
					              	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusStyle('t_1','liston');" onblur="focusStyle('t_1','listoff');">
					              		<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
					              	</a>
					              </td>
					              <td width="116" valign="top"><span style="font-size: 24px">${result.name }</span><br />
					                 <span style="font-size: 20px">适用：${result.audient }<br />主讲：${result.actor }</span>
					              </td>
					             </tr>
					          </table>
		          		</div>
			    </c:forEach>
			 </c:if>
		</td>
          <td width="269">          	
	          <c:if test="${fn:length(pageBean.items) > 2 }">
					<c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="2" end="2">
						    <div id="t_2" class="listoff">
						          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;color: #ffffff">
						             <tr>
						              <td width="132" height="165">
						              	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusStyle('t_2','liston');" onblur="focusStyle('t_2','listoff');">
						              		<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
						              	</a>
						              </td>
						              <td width="116" valign="top"><span style="font-size: 24px">${result.name }</span><br />
						                <span style="font-size: 20px">适用：${result.audient }<br />主讲：${result.actor }</span>
						              </td>
						             </tr>
						          </table>
			          		</div>
				    </c:forEach>
				 </c:if>
		 </td>
          <td width="268">	          
          	<c:if test="${fn:length(pageBean.items) > 3 }">
					<c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="3" end="3">
						    <div id="t_3" class="listoff">
						          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;color: #ffffff">
						             <tr>
						              <td width="132" height="165">
						              	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusStyle('t_3','liston');" onblur="focusStyle('t_3','listoff');">
						              		<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
						              	</a>
						              </td>
						              <td width="116" valign="top"><span style="font-size: 24px">${result.name }</span><br />
						                 <span style="font-size: 20px">适用：${result.audient }<br />主讲：${result.actor }</span>
						              </td>
						             </tr>
						          </table>
			          		</div>
				    </c:forEach>
			</c:if>
		</td>
        </tr>
    </table>
    <table height="146" border="0" align="center" cellpadding="0" cellspacing="12">
        <tr>
          <td width="268" height="185">
          	 <c:if test="${fn:length(pageBean.items) > 4 }">
				<c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="4" end="4">
					    <div id="t_4" class="listoff">
					          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;color: #ffffff">
					             <tr>
					              <td width="132" height="165">
					             	 <a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusStyle('t_4','liston');" onblur="focusStyle('t_4','listoff');">
					              		<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
					              	</a>
					              </td>
					              <td width="116" valign="top"><span style="font-size: 24px">${result.name }</span><br />
					                 <span style="font-size: 20px">适用：${result.audient }<br />主讲：${result.actor }</span>
					              </td>
					             </tr>
					          </table>
		          		</div>
			    </c:forEach>
			 </c:if>
          </td>
          <td width="269">          	 
          	<c:if test="${fn:length(pageBean.items) > 5 }">
				<c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="5" end="5">
					    <div id="t_5" class="listoff">
					          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;color: #ffffff">
					             <tr>
					              <td width="132" height="165">
					              	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusStyle('t_5','liston');" onblur="focusStyle('t_5','listoff');">
					              		<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
					              	</a>
					              </td>
						              <td width="116" valign="top"><span style="font-size: 24px">${result.name }</span><br />
						                 <span style="font-size: 20px">适用：${result.audient }<br />主讲：${result.actor }</span>
						              </td>
					             </tr>
					          </table>
		          		</div>
			    </c:forEach>
			 </c:if>
		</td>
          <td width="269">          	
	          <c:if test="${fn:length(pageBean.items) > 6 }">
					<c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="6" end="6">
						    <div id="t_6" class="listoff">
						          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;color: #ffffff">
						             <tr>
						              <td width="132" height="165">
						              	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusStyle('t_6','liston');" onblur="focusStyle('t_6','listoff');">
						              		<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
						              	</a>
						              </td>
						              <td width="116" valign="top"><span style="font-size: 24px">${result.name }</span><br />
						                 <span style="font-size: 20px">适用：${result.audient }<br />主讲：${result.actor }</span>
						              </td>
						             </tr>
						          </table>
			          		</div>
				    </c:forEach>
				 </c:if>
		 </td>
          <td width="268">	          
          	<c:if test="${fn:length(pageBean.items) > 7 }">
					<c:forEach items="${pageBean.items}" var="result" varStatus="status"  begin="7" end="7">
						    <div id="t_7" class="listoff">
						          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;color: #ffffff">
						             <tr>
						              <td width="132" height="165">
						              	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=column" onfocus="focusStyle('t_7','liston');" onblur="focusStyle('t_7','listoff');">
						              		<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
						              	</a>
						              </td>
						              <td width="116" valign="top"><span style="font-size: 24px">${result.name }</span><br />
						                 <span style="font-size: 20px">适用：${result.audient }<br />主讲：${result.actor }</span>
						              </td>
						             </tr>
						          </table>
			          		</div>
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
		           		<a href="${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId=${requestScope.columnID }&curPage=${pageBean.curPage-1}&pageSize=8&channelId=2" class="STYLE12">上一页</a>
		           </c:when>
		           <c:otherwise>
		           		上一页
		           </c:otherwise>
		      </c:choose>
		           　<c:choose>
		           <c:when test="${pageBean.curPage < pageBean.totalPages}">
		           		<a href="${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId=${requestScope.columnID }&curPage=${pageBean.curPage+1}&pageSize=8&channelId=2" class="STYLE12">下一页</a>
		           </c:when>
		           <c:otherwise>
		           		下一页
		           </c:otherwise>
		      </c:choose>
		  </td>
        </tr>
      </table></td>
    <td><img src="images/fkyy-gq-5.jpg" width="69" height="590" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/fkyy-gq-6.jpg" width="1280" height="29" /></td>
  </tr>
</table>

</body>
</html>
