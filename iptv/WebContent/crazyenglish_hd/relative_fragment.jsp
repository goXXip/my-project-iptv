<%@ page language="java" pageEncoding="UTF-8"%>
<table height="146" border="0" align="center" cellpadding="0" cellspacing="12">
        <tr>
          <td width="268" height="185">
          	 <c:if test="${fn:length(requestScope.relativeList) > 0 }">
				<c:forEach items="${requestScope.relativeList}" var="result" varStatus="status"  begin="0" end="0">
				 	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_0','liston');" onblur="focusStyle('t_2_0','listoff');">
					    <div id="t_2_0" class="listoff">
					          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;">
					             <tr>
					              <td width="132" height="165">
					              	<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
					              </td>
					              <td width="116" valign="top"><span style="font-size: 20px">${result.name }</span><br />
					                 <span style="font-size: 18px">主讲：${result.actor }</span>
					              </td>
					             </tr>
					          </table>
		          		</div>
				   </a>
			    </c:forEach>
			 </c:if>
          </td>
          <td width="269">          	 
          	<c:if test="${fn:length(requestScope.relativeList) > 1 }">
				<c:forEach items="${requestScope.relativeList}" var="result" varStatus="status"  begin="1" end="1">
				 	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_1','liston');" onblur="focusStyle('t_2_1','listoff');">
					    <div id="t_2_1" class="listoff">
					          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;">
					             <tr>
					              <td width="132" height="165">
					              	<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
					              </td>
					              <td width="116" valign="top"><span style="font-size: 20px">${result.name }</span><br />
					                  <span style="font-size: 18px">主讲：${result.actor }</span>
					              </td>
					             </tr>
					          </table>
		          		</div>
				   </a>
			    </c:forEach>
			 </c:if>
		</td>
          <td width="269">          	
	          <c:if test="${fn:length(requestScope.relativeList) > 2 }">
					<c:forEach items="${requestScope.relativeList}" var="result" varStatus="status"  begin="2" end="2">
					 	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_2','liston');" onblur="focusStyle('t_2_2','listoff');">
						    <div id="t_2_2" class="listoff">
						          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;">
						             <tr>
						              <td width="132" height="165">
						              	<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
						              </td>
						              <td width="116" valign="top"><span style="font-size: 20px">${result.name }</span><br />
						                <span style="font-size: 18px">主讲：${result.actor }</span>
						              </td>
						             </tr>
						          </table>
			          		</div>
					   </a>
				    </c:forEach>
				 </c:if>
		 </td>
          <td width="268">	          
          	<c:if test="${fn:length(requestScope.relativeList) > 3 }">
					<c:forEach items="${requestScope.relativeList}" var="result" varStatus="status"  begin="3" end="3">
					 	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}" onfocus="focusStyle('t_2_3','liston');" onblur="focusStyle('t_2_3','listoff');">
						    <div id="t_2_3" class="listoff">
						          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;">
						             <tr>
						              <td width="132" height="165">
						              	<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
						              </td>
						              <td width="116" valign="top"><span style="font-size: 20px">${result.name }</span><br />
						                  <span style="font-size: 18px">主讲：${result.actor }</span>
						              </td>
						             </tr>
						          </table>
			          		</div>
					   </a>
				    </c:forEach>
			</c:if>
		</td>
        </tr>
    </table>