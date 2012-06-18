<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/manager/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/css_manager.css" rel="stylesheet" type="text/css" />	
<title>栏目列表</title>

<script type="text/javascript">

	function deleteFilm(id){

		if(window.confirm("确认删除？")){
			window.location.href = "${ctx }/manager/columnAction!delete.do?id="+id;
		}
	}
	
	function modifyFilm(id){

		window.location.href = "${ctx }/manager/columnAction!modifyPrepare.do?id="+id+"&channelSelect=${channelSelect}";
	}

	function searchFilm(){
		
		 var filmFormObj = document.getElementById("searchForm");
		 filmFormObj.submit();
	}

	function changeChannel(){
		 var filmFormObj = document.getElementById("searchForm");
		 document.getElementById("curPage").value = 1;
		 filmFormObj.submit();
	}
	
</script>
</head>

<body>

<jsp:include page="/manager/common/head.jsp"></jsp:include>

<form action="${ctx }/manager/columnAction!list.do" method="post" id="searchForm" name="searchForm">

	<div style="margin: 0 auto; width: 960px;">
		<span style="padding-left: 30px;float: left;padding-bottom: 5px;">
				频道：<select id="channelSelect" name="channelSelect" onchange="changeChannel()">
						<option value="">全部</option>
						<c:forEach items="${requestScope.channelList}" var="channel" varStatus="status">
						  	<option value="${channel.id }" <c:if test="${channelSelect == channel.id }">selected="selected"</c:if>>${channel.name }</option>
						</c:forEach>
				</select>
			<!--  节目名：<input name="title" value="" size="15"/>
			<input value="查询" type="button" name="searchButton" onclick="searchFilm()"/>-->
		</span>
		<span style="padding-right: 30px;float: right;vertical-align: baseline;">
		<a href="${ctx }/manager/columnAction!addPrepare.do?channelSelect=${channelSelect}">添加栏目</a></span>
	</div>

	<div style="margin: 0 auto; width: 960px;">
		<table align="center" border="0" class="border_table" width="960">
			<tr>
				<td align="center" height="25">序号</td>
				<td align="center">栏目名称</td>
				<td align="center">频道编号</td>
				<td align="center">操作</td>
			</tr>
			<c:forEach items="${pageBean.items}" var="column" varStatus="status">
				<tr>
					<td align="center" height="25">${status.count }</td>
					<td align="center">${column.name }</td>
					<td align="center">${column.channelId }</td>
					<td align="center"><a href="javascript:deleteFilm(${column.id })">删除</a>
						&nbsp;&nbsp;<a href="javascript:modifyFilm(${column.id })">修改</a>
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