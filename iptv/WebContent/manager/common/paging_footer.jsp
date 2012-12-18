<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">

	function gotoSelectedPage() {
		var pageNo = document.getElementById("pageNumberSelect").value;
		gotoPage(pageNo);
	}

	function gotoPage(pageNo) {
		var x = document.forms[0];
		document.getElementById("curPage").value = pageNo;
		x.submit();
	}

	function goToHead(){
		gotoPage(1);
	}

	function goToNext(){
		var cur_No = document.getElementById("curPage").value;
		gotoPage(parseInt(cur_No)+1);
	}

	function goToPre(){
		var cur_No = document.getElementById("curPage").value;
		gotoPage(parseInt(cur_No)-1);
	}

	function goToLast(){
		var totalPages = document.getElementById("totalPages_Hidden").value;
		gotoPage(totalPages);
	}
	
</script>

	<input type="hidden" value="${pageBean.totalPages }" name="totalPages_Hidden" id="totalPages_Hidden" />
	<input type="hidden" value="${pageBean.curPage }" name="curPage" id="curPage" />
	<c:choose><c:when test="${pageBean.totalPages > 0}"><a href="#" onclick="javascript:goToHead()">首页</a></c:when><c:otherwise>首页</c:otherwise></c:choose> 
	<c:choose><c:when test="${pageBean.hasPreviousPage}"><a href="#" onclick="javascript:goToPre()">上一页</a></c:when><c:otherwise>上一页</c:otherwise></c:choose>

	跳转到第 <select name="pageNumberSelect" onchange="gotoSelectedPage();" id="pageNumberSelect">
		<c:forEach begin="1" end="${pageBean.totalPages}" var="current">
  			<option value="${current}" <c:if test="${ pageBean.curPage == current }">selected</c:if> >第${current}页</option>
		</c:forEach>
	</select>页 
	<c:choose><c:when test="${pageBean.hasNextPage}"><a href="#" onclick="javascript:goToNext()">下一页</a></c:when><c:otherwise>下一页</c:otherwise></c:choose>
	<c:choose><c:when test="${pageBean.totalPages > 0}"><a href="#" onclick="javascript:goToLast()">末页</a></c:when><c:otherwise>末页</c:otherwise></c:choose>	
