<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<table width="1280" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td width="64" background="images/crjy-gq-01.jpg">&nbsp;</td>
		<td>
			<a href="${ctx }/crjy_hd/filmAction!crjyIndex.do" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image9','','images/crjy-gq-02.jpg',1)">
			<img src="images/crjy-gq-02-2.jpg" name="Image9" width="225" height="101" border="0" id="Image9" /></a>
		</td>
		<td><img src="images/crjy-gq-03.jpg" width="124" height="101" /></td>
		<td>
			<c:choose>
				<c:when test="${requestScope.columnID == 6}"><a href="${ctx }/crjy_hd/filmAction!listFilmByColumnId.do?columnId=6&channelId=3">
					<img src="images/crjy-gq-04-2.jpg" name="Image11" width="194" height="101" border="0" id="Image11" /></a>
				</c:when>
				<c:otherwise>
					<a href="${ctx }/crjy_hd/filmAction!listFilmByColumnId.do?columnId=6&channelId=3" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image11','','images/crjy-gq-04-2.jpg',1)">
						<img src="images/crjy-gq-04.jpg" name="Image11" width="194" height="101" border="0" id="Image11" /></a>
				</c:otherwise>
			</c:choose>
		</td>
		<td>
			<c:choose>
				<c:when test="${requestScope.columnID == 7}">
					<a href="${ctx }/crjy_hd/filmAction!listFilmByColumnId.do?columnId=7&channelId=3">
					<img src="images/crjy-gq-05-2.jpg" name="Image12" width="199" height="101" border="0" id="Image12" /></a>
				</c:when>
				<c:otherwise>
					<a href="${ctx }/crjy_hd/filmAction!listFilmByColumnId.do?columnId=7&channelId=3" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image12','','images/crjy-gq-05-2.jpg',1)">
						<img src="images/crjy-gq-05.jpg" name="Image12" width="199" height="101" border="0" id="Image12" /></a>
				</c:otherwise>
			</c:choose>
		</td>
		<td>
			<c:choose>
				<c:when test="${requestScope.columnID == 8}">
					<a href="${ctx }/crjy_hd/filmAction!listFilmByColumnId.do?columnId=8&channelId=3">
					<img src="images/crjy-gq-06-2.jpg" name="Image13" width="195" height="101" border="0" id="Image13" /></a>
				</c:when>
				<c:otherwise>
					<a href="${ctx }/crjy_hd/filmAction!listFilmByColumnId.do?columnId=8&channelId=3" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image13','','images/crjy-gq-06-2.jpg',1)">
					<img src="images/crjy-gq-06.jpg" name="Image13" width="195" height="101" border="0" id="Image13" /></a>
				</c:otherwise>
			</c:choose>
		</td>
		<td>
			<c:choose>
				<c:when test="${requestScope.columnID == 9}">
					<a href="${ctx }/crjy_hd/filmAction!listFilmByColumnId.do?columnId=9&channelId=3">
					<img src="images/crjy-gq-07-2.jpg" name="Image14" width="196" height="101" border="0" id="Image14" /></a>
				</c:when>
				<c:otherwise>
					<a href="${ctx }/crjy_hd/filmAction!listFilmByColumnId.do?columnId=9&channelId=3" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image14','','images/crjy-gq-07-2.jpg',1)">
					<img src="images/crjy-gq-07.jpg" name="Image14" width="196" height="101" border="0" id="Image14" /></a>
				</c:otherwise>
			</c:choose>
		</td>
		<td width="83" background="images/crjy-gq-08.jpg">&nbsp;</td>
	</tr>
</table>
