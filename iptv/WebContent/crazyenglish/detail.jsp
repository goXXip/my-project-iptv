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
	width: 640px;
	height: 530px;
	font-family: "黑体";
}
a{display: inline-block;text-decoration:none;}
.STYLE9 {color: #FFFFFF; font-size: 20px; font-family: "黑体";}
.STYLE10 {color: #FFFFFF; font-size: 18px; font-family: "黑体"; }
.STYLE11 {
	font-family: "黑体";
	font-size: 16px;
	color: #FFFFFF;
}
.STYLE12 {
	color: #FF9900;
	font-size: 16px;
}
.STYLE13 {font-family: "黑体"; font-size: 16px; color: #FFFFFF; margin-top:10px;}
.style15 {
	font-size: 24px;
	color: #FFFFFF;
	font-family: "黑体";
}
.style16 {color: #FF9900; font-size: 16px; font-family: "黑体"; }
.style17 {color: #FF9900; font-size: 16px; font-family: "黑体"; line-height: 25px;}
.style18 {color: #FF9900}

.listtr {
	float: left;
	margin-left: 10px;
	height: 130px;
}
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
var from = "${requestScope.from}";
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
		if(from == "index"){
			location.href = "${ctx }/crazyenglish/filmAction!engIndex.do";
		}
		else if(from == "column"){
			location.href = "${ctx }/crazyenglish/filmAction!listFilmByColumnId.do?columnId=" +columnID +"&channelId=2";
		}
		else{
			location.href = "${ctx }/crazyenglish/filmAction!engIndex.do";
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
}
</script>

</head>

<body>
<%@ include file="/crazyenglish/head.jsp" %>
<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="33"><img src="images/lyfkyy-2.jpg" width="33" height="434" /></td>
	<td width="575" valign="top" bgcolor="#602121">
		<table width="100" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="10"></td>
			</tr>
		</table>
		<table width="555" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td width="144" rowspan="3" valign="top"><img
					src="${ctx }/uploadImages/${film.bigImage.id}.${film.bigImage.suffix}" width="128" height="170" />
				</td>
				<td height="34" colspan="3"><span class="style15">《${film.name }》</span>
				</td>
			</tr>
			<tr>
				<td height="134" colspan="3" valign="top" class="STYLE9">${film.description }</td>
			</tr>
			<tr>
				<td height="44" valign="top" class="style17">集数：${film.serialCount }集 <br />
					价格：产品包订购</td>
				<td valign="top" class="style17">主讲：${film.actor }<br/>期限：一个月</td>
				<td valign="top" class="style17">适用：${film.audient }</td>
			</tr>
			<tr>
				<td height="44" valign="top">&nbsp;</td>
				<td valign="top">
					<a href="${ctx }/servlet/serviceAuth?filmId=${film.id }&channelId=2&from=${requestScope.from}&ContentID=${film.contentId }" id="defaultFocus">
						<img src="images/anniu-02.jpg" name="Image12" width="90" height="38" border="0" id="Image12" />
					</a>
				</td>
				<td valign="top">&nbsp;</td>
				<td valign="top">&nbsp;</td>
			</tr>
		</table>
		<table width="100" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="5"></td>
			</tr>
		</table>
		<table width="564" border="0" cellspacing="0" cellpadding="0" style="margin-left:10px;">
        <tr>
			 <td width="188" height="122">
			 	<c:if test="${fn:length(requestScope.relativeList) > 0 }">
	        	  <c:forEach items="${requestScope.relativeList}" var="result" varStatus="status"  begin="0" end="0">
				 		<div id="t_2_0" class="listoff">
					 		<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td width="75" height="124">
											<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_0','liston');" onblur="focusStyle('t_2_0','listoff');">
												<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
											</a>
										</td>
										<td width="90" valign="top"><p class="STYLE13">${result.name }</p>
											<p class="STYLE13">主讲：${result.actor }</p>
										</td>
									</tr>
							</table>
						</div>
				  </c:forEach>
				</c:if>
			</td>
			<td width="188" height="122">
			 	<c:if test="${fn:length(requestScope.relativeList) > 1 }">
	        	  <c:forEach items="${requestScope.relativeList}" var="result" varStatus="status"  begin="1" end="1">
				 		<div id="t_2_1" class="listoff">
					 		<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td width="75" height="124">
											<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_1','liston');" onblur="focusStyle('t_2_1','listoff');">
												<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
											</a>
										</td>
										<td width="90" valign="top"><p class="STYLE13">${result.name }</p>
											<p class="STYLE13">主讲：${result.actor }</p>
										</td>
									</tr>
							</table>
						</div>
				  </c:forEach>
				</c:if>
			</td>
			<td width="188" height="122">
			 	<c:if test="${fn:length(requestScope.relativeList) > 2 }">
	        	  <c:forEach items="${requestScope.relativeList}" var="result" varStatus="status"  begin="2" end="2">
				 		<div id="t_2_2" class="listoff">
					 		<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td width="75" height="124">
											<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_2','liston');" onblur="focusStyle('t_2_2','listoff');">
												<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
											</a>
										</td>
										<td width="90" valign="top"><p class="STYLE13">${result.name }</p>
											<p class="STYLE13">主讲：${result.actor }</p>
										</td>
									</tr>
							</table>
						</div>
				  </c:forEach>
				</c:if>
			</td>
      	</tr>
      </table>
	</td>
	<td width="32"><img src="images/lyfkyy-3.jpg" width="32" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/lyfkyy-4.jpg" width="640" height="26" /></td>
  </tr>
</table>

<jsp:include page="/crazyenglish/footer.jsp"></jsp:include>

</body>
</html>
