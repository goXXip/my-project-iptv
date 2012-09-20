<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="640*530" />
<title>疯狂英语</title>
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
	background: transparent;
}
a:link{text-decoration:none;}
a:hover{text-decoration:none;}
a:VISITED {text-decoration:none;}

.STYLE9 {color: #FFFFFF; font-size: 20px; font-family: "黑体";}
.STYLE10 {color: #FBB90B; font-size: 18px; font-family: "黑体"; }
.STYLE11 {
	font-family: "黑体";
	font-size: 16px;
	color: #FFFFFF;
}
.STYLE12 {
	color: #FF9900;
	font-size: 16px;
}
.STYLE13 {font-family: "黑体"; font-size: 16px; color: #FFFFFF;margin-top:10px;}
.STYLE17 {color: #FFFFFF; font-size: 18px; font-family: "黑体"; }
.titleon {
	float: left;
	width:208px; 
	height:47px;
	overflow: hidden;
	padding-left: 10px;
	border-style: solid; 
	border-width: 2px;
	/*border-color: #FFA22F;*/ 
	border-color: #FFffFf; 
	color: #FFFFFF; 
	font-size: 18px;
	line-height: 47px;
	background: url("images/lyfkyy-5-2.jpg");
}
.titleoff {
	float: left;
	width:210px; 
	height:47px;
	overflow: hidden;
	padding-left: 10px;
	border-style: solid; 
	border-width: 1px;
	border-color: #CC7100; 
	color: #FBB90B; 
	font-size: 18px;
	line-height: 47px;
	background: url("images/lyfkyy-5.jpg");
}
.listtr {
	float: left;
	margin-left: 10px;
	height: 130px;
}
.liston {
	float: left;
	margin-right: 8px;
	width: 178px;
	height: 124px;
	border: solid 1px #FFDC37;
	background-color: #8E3131;
}

.listoff {
	float: left;
	margin-right: 8px;
	width: 178px;
	height: 124px;
	border: solid 1px #b96400;
}
</style>

<script type="text/javascript">
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
		if(backUrl != ""){
			location.href = "${ctx}/default_bq.jsp" ;
		}
		else{
			window.history.back();
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

<body bgcolor="transparent">

<%@ include file="/crazyenglish/head.jsp" %>
<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="33"><img src="images/lyfkyy-2.jpg" width="33" height="434" /></td>
    <td width="575" valign="top"><table width="575" border="0" cellspacing="0" cellpadding="0"  bgcolor="#602121">
      <tr>
        <td height="10"></td>
      </tr>
    </table>
   <table width="575" border="0" cellspacing="0" cellpadding="0">
   		<tr><td width="10" bgcolor="#602121"></td>
   		<td width="555">
			 <table width="555" border="0" align="center" cellpadding="0" cellspacing="0">
			      <tr>
			        <td width="230" height="54" bgcolor="#602121">
			        	<c:if test="${fn:length(requestScope.filmList) > 0 }">
					      <c:forEach items="${requestScope.filmList}" begin="0" end="0" var="result" varStatus="status">
					        <a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}&from=index" id="defaultFocus" onfocus="focusStyle('t_0_${status.count }','titleon');" onblur="focusStyle('t_0_${status.count }','titleoff');">
					        	<div id="t_0_${status.count }" class="titleoff">${result.name }</div>
					        </a>
					      </c:forEach>
					    </c:if>
			        </td>
				    <td width="325" rowspan="5" style="border-style: solid;border-color: #b96400;border-width: 1px;">
			        	 <table border="0" align="center" cellpadding="0" cellspacing="0" width="325">
			        		  <tr><td height="12" bgcolor="#602121"></td></tr>
					          <tr><td height="244">
					            <iframe id="freeVideo" frameborder="0" scrolling="no" style="background-color: transparent;" width="325" height="244"></iframe>
					           </td>
					          </tr>
					          <tr><td height="12" bgcolor="#602121"></td></tr>
				        </table> 
			        </td>
			      </tr>
		         <tr  bgcolor="#602121">
		        	<td height="54">
		        	   <c:if test="${fn:length(requestScope.filmList) > 1 }">
		      				<c:forEach items="${requestScope.filmList}" begin="1" end="1" var="result" varStatus="status">
					        	<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_1','titleon');" onblur="focusStyle('t_1_1','titleoff');">
					        		<div id="t_1_1" class="titleoff">${result.name }</div>
					        	</a>
			        	  </c:forEach>
	     			   </c:if>
		        	</td>
		      	 </tr>
		      <tr  bgcolor="#602121">
		        	<td height="54">
		        	   <c:if test="${fn:length(requestScope.filmList) > 2 }">
		      				<c:forEach items="${requestScope.filmList}" begin="2" end="2" var="result" varStatus="status">
					        	<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_2','titleon');" onblur="focusStyle('t_1_2','titleoff');">
					        		<div id="t_1_2" class="titleoff">${result.name }</div>
					        	</a>
			        	  </c:forEach>
	     			   </c:if>
		        	</td>
		      	 </tr>
		      	<tr  bgcolor="#602121">
		        	<td height="54">
		        	   <c:if test="${fn:length(requestScope.filmList) > 3 }">
		      				<c:forEach items="${requestScope.filmList}" begin="3" end="3" var="result" varStatus="status">
					        	<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_3','titleon');" onblur="focusStyle('t_1_3','titleoff');">
					        		<div id="t_1_3" class="titleoff">${result.name }</div>
					        	</a>
			        	  </c:forEach>
	     			   </c:if>
		        	</td>
		      	 </tr>
		      	<tr  bgcolor="#602121">
		        	<td height="54">
		        	   <c:if test="${fn:length(requestScope.filmList) > 4 }">
		      				<c:forEach items="${requestScope.filmList}" begin="4" end="4" var="result" varStatus="status">
					        	<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_4','titleon');" onblur="focusStyle('t_1_4','titleoff');">
					        		<div id="t_1_4" class="titleoff">${result.name }</div>
					        	</a>
			        	  </c:forEach>
	     			   </c:if>
		        	</td>
		      	 </tr>
			    </table>
    		</td>
    		<td width="10" bgcolor="#602121"></td>
    	</tr>
    </table>
    <table width="575" border="0" cellspacing="0" cellpadding="0" bgcolor="#602121">
        <tr>
          <td height="5"></td>
        </tr>
    </table>
    <table  width="575" border="0" cellspacing="0" cellpadding="0" bgcolor="#602121" height="149">
     	<tr><td width="10"></td>
	       <td>
			      <table width="564" border="0" cellspacing="0" cellpadding="0">
			        <tr>
						 <td width="188" height="122">
						 	<c:if test="${fn:length(requestScope.relativeList) > 0 }">
				        	  <c:forEach items="${requestScope.relativeList}" var="result" varStatus="status"  begin="0" end="0">
						 		<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_2_0','liston');" onblur="focusStyle('t_2_0','listoff');">
							 		<div id="t_2_0" class="listoff">
								 		<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
												<tr>
													<td width="75" height="124"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
													</td>
													<td width="90" valign="top"><p class="STYLE13">${result.name }</p>
														<p class="STYLE13">主讲：${result.actor }</p>
													</td>
												</tr>
										</table>
									</div>
							    </a>
							  </c:forEach>
							</c:if>
						</td>
						<td width="188" height="122">
						 	<c:if test="${fn:length(requestScope.relativeList) > 1 }">
				        	  <c:forEach items="${requestScope.relativeList}" var="result" varStatus="status"  begin="1" end="1">
						 		<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_2_1','liston');" onblur="focusStyle('t_2_1','listoff');">
							 		<div id="t_2_1" class="listoff">
								 		<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
												<tr>
													<td width="75" height="124"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
													</td>
													<td width="90" valign="top"><p class="STYLE13">${result.name }</p>
														<p class="STYLE13">主讲：${result.actor }</p>
													</td>
												</tr>
										</table>
									</div>
							    </a>
							  </c:forEach>
							</c:if>
						</td>
						<td width="188" height="122">
						 	<c:if test="${fn:length(requestScope.relativeList) > 2 }">
				        	  <c:forEach items="${requestScope.relativeList}" var="result" varStatus="status"  begin="2" end="2">
						 		<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_2_2','liston');" onblur="focusStyle('t_2_2','listoff');">
							 		<div id="t_2_2" class="listoff">
								 		<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
												<tr>
													<td width="75" height="124"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
													</td>
													<td width="90" valign="top"><p class="STYLE13">${result.name }</p>
														<p class="STYLE13">主讲：${result.actor }</p>
													</td>
												</tr>
										</table>
									</div>
							    </a>
							  </c:forEach>
							</c:if>
						</td>
			      	</tr>
			      </table>
		     </td>
		    </tr>
		  </table>
      </td>
    <td width="32"><img src="images/lyfkyy-3.jpg" border="0" width="32" height="434" /></td>
  </tr>
  <tr>
       <td colspan="3"><img src="images/lyfkyy-4.jpg" width="640" height="26" border="0"/></td>
  </tr>
</table>

<script type="text/javascript">

var firstFileID = "${requestScope.defaultPlayID}";//默认播放第一个影片第一集
var prefix = "${requestScope.prefix}";

function init(){
	$("freeVideo").src = prefix + "PlayTrailerInVas.jsp?left=271&top=88&width=327&height=246&type=VOD&value=" + firstFileID;
}

	init();
</script>

<jsp:include page="/crazyenglish/footer.jsp"></jsp:include>
</body>
</html>
