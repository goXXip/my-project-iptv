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
	font-family: "黑体";
	width: 640px;
	height: 530px;
	background: transparent;
}

a:link {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

a:VISITED {
	text-decoration: none;
}

.STYLE9 {
	color: #FFFFFF;
	font-size: 20px;
	font-family: "黑体";
}

.STYLE10 {
	color: #FFFFFF;
	font-size: 18px;
	font-family: "黑体";
}

.STYLE13 {
	font-family: "黑体";
	font-size: 16px;
	color: #FFFFFF;
}

.STYLE14 {
	font-family: "黑体";
	font-size: 16px;
	color: #edff6f;
}

.STYLE15 {
	color: #edff6f;
	font-size: 18px;
	font-family: "黑体";
}
.table1 {
	border-style: solid;
	border-color: #8bf1e7;
}

.table2 {
	border-style: solid;
	border-color: #CC7100;
}

.table3 {
	border-style: solid;
	border-color: #602121;
}

.table4 {
	border-style: solid;
	border-color: #FFDC37;
	background-color: #8E3131;
}
.titleon {
	float: left;
	width: 208px;
	height: 47px;
	overflow: hidden;
	padding-left: 10px;
	border-style: solid;
	border-width: 2px;
	border-color: #C0F8F2;
	color: #FFFFFF;
	font-size: 18px;
	line-height: 47px;
	background: url("images/bg-02.jpg");
}

.titleoff {
	float: left;
	width: 210px;
	height: 47px;
	overflow: hidden;
	padding-left: 10px;
	border-style: solid;
	border-width: 1px;
	border-color: #8bf1e7;
	color: #edff6f;
	font-size: 18px;
	line-height: 47px;
	background: url("images/bg-01.jpg");
}
ul li {
	list-style: none;
	margin: 0px;
	padding: 0px;
}
.listul {
	margin: 3px 0px 0px 11px;
}
.listtr {
	float: left;
	margin: 10px 0px 0px 10px;
	padding: 0px;
	width: 560px;
	height: 130px;
}
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
var backUrl = "";
var $ = function(id){
	var o = document.getElementById(id);
	return o;
};
window.onload = function() {
	if($("defaultFocus") != "undefined" && $("defaultFocus") != null) {
		$("defaultFocus").focus();
	}
	backUrl = getCookie("backUrl_netitv");
};
function getCookie(key) {
	   var search = key + "=";
	   if(document.cookie.length > 0) {
	      offset = document.cookie.indexOf(search);
	      if(offset != -1) {
	         offset += search.length;
	         end = document.cookie.indexOf(";", offset);
	         if(end == -1) end = document.cookie.length;
	         return unescape(document.cookie.substring(offset, end));
	      }
	   }
	   return "";
}
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
			location.href = backUrl ;
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

<%@ include file="/yyzj/head.jsp" %>

<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="33"><img src="images/zyzj-2.jpg" width="33" height="434" /></td>
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
					        	<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&from=index" id="defaultFocus" onfocus="focusStyle('t_0_${status.count }','titleon');" onblur="focusStyle('t_0_${status.count }','titleoff');">
					        		<div id="t_0_${status.count }" class="titleoff" >${result.name }</div>
					        	</a>
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
				        	<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_1','titleon');" onblur="focusStyle('t_1_1','titleoff');">
				        		<div id="t_1_1" class="titleoff" >${result.name }</div>
				        	</a>
			        	 </c:forEach>
      				</c:if>
	        	</td>
			  </tr>
			 <tr bgcolor="#214c47">
	        	<td height="54">
	        	  <c:if test="${fn:length(requestScope.filmList) > 2 }">
		      			<c:forEach items="${requestScope.filmList}" begin="2" end="2" var="result" varStatus="status">
				        	<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_2','titleon');" onblur="focusStyle('t_1_2','titleoff');">
				        		<div id="t_1_2" class="titleoff" >${result.name }</div>
				        	</a>
			        	 </c:forEach>
      				</c:if>
	        	</td>
			  </tr>
			  <tr bgcolor="#214c47">
	        	<td height="54">
	        	  <c:if test="${fn:length(requestScope.filmList) > 3 }">
		      			<c:forEach items="${requestScope.filmList}" begin="3" end="3" var="result" varStatus="status">
				        	<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_3','titleon');" onblur="focusStyle('t_1_3','titleoff');">
				        		<div id="t_1_3" class="titleoff" >${result.name }</div>
				        	</a>
			        	 </c:forEach>
      				</c:if>
	        	</td>
			  </tr>
			  <tr bgcolor="#214c47">
	        	<td height="54">
	        	  <c:if test="${fn:length(requestScope.filmList) > 4 }">
		      			<c:forEach items="${requestScope.filmList}" begin="4" end="4" var="result" varStatus="status">
				        	<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_1_4','titleon');" onblur="focusStyle('t_1_4','titleoff');">
				        		<div id="t_1_4" class="titleoff" >${result.name }</div>
				        	</a>
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
				    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_2_0','liston');" onblur="focusStyle('t_2_0','listoff');">
					    				<div id="t_2_0" class="listoff">
					    						<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" />
					    						<div class="listtitle">${result.name }</div>
					    				</div>
				    				</a>
				    			</c:forEach>
				    		 </c:if>
				    	</td>
			    		<td width="141" align="left">
			    			 <c:if test="${fn:length(requestScope.relativeList) > 1 }">
			    			 	<c:forEach items="${requestScope.relativeList}" begin="1" end="1" var="result" varStatus="status">
				    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_2_1','liston');" onblur="focusStyle('t_2_1}','listoff');">
					    				<div id="t_2_1" class="listoff">
					    						<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" />
					    						<div class="listtitle">${result.name }</div>
					    				</div>
				    				</a>
				    			</c:forEach>
				    		 </c:if>
				    	</td>
			    		<td width="141" align="left">
			    			 <c:if test="${fn:length(requestScope.relativeList) > 2 }">
			    			 	<c:forEach items="${requestScope.relativeList}" begin="2" end="2" var="result" varStatus="status">
				    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_2_2','liston');" onblur="focusStyle('t_2_2','listoff');">
					    				<div id="t_2_2" class="listoff">
					    						<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" />
					    						<div class="listtitle">${result.name }</div>
					    				</div>
				    				</a>
				    			</c:forEach>
				    		 </c:if>
				    	</td>
			    		<td width="141" align="left">
			    			 <c:if test="${fn:length(requestScope.relativeList) > 3 }">
			    			 	<c:forEach items="${requestScope.relativeList}" begin="3" end="3" var="result" varStatus="status">
				    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_2_3','liston');" onblur="focusStyle('t_2_3','listoff');">
					    				<div id="t_2_3" class="listoff">
					    						<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" />
					    						<div class="listtitle">${result.name }</div>
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
    <td width="32"><img src="images/zyzj-3.jpg" width="32" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/zyzj-4.jpg" width="640" height="26" /></td>
  </tr>
</table>

<script type="text/javascript">

var firstFileID = "${requestScope.defaultPlayID}";//默认播放第一个影片第一集
var prefix = "${requestScope.prefix}";

	function init(){
		$("freeVideo").src = prefix + "PlayTrailerInVas.jsp?left=275&top=90&width=325&height=244&type=VOD&value=" + firstFileID;
	}

	init();
</script>

<jsp:include page="/yyzj/footer.jsp"></jsp:include>

</body>
</html>
