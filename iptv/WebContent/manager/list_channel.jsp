<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/manager/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>频道列表</title>
<link href="../css/css_manager.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

function addPrepare(){
	window.location.href = "${ctx }/manager/channelAction!addPrepare.do";
}

function deleteByID(id){

	if(window.confirm("确认删除？")){
		window.location.href = "${ctx }/manager/channelAction!delete.do?id="+id;
	}
}

function modifyByID(id){

	window.location.href = "${ctx }/manager/channelAction!modifyPrepare.do?id="+id;
}
</script>
</head>
<body>

<jsp:include page="/manager/common/head.jsp"></jsp:include>

<div style="margin: 0 auto; width: 960px;">
	<span style="padding-right: 30px;float: right;padding-bottom: 5px;">
		<a href="javascript:addPrepare()">新增频道</a>
	</span>
</div>

<div class="content">
	<table align="center" border="0" class="border_table" width="960">
		<tr><td colspan="100%" style="text-align: center;background-color: silver;" height="25">频道列表</td></tr>
		<tr>
			<td align="center" height="25">序号</td>
			<td align="center">名称</td>
			<td align="center">操作</td>
		</tr>
		<c:forEach items="${requestScope.channelList}" var="channel" varStatus="status">
			<tr>
				<td align="center" height="25">${status.count }</td>
				<td align="center">${channel.name }</td>
				<td align="center">
					<a href="javascript:deleteByID(${channel.id })">删除</a>
					&nbsp;&nbsp;<a href="javascript:modifyByID(${channel.id })">修改</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>

<jsp:include page="/manager/common/footer.jsp"></jsp:include>

</body>
</html>