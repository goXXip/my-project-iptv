<%@include file="/common/taglibs.jsp"%>
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="${ctx }/yyzj/images/zyzj-1.jpg" width="184" height="70" name="Image5" border="0" usemap="#Image5Map" id="Image5" /></td>
    <td><c:choose><c:when test="${requestScope.columnID == 1}"><img src="${ctx }/yyzj/images/zyzj-1-2-2.jpg" name="Image6" width="136" height="70" border="0" usemap="#Image6Map" id="Image6" /></c:when><c:otherwise><img src="${ctx }/yyzj/images/zyzj-1-2.jpg" name="Image6" width="136" height="70" border="0" usemap="#Image6Map" id="Image6" /></c:otherwise></c:choose></td>
    <td><c:choose><c:when test="${requestScope.columnID == 2}"><img src="${ctx }/yyzj/images/zyzj-1-3-2.jpg" name="Image7" width="129" height="70" border="0" usemap="#Image7Map" id="Image7" /></c:when><c:otherwise><img src="${ctx }/yyzj/images/zyzj-1-3.jpg" name="Image7" width="129" height="70" border="0" usemap="#Image7Map" id="Image7" /></c:otherwise></c:choose></td>
    <td><c:choose><c:when test="${requestScope.columnID == 3}"><img src="${ctx }/yyzj/images/zyzj-1-4-2.jpg" name="Image8" width="195" height="70" border="0" usemap="#Image8Map" id="Image8" /></c:when><c:otherwise><img src="${ctx }/yyzj/images/zyzj-1-4.jpg" name="Image8" width="195" height="70" border="0" usemap="#Image8Map" id="Image8" /></c:otherwise></c:choose></td>
  </tr>
</table>