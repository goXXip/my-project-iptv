<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登录</title>
<style type="text/css">
#main{margin: 0 auto;width: 660px;padding-top: 200px;padding-left: 300px;font-family: 宋体;font-size: 14px;}
</style>

<script type="text/javascript">

function checkForm(){

	var formObj = document.getElementById("loginForm");

	var j_username  = document.getElementById("j_username").value;
	if(j_username == ""){
		alert("请填写用户名");
		return false;
	}

	var j_password = document.getElementById("j_password").value;
	if( j_password == ""){
		alert("请填写密码");
		return false;
	}

	formObj.submit();
}

function init_message(){

	var errorMessage = '${requestScope.errormessge}';

	if(errorMessage != ''){
		alert(errorMessage);
	}
}

</script>
</head>

<body onload="init_message()">

<div id="main">
	<form action="manager/loginAction!login.do" method="post" id="loginForm">
		<table border="0" cellpadding="5" cellspacing="2">
			<tr><td></td><td style="font-weight: bold;" height="45">资料录入后台</td></tr>
			<tr>
				<td align="right">用户名：</td>
				<td><input name="j_username" id="j_username" value="" /></td>
			</tr>
			<tr>
				<td align="right">密码：</td>
				<td><input name="j_password" id="j_password" value="" type="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="button" value="登录" onclick="checkForm()"/></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>