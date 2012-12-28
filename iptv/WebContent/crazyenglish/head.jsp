<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="${ctx }/crazyenglish/images/lyfkyy-1.jpg" width="179" height="70" name="Image5" border="0" usemap="#Image5Map" id="Image5" /></td>
    <td><c:choose><c:when test="${requestScope.columnID == 4}"><img src="${ctx }/crazyenglish/images/lyfkyy-fkyy-1.jpg" name="Image9" width="180" height="70" border="0" usemap="#Image9Map" id="Image9" /></c:when><c:otherwise><img src="${ctx }/crazyenglish/images/lyfkyy-fkyy-2.jpg" name="Image9" width="180" height="70" border="0" usemap="#Image9Map" id="Image9" /></c:otherwise></c:choose></td>
    <td><c:choose><c:when test="${requestScope.columnID == 5}"><img src="${ctx }/crazyenglish/images/lyfkyy-yufd-1.jpg" name="Image10" width="180" height="70" border="0" usemap="#Image10Map" id="Image10" /></c:when><c:otherwise><img src="${ctx }/crazyenglish/images/lyfkyy-yufd-2.jpg" name="Image10" width="180" height="70" border="0" usemap="#Image10Map" id="Image10" /></c:otherwise></c:choose></td>
    <td><img src="${ctx }/crazyenglish/images/lyfkyy-1-4.jpg" width="105" height="70" /></td>
  </tr>
</table>