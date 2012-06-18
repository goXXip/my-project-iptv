<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/manager/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加/修改栏目</title>
<link href="../css/css_manager.css" rel="stylesheet" type="text/css" />
<style type="text/css">
</style>

<script type="text/javascript">

	function checkForm(){

		var formObj = document.getElementById("columnForm");

		if(window.confirm("确认提交？")){
			formObj.submit();
		}
	}

	function backToList(){
		history.back();
	}
</script>
</head>

<body>

<jsp:include page="/manager/common/head.jsp"></jsp:include>
 
<div class="content">
	<form action="${ctx }/manager/columnAction!save.do" method="post" id="columnForm" name="columnForm">
		<table width="800" align="center" border="0" class="border_table">
			<caption style="padding: 10px 0px 10px 0px;">添加/修改栏目</caption>
			<tr>
				<td align="right">名称：</td>
				<td class="td_content"><input type="text" name="column.name" size="20" value="${column.name }" /></td>
			</tr>
			<tr>
				<td align="right">所属频道：</td>
				<td class="td_content">
				 <select name="channel_id" id="channel_id">
				 	<c:forEach items="${requestScope.channelList}" var="channel">
				 		<option value="${channel.id}" <c:if test="${column.channelId == channel.id }">selected="selected"</c:if> >${channel.name }</option>
				 	</c:forEach>
				 </select>
			    </td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="column.id" value="${column.id }" id="column_id"/>
				</td>
				<td class="td_content"><input type="button" value="提交" onclick="checkForm()" style="padding: 5px;"/>
					<input type="button" onclick="backToList()" value="返回" style="padding: 5px;"/>
				</td>
			</tr>
		</table>
	</form>
</div>

<jsp:include page="/manager/common/footer.jsp"></jsp:include>

</body>
</html>