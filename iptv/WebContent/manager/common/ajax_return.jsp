
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%
	PrintWriter pw = response.getWriter();
	String ajaxData =(String)request.getAttribute("ajaxData");
	pw.write(ajaxData);
	pw.flush();
	pw.close();
%>
