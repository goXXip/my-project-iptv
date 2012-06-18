<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

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

	<input type="hidden" value="<s:property value="pageBean.totalPages" />" name="totalPages_Hidden" id="totalPages_Hidden" />
	<input type="hidden" value="<s:property value="pageBean.curPage" />" name="curPage" id="curPage" /> 
	<s:if test="pageBean.totalPages > 0">
		<a href="#" onclick="javascript:goToHead()">首页</a>
	</s:if>
	<s:else>
		首页
	</s:else>
	<s:if test="pageBean.hasPreviousPage">
		<a href="#" onclick="javascript:goToPre()">上一页</a>
	</s:if>
	<s:else>
		上一页
	</s:else>

	跳转到第 <select name="pageNumberSelect" onchange="gotoSelectedPage();" id="pageNumberSelect">
		<s:bean name="org.apache.struts2.util.Counter" id="counter">
			<s:param name="first" value="1" />
			<s:param name="last" value="pageBean.totalPages" />
			<s:iterator>
				<s:if test="pageBean.curPage == current-1">
					<option value="<s:property/>" selected="selected"><s:property/></option>
				</s:if>
				<s:else>
					<option value="<s:property/>"><s:property /></option>
				</s:else>
			</s:iterator>
		</s:bean>
	</select>页 
	<s:if test="pageBean.hasNextPage">
	   <a href="#" onclick="javascript:goToNext()">下一页</a>
	</s:if>
	<s:else>
	    下一页
	</s:else>
	<s:if test="pageBean.totalPages > 0">
		<a href="#" onclick="javascript:goToLast()">末页</a>
	</s:if>
	<s:else>
		末页
	</s:else>
	
