<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/manager/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/css_manager.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="./js/jquery-1.3.2.js"></script>
<script language="javascript" type="text/javascript" src="./js/My97DatePicker/WdatePicker.js"></script>
<title>订购详情列表</title>

<script type="text/javascript">

	function searchForm(){

		var formObj = $("#orderListForm");

		formObj.submit();
	}
</script>


<style type="text/css">

#main{margin: 0 auto;width: 960px;background: #ffffff;}
#condition {margin: 0 auto; margin-top: 10px;margin-bottom: 10px;}
</style>
</head>

<body>


<jsp:include page="/manager/common/head.jsp"></jsp:include>

 <div id="main">
<form action="${ctx }/manager/orderAction!list.do" method="post" id="orderListForm" name="orderListForm">
 	<div id="condition">
 		<table border="0" cellpadding="0" cellspacing="10">
 			<tr>
	 			<td>用户ID：</td><td><input name="userID" id="userID" value="${userID }"/></td>
	 			<td>产品ID:</td><td><input name="productID" id="productID" value="${productID }"/></td>
	 			<td>产品名称:</td><td><input name="productName" id="productName" value="${productName }"/></td>
	 			<td>内容ID:</td><td><input name="contentID" id="contentID" value="${contentID }"/></td>
 			</tr>
 			<tr>
 				<td>订购时间：</td>
 				<td colspan="3">
 				<input name="startTime" id="startTime" size="15" onClick="WdatePicker()"  value="<fmt:formatDate value='${startTime }' pattern='yyyy-MM-dd'/>"/>
 				至:<input name="endTime" id="endTime" size="15" onClick="WdatePicker()"  value="<fmt:formatDate value='${endTime }' pattern='yyyy-MM-dd'/>"/>
 				<input type="button" value="查询" onclick="searchForm()" style="padding: 5px;"/>
 				
 				</td>
 			</tr>
 		</table>
 	</div>
 	
 	<div id="content">
 		<table align="center" border="0" class="border_table" width="960">
			<tr>
				<td align="center" height="25">订购者</td>
				<td align="center">ServiceID</td>
				<td align="center">产品ID</td>
				<td align="center">产品名称</td>
				<td align="center">有效期</td>
				<td align="center">价格</td>
				<td align="center">交易号</td>
			</tr>
			<c:forEach items="${pageBean.items}" var="order" varStatus="status">
				<tr>
					<td align="center" height="25">${order.userid }</td>
					<td align="center">${order.serviceid }</td>
					<td align="center">${order.productid }</td>
					<td align="center">${order.productname }</td>
					<td align="center">${order.serstarttime }-${order.serendtime }</td>
					<td align="center">${order.fee }</td>
					<td align="center">${order.transaction_id }</td>
				</tr>
			</c:forEach>
			<tr align="center">
				<td colspan="7"><jsp:include page="/manager/common/paging_footer.jsp"></jsp:include></td>
			</tr>
		</table>
 	</div>
</form> 	
 </div>
 
 <jsp:include page="/manager/common/footer.jsp"></jsp:include>
 
</body>
</html>