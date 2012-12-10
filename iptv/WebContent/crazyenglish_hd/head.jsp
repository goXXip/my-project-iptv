<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<table width="1280" border="0" cellspacing="0" cellpadding="0">
  <tr>
  	<td><img src="${ctx }/crazyenglish_hd/images/fkyy-left.jpg" width="68" height="101" border="0"/></td>
    <td><a href="${ctx }/crazyenglish_hd/filmAction!engIndex.do" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image8','','${ctx }/crazyenglish_hd/images/fkyy-gq-1-2.jpg',1)"><img src="${ctx }/crazyenglish_hd/images/fkyy-gq-1.jpg" name="Image8" width="234" height="101" border="0" id="Image8" /></a></td>
    <td width="652" align="right" background="${ctx }/crazyenglish_hd/images/fkyy-gq-2.jpg"><c:choose><c:when test="${requestScope.columnID == 5}"><a href="${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId=5&channelId=2"><img src="${ctx }/crazyenglish_hd/images/fkyy-gq-14-2.jpg" name="Image9" width="227" height="101" border="0" id="Image9" /></a></c:when><c:otherwise><a href="${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId=5&channelId=2" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image9','','${ctx }/crazyenglish_hd/images/fkyy-gq-14-2.jpg',1)"><img src="${ctx }/crazyenglish_hd/images/fkyy-gq-14.jpg" name="Image9" width="227" height="101" border="0" id="Image9"/></a></c:otherwise></c:choose></td>
    <td><c:choose><c:when test="${requestScope.columnID == 4}"><a href="${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId=4&channelId=2"><img src="${ctx }/crazyenglish_hd/images/fkyy-gq-3-2.jpg" name="Image10" width="258" height="101" border="0" id="Image10" /></a></c:when><c:otherwise><a href="${ctx }/crazyenglish_hd/filmAction!listFilmByColumnId.do?columnId=4&channelId=2" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image10','','${ctx }/crazyenglish_hd/images/fkyy-gq-3-2.jpg',1)"><img src="${ctx }/crazyenglish_hd/images/fkyy-gq-3.jpg" name="Image10" width="258" height="101" border="0" id="Image10" /></a></c:otherwise></c:choose></td>
    <td><img src="${ctx }/crazyenglish_hd/images/fkyy-right.jpg" width="68" height="101" border="0"/></td>
  </tr>
</table>
