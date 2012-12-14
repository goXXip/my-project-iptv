<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
	width: 640px;
	height: 530px;
	font-family: "黑体";
}
a{display: inline-block;text-decoration:none;}
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
				location.href = "${ctx }/yyzj/filmAction!eduIndex.do";
			}
			else if(from == "column"){
				location.href = "${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=" +columnID +"&channelId=1";
			}
			else{
				location.href = "${ctx }/yyzj/filmAction!eduIndex.do";
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
<%@ include file="/yyzj/head.jsp" %>

<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="33"><img src="images/zyzj-2.jpg" width="33" height="434" /></td>
    <td width="575" valign="top" bgcolor="214c47"><table width="575" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="10"></td>
      </tr>
    </table>
      <table width="555" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="144" rowspan="3" valign="top"><img src="${ctx }/uploadImages/${film.bigImage.id}.${film.bigImage.suffix}" width="128" height="170" /></td>
          <td height="34" colspan="3"><span class="style15">《${film.name }》</span></td>
        </tr>
        <tr>
          <td height="134" colspan="3" valign="top" class="STYLE9">${film.description }</td>
        </tr>
        <tr>
          <td width="144" height="44" valign="top" class="STYLE18">集数：${film.serialCount }集 </td>
          <td width="144" height="44" valign="top" class="STYLE18">适用：${film.audient }</td>
          <td height="44" valign="top" class="STYLE18">订购方式：包月</td>
        </tr>
        <tr>
          <td height="44" valign="top">&nbsp;</td>
          <td width="142" height="44" valign="top">
	         <a href="${ctx }/servlet/serviceAuth?filmId=${film.id }&channelId=1&from=${requestScope.from}&ContentID=${film.contentId }&ContentID=${film.contentId }" id="defaultFocus">
	          		<img src="images/anniu-02.jpg" name="Image13" width="90" height="38" border="0" id="Image13" />
	          </a>
          </td>
          <td width="146" height="44" valign="top">&nbsp;</td>
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
    			 	<div id="t_2_0" class="listoff">
		    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_0','liston');" onblur="focusStyle('t_2_0','listoff');">
			    				<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" />
			    			</a>
			    			<div class="listtitle">${result.name }</div>
		    				
	    			</div>
	    			</c:forEach>
	    		 </c:if>
	    	</td>
    		<td width="141" align="left">
    			 <c:if test="${fn:length(requestScope.relativeList) > 1 }">
    			 	<c:forEach items="${requestScope.relativeList}" begin="1" end="1" var="result" varStatus="status">
    			 		<div id="t_2_1" class="listoff">
		    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_1','liston');" onblur="focusStyle('t_2_1','listoff');">
		    						<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" />
		    				</a>
		    				<div class="listtitle">${result.name }</div>
	    				</div>
	    			</c:forEach>
	    		 </c:if>
	    	</td>
    		<td width="141" align="left">
    			 <c:if test="${fn:length(requestScope.relativeList) > 2 }">
    			 	<c:forEach items="${requestScope.relativeList}" begin="2" end="2" var="result" varStatus="status">
    			 		<div id="t_2_2" class="listoff">
		    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_2','liston');" onblur="focusStyle('t_2_2','listoff');">
		    						<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" />
		    				</a>
		    				<div class="listtitle">${result.name }</div>
	    				</div>
	    			</c:forEach>
	    		 </c:if>
	    	</td>
    		<td width="141" align="left">
    			 <c:if test="${fn:length(requestScope.relativeList) > 3 }">
    			 	<c:forEach items="${requestScope.relativeList}" begin="3" end="3" var="result" varStatus="status">
    			 		<div id="t_2_3" class="listoff">
		    				<a href="${ctx }/yyzj/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_3','liston');" onblur="focusStyle('t_2_3','listoff');">
			    						<img src="${ctx }/uploadImages/${result.smallImage.id}.${result.smallImage.suffix}" border="0" width="128" height="87" />
			    			</a>
			    			<div class="listtitle">${result.name }</div>
	    				</div>
	    			</c:forEach>
	    		 </c:if>
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

<jsp:include page="/yyzj/footer.jsp"></jsp:include>

</body>
</html>
