<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/manager/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加/修改影片内容（资产）</title>
<link href="../css/css_manager.css" rel="stylesheet" type="text/css" />
<style type="text/css">
</style>

<script type="text/javascript">

	var filmID = '${param.filmID}';

	function checkForm(){

		var formObj = document.getElementById("assetForm");
		var filmid = document.getElementById("filmid").value;

		if(filmid == ''){
			document.getElementById("filmid").value = filmID;
		}else{
			//document.getElementById("filmid").value = 0;
			//document.getElementById("asset_id").value = 0;
		}

		formObj.submit();
	}

	function backToList(){
		//window.location.href = "${ctx }/manager/filmAction!list.do";
		history.back();
	}
</script>
</head>

<body>

<jsp:include page="/manager/common/head.jsp"></jsp:include>
 
<div class="content">
	<form action="${ctx }/manager/assetAction!save.do" method="post" id="assetForm" name="assetForm">
		<table width="800" align="center" border="0" class="border_table">
			<caption style="padding: 10px 0px 10px 0px;">添加/修改视频内容</caption>
			<tr>
				<td align="right">名称：</td>
				<td class="td_content"><input type="text" name="asset.name" size="20"
					value="${asset.name }" /></td>
			</tr>
			<tr>
				<td align="right">视频ID：</td>
				<td class="td_content"><input type="text" name="asset.fileId" size="20" id="contentid"
					value="${asset.fileId }" /></td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="asset.id" value="${asset.id }" id="asset_id"/>
					<input type="hidden" name="asset.filmid" value="${asset.filmid }" id="filmid"/>
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