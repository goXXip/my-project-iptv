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
	letter-spacing: -1px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "黑体";
    width: 640px;
	height: 530px;
}
a{text-decoration:none;}
.STYLE14 {font-family: "黑体";color: #FFFFFF;font-size: 16px;}
.STYLE13 {font-family: "黑体"; font-size: 16px; color: #FFFFFF; margin-top:10px;}
.liston {
	float: left;
	margin-right: 5px;
	width: 180px;
	height: 120px;
	border: solid 1px #FFDC37;
	background-color: #8E3131;
}

.listoff {
	float: left;
	margin-right: 5px;
	width: 180px;
	height: 120px;
	border: solid 1px #b96400;
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
<%@ include file="/crazyenglish/head.jsp" %>
<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="33"><img src="images/lyfkyy-2.jpg" width="33" height="434" /></td>
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
							<div id="t_0" class="listoff">
								<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
						            <tr>
						              <td width="75" height="122">
							              	<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_0','liston');" onblur="focusStyle('t_0','listoff');">
							              		<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
							             	</a>
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
			 			<div id="t_1" class="listoff">
			 				<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
					            <tr>
					              <td width="75" height="122">
						               <a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_1','liston');" onblur="focusStyle('t_1','listoff');">
						              		<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
						              	</a>
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
			 			<div id="t_2" class="listoff">
				 			<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
					            <tr>
					              <td width="75" height="122">
					               	<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2','liston');" onblur="focusStyle('t_2','listoff');">
					              		<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
					              	</a>
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
			 		<div id="t_3" class="listoff">
			 			<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
				            <tr>
				              <td width="75" height="122">
					              <a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_3','liston');" onblur="focusStyle('t_3','listoff');">
					              	<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
					              </a>
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
			 			<div id="t_4" class="listoff"><table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
				            <tr>
				              <td width="75" height="122">
					              <a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_4','liston');" onblur="focusStyle('t_4','listoff');">
					              	<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
					              </a>
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
			 		 	<div id="t_5" class="listoff"><table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
				            <tr>
				              <td width="75" height="122">
					              <a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_5','liston');" onblur="focusStyle('t_5','listoff');">
					              	<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
					              </a>
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
			 		<div id="t_6" class="listoff"><table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
				            <tr>
				              <td width="75" height="122">
					              <a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_6','liston');" onblur="focusStyle('t_6','listoff');">
					              	<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
					              </a>
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
			 		<div id="t_7" class="listoff"><table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
				            <tr>
				              <td width="75" height="122">
					              <a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_7','liston');" onblur="focusStyle('t_7','listoff');">
					              	<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
					              </a>
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
			 		<div id="t_8" class="listoff"><table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
				            <tr>
				              <td width="75" height="122">
					              <a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_8','liston');" onblur="focusStyle('t_8','listoff');">
					            	 <img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
					              </a>
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
      <table width="575" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
        	<td width="170"></td>
        	<td align="center" height="27" valign="bottom" class="STYLE14" width="50">${pageBean.curPage}/${pageBean.totalPages}</td>
            <td align="center" height="27" valign="bottom" class="STYLE14" width="90">
			           <c:if test="${pageBean.curPage > 1}">
			           		<a href="${ctx }/crazyenglish/filmAction!listFilmByColumnId.do?columnId=${requestScope.columnID }&curPage=${pageBean.curPage-1}&pageSize=9&channelId=2" class="STYLE14">上一页</a>
			           </c:if>
			</td>
			<td align="center" height="27" valign="bottom" class="STYLE14" width="90">
			           <c:if test="${pageBean.curPage < pageBean.totalPages}">
			           		<a href="${ctx }/crazyenglish/filmAction!listFilmByColumnId.do?columnId=${requestScope.columnID }&curPage=${pageBean.curPage+1}&pageSize=9&channelId=2" class="STYLE14">下一页</a>
			           </c:if>
           </td>
           <td width="175"></td>
        </tr>
      </table></td>
    <td width="32"><img src="images/lyfkyy-3.jpg" width="32" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/lyfkyy-4.jpg" width="640" height="26" border="0"/></td>
  </tr>
</table>

<jsp:include page="/crazyenglish/footer.jsp"></jsp:include>

</body>
</html>
