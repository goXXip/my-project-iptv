<table border="0" align="center" cellpadding="0" cellspacing="4"  width="1142">
        <tr>
          <td width="224" height="168" align="center">			    			 
	          <c:if test="${fn:length(requestScope.relativeList) > 0 }">
				    <c:forEach items="${requestScope.relativeList}" begin="0" end="0" var="result" varStatus="status">
					   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusImg('t_2_0','liston');" onblur="focusImg('t_2_0','listoff');">
						    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_0" class="listoff"/>
					   </a>
					 </c:forEach>
			  </c:if>
		  </td>
          <td width="224" align="center">
             <c:if test="${fn:length(requestScope.relativeList) > 1 }">
			   <c:forEach items="${requestScope.relativeList}" begin="1" end="1" var="result" varStatus="status">
					   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusImg('t_2_1','liston');" onblur="focusImg('t_2_1','listoff');">
						    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_1" class="listoff"/>
					    </a>
				</c:forEach>
			 </c:if>
          </td>
          <td width="224" align="center">
             <c:if test="${fn:length(requestScope.relativeList) > 2 }">
			   <c:forEach items="${requestScope.relativeList}" begin="2" end="2" var="result" varStatus="status">
					   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusImg('t_2_2','liston');" onblur="focusImg('t_2_2','listoff');">
						    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_2" class="listoff"/>
					    </a>
				</c:forEach>
			 </c:if>
          </td>
          <td width="224" align="center">
             <c:if test="${fn:length(requestScope.relativeList) > 3 }">
			   <c:forEach items="${requestScope.relativeList}" begin="3" end="3" var="result" varStatus="status">
					   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusImg('t_2_3','liston');" onblur="focusImg('t_2_3','listoff');">
						    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_3" class="listoff"/>
					    </a>
				</c:forEach>
			 </c:if>
          </td>
         <td width="224" align="center">
             <c:if test="${fn:length(requestScope.relativeList) > 4 }">
			   <c:forEach items="${requestScope.relativeList}" begin="4" end="4" var="result" varStatus="status">
					   <a href="${ctx }/yyzj_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusImg('t_2_4','liston');" onblur="focusImg('t_2_4','listoff');">
						    <img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" border="0" width="220" height="150"  id="t_2_4" class="listoff"/>
					    </a>
				</c:forEach>
			 </c:if>
          </td>
        </tr>
        <tr>
          <td height="30" align="center" valign="top">
          	 <c:if test="${fn:length(requestScope.relativeList) > 0 }">
				  <c:forEach items="${requestScope.relativeList}" begin="0" end="0" var="result" varStatus="status">
					  <span class="STYLE25" id="t_2_0_title">${result.name }</span>
				</c:forEach>
			 </c:if>
          </td>
          <td align="center" valign="top">
          	 <c:if test="${fn:length(requestScope.relativeList) > 1 }">
				  <c:forEach items="${requestScope.relativeList}" begin="1" end="1" var="result" varStatus="status">
					  <span class="STYLE25" id="t_2_1_title">${result.name }</span>
				</c:forEach>
			 </c:if>
          </td>
          <td align="center" valign="top">
             <c:if test="${fn:length(requestScope.relativeList) > 2 }">
				  <c:forEach items="${requestScope.relativeList}" begin="2" end="2" var="result" varStatus="status">
					  <span class="STYLE25" id="t_2_2_title">${result.name }</span>
				</c:forEach>
			 </c:if>
          </td>
          <td align="center" valign="top">          	
			<c:if test="${fn:length(requestScope.relativeList) > 3 }">
				<c:forEach items="${requestScope.relativeList}" begin="3" end="3" var="result" varStatus="status">
					  <span class="STYLE25" id="t_2_3_title">${result.name }</span>
				</c:forEach>
			 </c:if>
		  </td>
          <td align="center" valign="top">
             <c:if test="${fn:length(requestScope.relativeList) > 4 }">
				  <c:forEach items="${requestScope.relativeList}" begin="4" end="4" var="result" varStatus="status">
					  <span class="STYLE25" id="t_2_4_title">${result.name }</span>
				</c:forEach>
			 </c:if>
          </td>
        </tr>
</table>