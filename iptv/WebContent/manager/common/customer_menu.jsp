<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
.customer_menu_div {width: 960px;margin: 0 auto;background: url('${ctx }/images/dh.jpg');height: 40px;margin-bottom: 10px;}
.topMenuUL{font-size: 14px;width: 930px;padding-top: 12px;margin: 0 auto;list-style: none}
.topMenuLI{width: 85px;float: left;padding:0;position: relative;text-align: center;border-right: 1px solid #000000;}
.topMenuLI a:link{color: #000000;text-decoration: none;}
.topMenuLI a:visited{color: #000000;text-decoration: none;}
.topMenuLI a:hover{color: #000000;font-weight: bold;}
.topMenuLI a:active{color: #000000;}
</style>
<div class="customer_menu_div">
	<ul class="topMenuUL">
		<li class="topMenuLI"><a href="${ctx }/manager/channelAction!list.do">频道管理</a></li>
		<li class="topMenuLI"><a href="${ctx }/manager/columnAction!list.do">栏目管理</a></li>
		<li class="topMenuLI"><a href="${ctx }/manager/filmAction!list.do">影片管理</a></li>
		<li class="topMenuLI"><a href="${ctx }/manager/orderAction!list.do">订购记录</a></li>
	</ul>
</div>