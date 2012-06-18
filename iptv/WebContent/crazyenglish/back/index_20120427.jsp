<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>疯狂英语</title>
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
.STYLE13 {font-family: "黑体"; font-size: 16px; color: #FFFFFF; height: 36px; overflow: hidden; margin-top:10px;}
.STYLE17 {color: #FFFFFF; font-size: 18px; font-family: "黑体"; }
.table1 {border-style: solid; border-color: #b96400;}
.table2 {border-style: solid; border-color: #CC7100; border-width: 1px;}
.table3 {border-style: solid; border-color: #602121;}
.table4 {border-style: solid; border-color: #FFDC37; background-color: #8E3131; border-width: 1px;}
.table2 img {width: 68px; height: 100px; border: 0px;}
.titleon {
	float: left;
	width:266px; 
	height:47px;
	overflow: hidden;
	padding-left: 10px;
	border-style: solid; 
	border-width: 2px;
	border-color: #FFA22F; 
	color: #FFFFFF; 
	font-size: 18px;
	line-height: 47px;
	background: url("images/lyfkyy-5-2.jpg");
}
.titleoff {
	float: left;
	width:268px; 
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
-->
</style>
<script type="text/javascript">

/************** 第一个默认播放影片节目ID  *******************/
var defaultPlayID = "${requestScope.defaultPlayID}";

var context = "${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}";
	function goto_play(mode,filmId,ztID){
		var pay_confirm_url = context + "/crazyenglish/filmAction!orderConfirm.do?filmId="+filmId;
		var backUrl = context + "/crazyenglish/filmAction!eduIndex.do";
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
    <td><img src="images/lyfkyy-1.jpg" width="179" height="72" name="Image5" border="0" usemap="#Image5Map" id="Image5" /></td>
    <td><img src="images/lyfkyy-1-2.jpg" name="Image9" width="180" height="72" border="0" usemap="#Image9Map" id="Image9" /></td>
    <td><img src="images/lyfkyy-1-3.jpg" name="Image10" width="114" height="72" border="0" id="Image10" /></td>
    <td><img src="images/lyfkyy-1-4.jpg" width="171" height="72" /></td>
  </tr>
</table>
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="35"><img src="images/lyfkyy-2.jpg" width="35" height="434" /></td>
    <td width="575" valign="top" bgcolor="#602121"><table width="100" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="10"></td>
      </tr>
    </table>
      <table width="555" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="291" height="54">
        	<c:if test="${fn:length(requestScope.filmList) > 0 }">
		      <c:forEach items="${requestScope.filmList}" begin="0" end="0" var="result" varStatus="status">
		        <a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}&columnId=${result.columnId}" id="defaultFocus" onfocus="focusStyle('t${status.count }','titleon');goto_play('win', '${result.id}','${result.productId}');" onblur="focusStyle('t${status.count }','titleoff');">
		        	<div id="t${status.count }" class="titleoff">${result.name }
		        		<c:forEach items="${result.assetList }"  begin="0" end="0" var="asset" varStatus="st2">
			        		<input id="fileID_${result.id}" value="${asset.contentid }" type="hidden"/>
			        	</c:forEach>
		        	</div>
		        </a>
		      </c:forEach>
		    </c:if>
        </td>
        <td width="264" rowspan="5"><table width="200" border="1" align="center" cellpadding="0" cellspacing="3" style="border-style: solid; border-color: #CC7100;">
          <tr>
            <td height="47" bgcolor="#000000"><iframe id="freeVideo" frameborder="0" scrolling="no" width="253" height="252" src="" style="background-color: transparent;"></iframe></td>
          </tr>
        </table></td>
      </tr>
     <c:if test="${fn:length(requestScope.filmList) > 1 }">
	      <c:forEach items="${requestScope.filmList}" begin="1" var="result" varStatus="status">
	         <tr>
	        	<td height="54">
		        	<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}&columnId=${result.columnId}" onfocus="focusStyle('t${status.count+1 }','titleon');goto_play('win', '${result.id}','${result.productId}');" onblur="focusStyle('t${status.count+1 }','titleoff');">
		        		<div id="t${status.count+1 }" class="titleoff">${result.name }
		        			<c:forEach items="${result.assetList }"  begin="0" end="0" var="asset" varStatus="st2">
			        			<input id="fileID_${result.id}" value="${asset.contentid }" type="hidden"/>
			        		</c:forEach>
		        		</div>
		        	</a>
	        	</td>
	      	</tr>
	      </c:forEach>
      </c:if>
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
			 		<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}&columnId=${result.columnId}" onfocus="focusStyle('t_2_${status.count }','liston');" onblur="focusStyle('t_2_${status.count }','listoff');">
				 		<div id="t_2_${status.count }" class="listoff">
					 		<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td width="75" height="124"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
										</td>
										<td width="90" valign="top"><p class="STYLE13">${result.name }</p>
											<p class="STYLE13">主讲：${film.actor }</p>
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
			 		<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}&columnId=${result.columnId}" onfocus="focusStyle('t_2_${status.count }','liston');" onblur="focusStyle('t_2_${status.count }','listoff');">
				 		<div id="t_2_${status.count }" class="listoff">
					 		<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td width="75" height="124"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
										</td>
										<td width="90" valign="top"><p class="STYLE13">${result.name }</p>
											<p class="STYLE13">主讲：${film.actor }</p>
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
			 		<a href="${ctx }/crazyenglish/filmAction!detail.do?filmId=${result.id}&columnId=${result.columnId}" onfocus="focusStyle('t_2_${status.count }','liston');" onblur="focusStyle('t_2_${status.count }','listoff');">
				 		<div id="t_2_${status.count }" class="listoff">
					 		<table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td width="75" height="124"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" width="68" height="100" border="0" />
										</td>
										<td width="90" valign="top"><p class="STYLE13">${result.name }</p>
											<p class="STYLE13">主讲：${film.actor }</p>
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
    <td width="34"><img src="images/lyfkyy-3.jpg" border="0" width="34" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/lyfkyy-4.jpg" border="0" width="644" height="28" /></td>
  </tr>
</table>

<jsp:include page="/crazyenglish/footer.jsp"></jsp:include>

</body>
</html>
