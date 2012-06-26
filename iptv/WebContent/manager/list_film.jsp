<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/manager/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../css/css_manager.css" rel="stylesheet" type="text/css" />
<title>影视列表</title>

<script type="text/javascript">

	function deleteFilm(id){

		if(window.confirm("确认删除？")){
			window.location.href = "${ctx }/manager/filmAction!delete.do?id="+id;
		}
	}
	
	function modifyFilm(id){

		window.location.href = "${ctx }/manager/filmAction!modifyPrepare.do?id="+id+"&channelSelect=${channelSelect}";
	}

	function assetList(id){
		
		window.location.href = "${ctx }/manager/filmAction!assetList.do?id="+id+"&channelSelect=${channelSelect}";;
	}

	function searchFilm(){
		
		 var filmFormObj = document.getElementById("filmForm");
		 filmFormObj.submit();
	}

	function changeChannel(){
		 var filmFormObj = document.getElementById("filmForm");
		 document.getElementById("curPage").value = 1;
		 filmFormObj.submit();
	}

	function top(id,flag){

		window.location.href = "${ctx }/manager/filmAction!top.do?id="+id+"&channelSelect=${channelSelect}&flag="+flag;
	}
</script>
</head>

<body>

<jsp:include page="/manager/common/head.jsp"></jsp:include>

<form action="${ctx }/manager/filmAction!list.do" method="post" id="filmForm" name="filmForm">
<div style="margin: 0 auto; width: 960px;">
	<span style="padding-left: 30px;float: left;padding-bottom: 5px;">
			频道：<select id="channelSelect" name="channelSelect" onchange="changeChannel()">
					<option value="">全部</option>
				  	<c:forEach items="${requestScope.channelList}" var="channel">
				 		<option value="${channel.id}" <c:if test="${channelSelect == channel.id }">selected="selected"</c:if> >${channel.name }</option>
				 	</c:forEach>
			</select>
		<!--  节目名：<input name="title" value="" size="15"/>
		<input value="查询" type="button" name="searchButton" onclick="searchFilm()"/>-->
	</span>
	<span style="padding-right: 30px;float: right;vertical-align: baseline;">
	<a href="${ctx }/manager/filmAction!addPrepare.do?channelSelect=${channelSelect}">添加影片</a></span>
</div>
<div style="margin: 0 auto; width: 960px;">
	<table align="center" border="0" class="border_table" width="960">
		<tr>
			<td align="center" height="25">序号</td>
			<td align="center">名称</td>
			<td align="center">集数</td>
			<td align="center">有效期</td>
			<td align="center">内容ID</td>
			<td align="center">操作</td>
		</tr>
		<c:forEach items="${pageBean.items}" var="film" varStatus="status">
			<tr>
				<td align="center" height="25">${(pageBean.curPage-1)*pageBean.pageSize+status.count }</td>
				<td align="center">${film.name }</td>
				<td align="center">${film.serialCount }</td>
				<td align="center">${film.period }</td>
				<td align="center">${film.contentId }</td>
				<td align="center"><a href="javascript:deleteFilm(${film.id })">删除</a>
					&nbsp;&nbsp;<a href="javascript:modifyFilm(${film.id })">修改</a>
					&nbsp;&nbsp;<a href="javascript:assetList(${film.id })">影片内容</a>
					<c:choose>
						<c:when test="${film.istop == '1' }"><a href="javascript:top(${film.id },'0')">取消置顶</a></c:when>
						<c:otherwise><a href="javascript:top(${film.id },'1')">置顶</a></c:otherwise>
					</c:choose>
				</td>
			</tr>
		</c:forEach>
		<tr align="center">
			<td colspan="6"><jsp:include page="/manager/common/paging_footer.jsp"></jsp:include></td>
		</tr>
	</table>
</div>
</form>

<jsp:include page="/manager/common/footer.jsp"></jsp:include>

</body>
</html>