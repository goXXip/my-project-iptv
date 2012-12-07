<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/manager/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增/修改频道</title>
<link href="../css/css_manager.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

	function checkForm(){

		var formObj = document.getElementById("channelForm");
		
		var channel_name = document.getElementById("channel_name").value;
		if( channel_name == ""){
			alert("频道名称不能为空");
			return false;
		}

		var serviceId = document.getElementById("serviceId").value;
		if( serviceId == "" ){
			alert("serviceId不能为空");
			return false;
		}

		var productId = document.getElementById("productId").value;
		if( productId == ""){
			alert("productId不能为空");
			return false;
		}

		formObj.submit();
	}

	function backToList(){
		history.back();
	}
	
</script>
</head>
<body>

<jsp:include page="/manager/common/head.jsp"></jsp:include>

<div class="content">
	<form action="${ctx }/manager/channelAction!save.do" method="post" id="channelForm" name="channelForm">
		<table width="800" align="center" border="0" class="border_table">
			<caption style="padding: 10px 0px 10px 0px;">新增/修改频道</caption>
			<tr>
				<td align="right">频道名称：</td>
				<td><input type="text" name="channel.name" size="20" value="${channel.name }" id="channel_name" /></td>
			</tr>
			<tr>
				<td align="right">ServiceID：</td>
				<td><input type="text" name="channel.serviceId" size="20" value="${channel.serviceId }" id="serviceId" /></td>
			</tr>
			<tr>
				<td align="right">ProductID：</td>
				<td><input type="text" name="channel.productId" size="20" value="${channel.productId }" id="productId" /></td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="channel.id" value="${channel.id }" id="channel_id"/>
				</td>
				<td><input type="button" value="提交" onclick="checkForm()" style="padding: 5px;"/>
					<input type="button" onclick="backToList()" value="返回" style="padding: 5px;"/>
				</td>
			</tr>
		</table>
	</form>
</div>

<jsp:include page="/manager/common/footer.jsp"></jsp:include>

</body>
</html>