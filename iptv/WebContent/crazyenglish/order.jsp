<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="640*530" />
<title>疯狂英语_订购确认</title>
<style type="text/css">
body {
	letter-spacing: -1px;margin:0px;width: 640px;height: 530px;
	font-family: "黑体";background-color: #214c47;
}
a{text-decoration:none;}
.STYLE9 {color: #FFFFFF; font-size: 20px; font-family: "黑体";}
.STYLE18 {color: #f7d400; font-size: 16px; font-family: "黑体"; }
.msgDiv{margin: 0 auto;margin-top: 50px;width: 525px;color: #ffffff;font-size: 20px; }
.messageinfo{margin: 0 auto;margin-top: 30px;width: 525px;color: #ffffff;font-size: 18px;line-height: 30px;text-align: left;}
.tips{display:none;width:402px;height:200px;z-index:100;position:absolute;left: 119px;top:165px;background: url("${ctx}/images/fkyy_buy_tips_bq.png") no-repeat;}
</style>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript">

	function second_confirm(){
		document.getElementById("second_confirm_div").style.display = "block";
		$("btn_second_orderconfirm").focus();
    }

    function close_confirm(){
		document.getElementById("second_confirm_div").style.display = "none";
    }
</script>
</head>

<body>

<%@ include file="/crazyenglish/head.jsp" %>
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="35"><img src="${ctx }/crazyenglish/images/lyfkyy-2.jpg" width="35" height="434" /></td>
    <td width="575" valign="top" bgcolor="#602121">
   		<div class="msgDiv">
	   		<table border="0" cellpadding="0" cellspacing="0">
				  <tr>
					 <td width="144" rowspan="4" valign="top">
					  	<img src="${ctx }/uploadImages/${film.bigImage.id}.${film.bigImage.suffix}" width="128" height="170" />
					 </td>
				     <td height="50" class="STYLE9" colspan="2">《${film.name }》</td>
				  </tr>
				  <tr>
				    <td height="40" valign="top"  class="STYLE18">集数：${film.serialCount }集</td>
				    <td valign="top"  class="STYLE18">所属产品包：疯狂英语</td>
				  </tr>
				  <tr>
				    <td height="40" valign="top" class="STYLE18">价格：20元包月</td>
				     <td valign="top"  class="STYLE18">有效期：一个月</td>
				  </tr>
				  <tr>
				    <td height="44" valign="top" width="190">
					    <a href="#" id="defaultFocus" onclick="second_confirm()">
					   		 <img src="images/anniu-01.jpg" name="Image13" width="90" height="38" border="0" id="Image13"/>
					    </a>
				    </td>
				    <td width="190">&nbsp;</td>
				  </tr>
			</table>
   		</div>
   		<div class="messageinfo">
    		温馨提示：您即将订购的是疯狂英语产品包（含李阳疯狂英语及英语辅导），成功订购后您可在一个月内不限次数观看疯狂英语产品包内的所有节目。如需取消包月服务，请在首页“帮助”中按提示操作“取消包月”。
    	</div>
    </td>
    <td width="34"><img src="${ctx }/crazyenglish/images/lyfkyy-3.jpg" border="0" width="34" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/lyfkyy-4.jpg" width="644" height="26" border="0"/></td>
  </tr>
</table>

<jsp:include page="/crazyenglish/footer.jsp"></jsp:include>

<div class="tips" id="second_confirm_div">
	<div style="margin-top: 140px;">
		<table border="0" cellpadding="0" cellspacing="0" width="400px;">
			<tr>
				<td width="125">&nbsp;</td>
				<td width="120">
					<a href="${ctx }/servlet/order?ContentID=${film.contentId}&filmId=${film.id}&channelId=2"  id="btn_second_orderconfirm">
						<img src="${ctx }/images/buy_bq.png"/>
					</a>
				</td>
				<td width="20">&nbsp;</td>
				<td width="120">
					<a href="#" onclick="close_confirm()">
						<img src="${ctx }/images/nobuy_bq.png"/>
				   </a>
				</td>
				<td width="15">&nbsp;</td>
			</tr>
		</table>
	</div>
</div>

</body>
</html>
