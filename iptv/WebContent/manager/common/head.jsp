<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/manager/common/taglibs.jsp"%>
<div style="margin: 0 auto;width: 960px;text-align: right;margin-top: 10px;margin-bottom: 10px;">
${sessionScope.AdministratorInfo.username },欢迎进入资料录入后台&nbsp;&nbsp;&nbsp;&nbsp;<a href="${ctx }/manager/loginAction!logout.do" style="text-decoration: none;color: blue">退出</a>
</div>
<jsp:include page="/manager/common/customer_menu.jsp"></jsp:include>
