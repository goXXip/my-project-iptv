<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/common/taglibs.jsp"%>
    
<%--
String token = (String)request.getSession().getAttribute("UserToken");
if(token == null || token == "") {
	response.sendRedirect("/iptv/servlet/authenticate?UserID=" + request.getParameter("UserID") + "&ReturnURL=/iptv/yyzj/index.jsp");
}
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>孕育早教</title>
<style type="text/css">
<!--
body {
	letter-spacing: -1px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "黑体";
	width: 644px;
	height: 534px;
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
	width: 266px;
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
	width: 268px;
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
-->
</style>

<script type="text/javascript">

/************** 第一个默认播放影片节目ID  *******************/
var defaultPlayID = "${requestScope.defaultPlayID}";

var context = "${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}";
	function goto_play(mode,filmId,ztID){
		var pay_confirm_url = context + "/yyzj/filmAction!orderConfirm.do?filmId="+filmId;
		var backUrl = context + "/yyzj/filmAction!eduIndex.do";
		var dom_id = "fileID_" + filmId;
		var obj = document.getElementById(dom_id);
		if(typeof(obj) != "undefined"){
			var fileID = obj.value;
			play(mode, fileID, ztID, pay_confirm_url, backUrl);
		}
	}
</script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/Cookies.js"></script>
<script type="text/javascript" src="js/index.js"></script>

</head>

<body bgcolor="transparent">

<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/zyzj-1.jpg" width="184" height="72" name="Image5" border="0" usemap="#Image5Map" id="Image5" /></td>
    <td><img src="images/zyzj-1-2.jpg" name="Image6" width="136" height="72" border="0" usemap="#Image6Map" id="Image6" /></td>
    <td><img src="images/zyzj-1-3.jpg" name="Image7" width="129" height="72" border="0" usemap="#Image7Map" id="Image7" /></td>
    <td><img src="images/zyzj-1-4.jpg" name="Image8" width="195" height="72" border="0" usemap="#Image8Map" id="Image8" /></td>
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
				        	<td width="291" height="54" bgcolor="#214c47">
					        	<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&columnId=${result.columnId}" id="defaultFocus" onfocus="focusStyle('t_0_${status.count }','titleon');goto_play('win', '${result.id}','${result.productId}');" onblur="focusStyle('t_0_${status.count }','titleoff');">
					        		<div id="t_0_${status.count }" class="titleoff" >${result.name }
					        			<c:forEach items="${result.assetList }"  begin="0" end="0" var="asset" varStatus="st">
					        				<input id="fileID_${result.id}" value="${asset.contentid }" type="hidden"/>
					        			</c:forEach>
					        		</div>
					        	</a>
				        	</td>
				      </c:forEach>
			      </c:if>
		        <td width="264" rowspan="5" style="background-color: transparent;">
		        	<iframe id="freeVideo" frameborder="0" scrolling="no" width="264" height="270" style="background-color: transparent;"></iframe>
		        </td>
		      </tr>
			  <tr bgcolor="#214c47">
			  	<td height="54">
	        	  <c:if test="${fn:length(requestScope.filmList) > 1 }">
		      			<c:forEach items="${requestScope.filmList}" begin="1" end="1" var="result" varStatus="status">
				        	<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&columnId=${result.columnId}" onfocus="focusStyle('t_1_${status.count }','titleon');goto_play('win', '${result.id}','${result.productId}');" onblur="focusStyle('t_1_${status.count }','titleoff');">
				        		<div id="t_1_${status.count }" class="titleoff" >${result.name }
				        			<c:forEach items="${result.assetList }"  begin="0" end="0" var="asset" varStatus="st2">
					        			<input id="fileID_${result.id}" value="${asset.contentid }" type="hidden"/>
					        		</c:forEach>
				        		</div>
				        	</a>
			        	 </c:forEach>
      				</c:if>
	        	</td>
			  </tr>
			 <tr bgcolor="#214c47">
	        	<td height="54">
	        	  <c:if test="${fn:length(requestScope.filmList) > 2 }">
		      			<c:forEach items="${requestScope.filmList}" begin="2" end="2" var="result" varStatus="status">
				        	<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&columnId=${result.columnId}" onfocus="focusStyle('t_1_${status.count }','titleon');goto_play('win', '${result.id}','${result.productId}');" onblur="focusStyle('t_1_${status.count }','titleoff');">
				        		<div id="t_1_${status.count }" class="titleoff" >${result.name }
				        			<c:forEach items="${result.assetList }"  begin="0" end="0" var="asset" varStatus="st2">
					        			<input id="fileID_${result.id}" value="${asset.contentid }" type="hidden"/>
					        		</c:forEach>
				        		</div>
				        	</a>
			        	 </c:forEach>
      				</c:if>
	        	</td>
			  </tr>
			  <tr bgcolor="#214c47">
	        	<td height="54">
	        	  <c:if test="${fn:length(requestScope.filmList) > 3 }">
		      			<c:forEach items="${requestScope.filmList}" begin="3" end="3" var="result" varStatus="status">
				        	<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&columnId=${result.columnId}" onfocus="focusStyle('t_1_${status.count }','titleon');goto_play('win', '${result.id}','${result.productId}');" onblur="focusStyle('t_1_${status.count }','titleoff');">
				        		<div id="t_1_${status.count }" class="titleoff" >${result.name }
				        			<c:forEach items="${result.assetList }"  begin="0" end="0" var="asset" varStatus="st2">
					        			<input id="fileID_${result.id}" value="${asset.contentid }" type="hidden"/>
					        		</c:forEach>
				        		</div>
				        	</a>
			        	 </c:forEach>
      				</c:if>
	        	</td>
			  </tr>
			  <tr bgcolor="#214c47">
	        	<td height="54">
	        	  <c:if test="${fn:length(requestScope.filmList) > 4 }">
		      			<c:forEach items="${requestScope.filmList}" begin="4" end="4" var="result" varStatus="status">
				        	<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&columnId=${result.columnId}" onfocus="focusStyle('t_1_${status.count }','titleon');goto_play('win', '${result.id}','${result.productId}');" onblur="focusStyle('t_1_${status.count }','titleoff');">
				        		<div id="t_1_${status.count }" class="titleoff" >${result.name }
				        			<c:forEach items="${result.assetList }"  begin="0" end="0" var="asset" varStatus="st2">
					        			<input id="fileID_${result.id}" value="${asset.contentid }" type="hidden"/>
					        		</c:forEach>
				        		</div>
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
				    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&columnId=${result.columnId}" onfocus="focusStyle('t_2_${status.count }','liston');" onblur="focusStyle('t_2_${status.count }','listoff');">
					    				<div id="t_2_${status.count }" class="listoff">
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
				    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&columnId=${result.columnId}" onfocus="focusStyle('t_2_${status.count }','liston');" onblur="focusStyle('t_2_${status.count }','listoff');">
					    				<div id="t_2_${status.count }" class="listoff">
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
				    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&columnId=${result.columnId}" onfocus="focusStyle('t_2_${status.count }','liston');" onblur="focusStyle('t_2_${status.count }','listoff');">
					    				<div id="t_2_${status.count }" class="listoff">
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
				    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}&columnId=${result.columnId}" onfocus="focusStyle('t_2_${status.count }','liston');" onblur="focusStyle('t_2_${status.count }','listoff');">
					    				<div id="t_2_${status.count }" class="listoff">
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
    <td width="34"><img src="images/zyzj-3.jpg" width="34" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/zyzj-4.jpg" width="644" height="28" /></td>
  </tr>
</table>
<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>
