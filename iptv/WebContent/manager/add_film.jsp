<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/manager/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加/修改影片</title>
<link href="../css/css_manager.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.js"></script>
<style type="text/css">
.edit_table{border-collapse:collapse; border:solid #999;border-width:1px 1px 0 1px;  }
.edit_table caption {font-size:14px;font-weight:bolder;}
.edit_table th,.edit_table td {border:solid #999;border-width:0 1px 1px 0;padding:5px;}
</style>

<script type="text/javascript">

	function checkForm(){

		var formObj = document.getElementById("filmForm");
		var serialCount = document.getElementById("serialCount").value;
		
		if(!IsInt(serialCount)){
			alert("集数必须为数字。");
			return false;
		}

		var smallImg = $("#smallImg").val();
		if(smallImg == ""){
			var hidden_id = $("#smallImageHidden").val();
			if(hidden_id == ""){
				alert("必须上传小海报图.");
				return false;
			}
		}

		var bigImg = $("#bigImg").val();
		if(bigImg == ""){
			var hidden_id = $("#bigImageHidden").val();
			if(hidden_id == ""){
				alert("必须上传大海报图.");
				return false;
			}
		}
		
		var productId = $("#productId").val();
		if(productId == ""){
			alert("内容ID为必填项写.");
			return false;
		}

		formObj.submit();
	}

	function IsInt(s) {
		if (s != null) {
			var r, re;
			re = /\d+/i; //\d表示数字,+表示匹配多个数字
			r = s.match(re);
			return (r == s) ? true : false;
		}
		return false;
	}

	function init() {
		if($('#channelSelect') != undefined){
			var itemValue = $('#channelSelect').val();
			$.ajax( {
				type : "POST",
				url : "${ctx }/manager/filmAction!findColumnsByChannelId.do?channelId="+ itemValue,
				timeout : 6000,
				async : false, //ajax同步
				success : function(data, textStatus) {
					$("#columnSelect").empty();
					var items = eval(data);
					var columnid = '${film.columnId}';
					for ( var i = 0; i < items.length; i++) {
						if(columnid == items[i].id){
							$("#columnSelect").append("<option value='"+items[i].id+"' selected>" + items[i].name+ "</option>");
						}else{
							$("#columnSelect").append("<option value='"+items[i].id+"'>" + items[i].name+ "</option>");
						}
					}
				}
			});
		}
	}

	function backToList(){
		window.location.href = "${ctx }/manager/filmAction!list.do?channelSelect=${channelSelect}";
	}
</script>
</head>

<body onload="init();">

<jsp:include page="/manager/common/head.jsp"></jsp:include>

<div class="content">
<form action="${ctx }/manager/filmAction!save.do" method="post" id="filmForm" name="filmForm" enctype="multipart/form-data">
<table width="800" align="center" class="edit_table" style="margin:0 auto;margin-top: 20px;">
	<tr><td colspan="100%" style="text-align: center;background-color: silver;" height="25">添加影片</td></tr>
	<tr>
		<td align="right">所属频道：</td>
		<td>
			<select id="channelSelect" onchange="init()">
				<c:forEach items="${requestScope.channelList}" var="channel" varStatus="status">
				  	<option value="${channel.id }" <c:if test="${requestScope.columninfo.channelId == channel.id }">selected="selected"</c:if>>${channel.name }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td align="right">所属栏目：</td>
		<td>
			<select id="columnSelect" name="film.columnId">
			</select>
		</td>
	</tr>
	<tr>
		<td align="right">名称：</td>
		<td><input type="text" name="film.name" size="20"
			value="${film.name }" /></td>
	</tr>
	<tr>
		<td align="right">集数：</td>
		<td><input type="text" name="film.serialCount" size="20" id="serialCount"
			value="${film.serialCount }" /></td>
	</tr>
	<tr>
		<td align="right">内容ID：</td>
		<td><input type="text" name="film.contentId" size="20" id="productId"
			value="${film.contentId }" /></td>
	</tr>
	<tr>
		<td align="right">有效期：</td>
		<td><input type="text" name="film.period" size="20"
			value="${film.period }" /></td>
	</tr>
	<tr>
		<td align="right">价格：</td>
		<td><input type="text" name="film.price" size="20"
			value="${film.price }" /></td>
	</tr>
	<tr>
		<td align="right">受众：</td>
		<td><input type="text" name="film.audient" size="20"
			value="${film.audient }" /></td>
	</tr>
	<tr>
		<td align="right">演员/主讲：</td>
		<td><input type="text" name="film.actor" size="20"
			value="${film.actor }" /></td>
	</tr>
	<tr>
		<td align="right">小海报图：</td>
		<td><input type="file" name="smallImg" id="smallImg" size="20"/>
			<img src="${ctx }/uploadImages/${film.smallImage.id }.${film.smallImage.suffix }"/>
			<input type="hidden" name="smallImageHidden" id="smallImageHidden" value="${film.smallImage.id }"/>
		</td>
	</tr>
	<tr>
		<td align="right">大海报图：</td>
		<td><input type="file" name="bigImg" id="bigImg" size="20"/>
			<input type="hidden" name="bigImageHidden" id="bigImageHidden" value="${film.bigImage.id }"/>
			<img src="${ctx }/uploadImages/${film.bigImage.id }.${film.bigImage.suffix }"/>
		</td>
	</tr>
	<tr>
		<td align="right">小海报图(<font color="red">高清</font>)：</td>
		<td><input type="file" name="smallImg_hd" id="smallImg_hd" size="20"/>
			<img src="${ctx }/uploadImages/${film.smallImage_HD.id }.${film.smallImage_HD.suffix }"/>
			<input type="hidden" name="smallImageHidden_hd" id="smallImageHidden_hd" value="${film.smallImage_HD.id }"/>
		</td>
	</tr>
	<tr>
		<td align="right">大海报图(<font color="red">高清</font>)：</td>
		<td><input type="file" name="bigImg_hd" id="bigImg_hd" size="20"/>
			<input type="hidden" name="bigImageHidden_hd" id="bigImageHidden_hd" value="${film.bigImage_HD.id }"/>
			<img src="${ctx }/uploadImages/${film.bigImage_HD.id }.${film.bigImage_HD.suffix }"/>
		</td>
	</tr>
	<tr>
		<td align="right">简介：</td>
		<td style="text-align: left;"><textarea name="film.description" id="description" rows="6" cols="70">${film.description }</textarea></td>
	</tr>
	<tr>
		<td><input type="hidden" name="film.id" value="${film.id }"/></td>
		<td><input type="button" value="提交" onclick="checkForm()" style="padding: 5px;"/>
			<input type="button" onclick="backToList()" value="返回"  style="padding: 5px;"/>
		</td>
	</tr>
</table>
</form>
</div>

<jsp:include page="/manager/common/footer.jsp"></jsp:include>

</body>
</html>