<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/common/taglibs.jsp"%>
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
.STYLE9 {color: #FFFFFF; font-size: 20px; font-family: "黑体";}
.STYLE12 {
	color: #FF9900;
	font-size: 16px;
}
.STYLE13 {font-family: "黑体"; font-size: 16px; color: #FFFFFF; }
.STYLE14 {
	font-family: "黑体";
	color: #edff6f;
}
.STYLE15 {
	font-family: "黑体";
	font-size: 16px;
	color: #edff6f;
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
	margin: 0px 0px 0px 10px;
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
    <td width="575" valign="top" bgcolor="214c47">
    <table width="100" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="10"></td>
        </tr>
      </table>
      <table width="564" border="0" cellspacing="0" cellpadding="0" style="margin-left:10px;">
        <tr>
    	   <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 0 }">
	    		 	<c:forEach items="${pageBean.items}" begin="0" end="0" var="result" varStatus="status">
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><div id="t${status.count }" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div></a>
	    			</c:forEach>
	    		 </c:if>
	       </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 1 }">
	    		 	<c:forEach items="${pageBean.items}" begin="1" end="1" var="result" varStatus="status">
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><div id="t${status.count }" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div></a>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 2 }">
	    		 	<c:forEach items="${pageBean.items}" begin="2" end="2" var="result" varStatus="status">
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><div id="t${status.count }" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div></a>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	      <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 3 }">
	    		 	<c:forEach items="${pageBean.items}" begin="3" end="3" var="result" varStatus="status">
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><div id="t${status.count }" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div></a>
	    			</c:forEach>
	    		 </c:if>
	      </td>
    	</tr>
    	<tr>
    	   <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 4 }">
	    		 	<c:forEach items="${pageBean.items}" begin="4" end="4" var="result" varStatus="status">
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><div id="t${status.count }" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div></a>
	    			</c:forEach>
	    		 </c:if>
	       </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 5 }">
	    		 	<c:forEach items="${pageBean.items}" begin="5" end="5" var="result" varStatus="status">
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><div id="t${status.count }" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div></a>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 6 }">
	    		 	<c:forEach items="${pageBean.items}" begin="6" end="6" var="result" varStatus="status">
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><div id="t${status.count }" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div></a>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	      <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 7 }">
	    		 	<c:forEach items="${pageBean.items}" begin="7" end="7" var="result" varStatus="status">
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><div id="t${status.count }" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div></a>
	    			</c:forEach>
	    		 </c:if>
	      </td>
    	</tr>
    	<tr>
    	   <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 8 }">
	    		 	<c:forEach items="${pageBean.items}" begin="8" end="8" var="result" varStatus="status">
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><div id="t${status.count }" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div></a>
	    			</c:forEach>
	    		 </c:if>
	       </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 9 }">
	    		 	<c:forEach items="${pageBean.items}" begin="9" end="9" var="result" varStatus="status">
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><div id="t${status.count }" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div></a>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	       <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 10 }">
	    		 	<c:forEach items="${pageBean.items}" begin="10" end="10" var="result" varStatus="status">
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><div id="t${status.count }" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div></a>
	    			</c:forEach>
	    		 </c:if>
	         </td>
	      <td width="141" height="122">
	    		 <c:if test="${fn:length(pageBean.items) > 11 }">
	    		 	<c:forEach items="${pageBean.items}" begin="11" end="11" var="result" varStatus="status">
	    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}"><div id="t${status.count }" class="listoff"><img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" /><div class="listtitle">${result.name }</div></div></a>
	    			</c:forEach>
	    		 </c:if>
	      </td>
    	</tr>
      </table>
      <table width="500"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td align="center" height="27" valign="bottom" class="STYLE12 STYLE14">${pageBean.curPage}/${pageBean.totalPages} 
		           　<c:choose>
		           <c:when test="${pageBean.curPage > 1}">
		           		<a href="${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=${requestScope.columnID }&curPage=${pageBean.curPage-1}" class="STYLE12 STYLE14">上一页</a>
		           </c:when>
		           <c:otherwise>
		           		<a href="#" class="STYLE12 STYLE14">上一页</a>
		           </c:otherwise>
		      </c:choose>
		           　<c:choose>
		           <c:when test="${pageBean.curPage < pageBean.totalPages}">
		           		<a href="${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=${requestScope.columnID }&curPage=${pageBean.curPage+1}" class="STYLE12 STYLE14">下一页</a>
		           </c:when>
		           <c:otherwise>
		           		<a href="#" class="STYLE12 STYLE14">下一页</a>
		           </c:otherwise>
		      </c:choose>
           </td>
        </tr>
      </table></td>
    <td width="34"><img src="images/zyzj-3.jpg" width="34" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/zyzj-4.jpg" width="644" height="28" /></td>
  </tr>
</table>

<jsp:include page="/common/footer.jsp"></jsp:include>

</body>
</html>
