<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Error Page</title>
    <style type="text/css">
    	#main{margin: 0 auto;min-height: 400px;width: 960px;background: #ffffff;border: 1px solid #ccc;margin-top: 5px;}
    	.msgDiv{margin: 0 auto;width: 500px;font-size: 20px;margin-top: 100px; }
    </style>
  </head>

  <body>
  
	
    <div id="main">
    	<div class="msgDiv">
     		<c:choose>
   				<c:when test="${requestScope.returnMsg != null}">${requestScope.returnMsg }</c:when>
   				<c:otherwise>系统内部错误</c:otherwise>
   			</c:choose>   
   		</div> 
    </div>
	
  </body>
</html>
