<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="65" background="images/yyzj-gq-14.jpg">&nbsp;</td>
    <td><a href="${ctx }/yyzj_hd/filmAction!eduIndex.do" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image9','','images/yyzj-gq-1-2.jpg',1)"><img src="images/yyzj-gq-1.jpg" name="Image9" width="240" height="101" border="0" id="Image9" /></a></td>
    <td><img src="images/yyzj-gq-15.jpg" width="282" height="101" /></td>
    <td><c:choose><c:when test="${requestScope.columnID == 1}"><a href="${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=1&channelId=3"><img src="images/yyzj-gq-2-2.jpg" name="Image11" width="196" height="101" border="0" id="Image11" /></a></c:when><c:otherwise><a href="${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=1&channelId=3" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image11','','images/yyzj-gq-2-2.jpg',1)"><img src="images/yyzj-gq-2.jpg" name="Image11" width="196" height="101" border="0" id="Image11" /></a></c:otherwise></c:choose></td>
    <td><c:choose><c:when test="${requestScope.columnID == 2}"><a href="${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=2&channelId=3"><img src="images/yyzj-gq-3-2.jpg" name="Image12" width="213" height="101" border="0" id="Image12" /></a></c:when><c:otherwise><a href="${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=2&channelId=3" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image12','','images/yyzj-gq-3-2.jpg',1)"><img src="images/yyzj-gq-3.jpg" name="Image12" width="213" height="101" border="0" id="Image12" /></a></c:otherwise></c:choose></td>
    <td><c:choose><c:when test="${requestScope.columnID == 3}"><a href="${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=3&channelId=3"><img src="images/yyzj-gq-4-2.jpg" name="Image13" width="213" height="101" border="0" id="Image13" /></a></c:when><c:otherwise><a href="${ctx }/yyzj_hd/filmAction!listFilmByColumnId.do?columnId=3&channelId=3" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image13','','images/yyzj-gq-4-2.jpg',1)"><img src="images/yyzj-gq-4.jpg" name="Image13" width="213" height="101" border="0" id="Image13" /></a></c:otherwise></c:choose></td>
    <td width="71" background="images/yyzj-gq-14.jpg">&nbsp;</td>
  </tr>
</table>
