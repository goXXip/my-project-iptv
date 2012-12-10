<%@include file="/common/taglibs.jsp"%>
<table width="640" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td><img src="${ctx }/crjy/images/crjy-bq-01.jpg" width="182" height="70" name="Image5" border="0" usemap="#Image5Map" id="Image5" /></td>
		<td><c:choose><c:when test="${requestScope.columnID == 6}"><img src="${ctx }/crjy/images/crjy-bq-02-2.jpg" name="Image6" width="111" height="70" border="0" usemap="#Image6Map" id="Image6"/></c:when><c:otherwise><img src="${ctx }/crjy/images/crjy-bq-02.jpg" name="Image6" width="111" height="70" border="0" usemap="#Image6Map" id="Image6" /></c:otherwise></c:choose></td>
		<td><c:choose><c:when test="${requestScope.columnID == 7}"><img src="${ctx }/crjy/images/crjy-bq-03-2.jpg" name="Image7" width="112" height="70" border="0" usemap="#Image7Map" id="Image7"/></c:when><c:otherwise><img src="${ctx }/crjy/images/crjy-bq-03.jpg" name="Image7" width="112" height="70" border="0" usemap="#Image7Map" id="Image7" /></c:otherwise></c:choose></td>
		<td><c:choose><c:when test="${requestScope.columnID == 8}"><img src="${ctx }/crjy/images/crjy-bq-04-2.jpg" name="Image8" width="113" height="70" border="0" usemap="#Image8Map" id="Image8" /></c:when><c:otherwise><img src="${ctx }/crjy/images/crjy-bq-04.jpg" name="Image8" width="113" height="70" border="0" usemap="#Image8Map" id="Image8" /></c:otherwise></c:choose></td>
		<td><c:choose><c:when test="${requestScope.columnID == 9}"><img src="${ctx }/crjy/images/crjy-bq-05-2.jpg" name="Image9" width="112" height="70" border="0" usemap="#Image9Map" id="Image9" /></c:when><c:otherwise><img src="${ctx }/crjy/images/crjy-bq-05.jpg" name="Image9" width="112" height="70" border="0" usemap="#Image9Map" id="Image9" /></c:otherwise></c:choose></td>
		<td><img src="${ctx }/crjy/images/crjy-bq-06.jpg" width="10" height="70" border="0"/></td>
	</tr>
</table>