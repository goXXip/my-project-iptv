<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
}
a:link{text-decoration:none;}
a:hover{text-decoration:none;}
a:VISITED {text-decoration:none;}
.STYLE9 {color: #FFFFFF; font-size: 20px; font-family: "黑体";}
.STYLE13 {font-family: "黑体"; font-size: 16px; color: #FFFFFF; }
.style15 {	font-size: 24px;
	color: #FFFFFF;
	font-family: "黑体";
}
.style17 {color: #FF9900; font-size: 16px; font-family: "黑体"; }
.STYLE18 {color: #f7d400; font-size: 16px; font-family: "黑体"; }
.STYLE19 {font-family: "黑体"; font-size: 16px; color: #edff6f; }

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

ul li {
	list-style: none;
	margin: 0px;
	padding: 0px;
}
.listul {
	padding: 0px;
	margin: 0px 0px 0px 11px;
	width: 564px;
}
.listtr {
	float: left;
	margin: 10px 0px 0px 10px;
	padding: 0px;
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
<script type="text/javascript" src="js/global.js"></script>
</head>

<body>
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
    <td width="575" valign="top" bgcolor="214c47"><table width="100" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="10"></td>
      </tr>
    </table>
      <table width="555" height="263" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="144" rowspan="3" valign="top"><img src="${ctx }/uploadImages/${film.bigImage.id}.${film.bigImage.suffix}" width="128" height="170" /></td>
          <td height="34" colspan="3"><span class="style15">《${film.name }》</span></td>
        </tr>
        <tr>
          <td height="94" colspan="3" valign="top" class="STYLE9">简介：<br />
            ${film.description }</td>
        </tr>
        <tr>
          <td width="144" height="64" valign="top" class="STYLE18">集数：${film.serialCount }集      <br />
          价格：${film.price }   </td>
          <td width="144" height="44" valign="top" class="STYLE18">适用：${film.audient }<br />
          期限：${film.period }</td>
          <td height="44" valign="top" class="STYLE18">&nbsp;</td>
        </tr>
        <tr>
          <td height="64" valign="top">&nbsp;</td>
          <td width="142" height="44" valign="top">
	          <a href="${ctx }/yyzj/filmAction!listAssetByFilmId.do?filmId=${film.id}&channelId=1" id="defaultFocus">
	          		<img src="images/anniu-02.jpg" name="Image13" width="90" height="38" border="0" id="Image13" />
	          </a>
          </td>
          <td width="146" height="44" valign="top">&nbsp;<!--<a href="#"><img src="images/anniu-03.jpg" name="Image14" width="116" height="38" border="0" id="Image14" /></a>--></td>
          <td width="123" height="44" valign="top">&nbsp;</td>
        </tr>
      </table>
      <table width="100" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="10"></td>
        </tr>
      </table>
      <table width="564" border="0" cellspacing="0" cellpadding="0" style="margin-left:10px;">
        <tr>
    		<td width="141" align="left">
    			 <c:if test="${fn:length(requestScope.relativeList) > 0 }">
    			 	<c:forEach items="${requestScope.relativeList}" begin="0" end="0" var="result" varStatus="status">
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_${status.count }','liston');" onblur="focusStyle('t_2_${status.count }','listoff');">
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
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_${status.count }','liston');" onblur="focusStyle('t_2_${status.count }','listoff');">
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
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_${status.count }','liston');" onblur="focusStyle('t_2_${status.count }','listoff');">
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
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_${status.count }','liston');" onblur="focusStyle('t_2_${status.count }','listoff');">
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
    <td width="34"><img src="images/zyzj-3.jpg" width="34" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/zyzj-4.jpg" width="644" height="28" /></td>
  </tr>
</table>

<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>
