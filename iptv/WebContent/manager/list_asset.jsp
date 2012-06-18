<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/manager/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="">
<title>资产列表</title>
<link href="../css/css_manager.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

	var  filmID = '${requestScope.filmID }';

	function deleteAsset(id){

		if(window.confirm("确认删除？")){
			window.location.href = "${ctx }/manager/assetAction!delete.do?id="+id;
		}
	}
	
	function modifyAsset(id){

		window.location.href = "${ctx }/manager/assetAction!modifyPrepare.do?id="+id;
	}

	function addPrepare(){
		window.location.href = "${ctx }/manager/assetAction!addPrepare.do?filmID="+filmID;
	}

	function jumptoChannelList(){

		var channelselect_value = document.getElementById("channelselect").value;
		window.location.href = "${ctx }/manager/filmAction!list.do?channelSelect="+channelselect_value;
	}

</script>
</head>

<body>

<jsp:include page="/manager/common/head.jsp"></jsp:include>

<div style="margin: 0 auto; width: 960px;margin-top: 50px;">
	<span style="padding-left: 20px;float: left;padding-bottom: 5px;font-size: 14px;">
		<h5>当前位置:${requestScope.cur_channel.name } &gt;&gt;  ${requestScope.cur_column.name }
		&nbsp;&nbsp;&nbsp;&nbsp;所属影片: ${requestScope.cur_film.name }</h5>
	</span>
	<span style="padding-right: 30px;float: right;padding-bottom: 5px;">
		<select id="channelselect" onchange="jumptoChannelList()">
			<option value="">---返回影片列表---</option>
			<option value="" >全部</option>
			<c:forEach items="${requestScope.channelList}" var="channel">
				 <option value="${channel.id}">${channel.name }</option>
			</c:forEach>
		</select>&nbsp;&nbsp;
		<a href="javascript:addPrepare()">添加视频内容</a>
	</span>
</div>

<table align="center" border="0" class="border_table" width="960">
	<tr><td colspan="100%" style="text-align: center;background-color: silver;" height="25">影片内容列表</td></tr>
	<tr>
		<td align="center" height="25">序号</td>
		<td align="center">名称</td>
		<td align="center">视频ID</td>
		<td align="center">操作</td>
	</tr>
	<c:forEach items="${requestScope.assetList}" var="asset" varStatus="status">
		<tr>
			<td align="center" height="25">${status.count }</td>
			<td align="center">${asset.name }</td>
			<td align="center">${asset.fileId}</td>
			<td align="center">
				<a href="javascript:deleteAsset(${asset.id })">删除</a>
				&nbsp;&nbsp;<a href="javascript:modifyAsset(${asset.id })">修改</a>
			</td>
		</tr>
	</c:forEach>
</table>

<jsp:include page="/manager/common/footer.jsp"></jsp:include>

</body>
</html>