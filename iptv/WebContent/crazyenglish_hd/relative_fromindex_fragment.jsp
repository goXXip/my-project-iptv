<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<table height="146" border="0" align="center" cellpadding="0" cellspacing="12">
        <tr>
          <td width="268" height="185">
          	 <c:if test="${fn:length(requestScope.relativeList) > 0 }">
				<c:forEach items="${requestScope.relativeList}" var="result" varStatus="status"  begin="0" end="0">
					    <div id="t_2_0" class="listoff">
					          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;color: #ffffff">
					             <tr>
					              <td width="132" height="165">
					             	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_2_0','liston');" onblur="focusStyle('t_2_0','listoff');">
					              		<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
					              	</a>
					              </td>
					              <td width="116" valign="top"><span style="font-size: 24px">${result.name }</span><br />
					                 <span style="font-size: 20px">适用：${result.audient }<br />主讲：${result.actor }</span>
					              </td>
					             </tr>
					          </table>
		          		</div>
			    </c:forEach>
			 </c:if>
          </td>
          <td width="269">          	 
          	<c:if test="${fn:length(requestScope.relativeList) > 1 }">
				<c:forEach items="${requestScope.relativeList}" var="result" varStatus="status"  begin="1" end="1">
					    <div id="t_2_1" class="listoff">
					          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;color: #ffffff">
					             <tr>
					              <td width="132" height="165">
					             	 <a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_2_1','liston');" onblur="focusStyle('t_2_1','listoff');">
					              	<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
					              	</a>
					              </td>
					              <td width="116" valign="top"><span style="font-size: 24px">${result.name }</span><br />
					                 <span style="font-size: 20px">适用：${result.audient }<br />主讲：${result.actor }</span>
					              </td>
					             </tr>
					          </table>
		          		</div>
			    </c:forEach>
			 </c:if>
		</td>
          <td width="269">          	
	          <c:if test="${fn:length(requestScope.relativeList) > 2 }">
					<c:forEach items="${requestScope.relativeList}" var="result" varStatus="status"  begin="2" end="2">
						    <div id="t_2_2" class="listoff">
						          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;color: #ffffff">
						             <tr>
						              <td width="132" height="165">
						              	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_2_2','liston');" onblur="focusStyle('t_2_2','listoff');">
						              		<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
						              	</a>
						              </td>
									   <td width="116" valign="top"><span style="font-size: 24px">${result.name }</span><br />
					                 	<span style="font-size: 20px">适用：${result.audient }<br />主讲：${result.actor }</span>
					              	  </td>
						             </tr>
						          </table>
			          		</div>
				    </c:forEach>
				 </c:if>
		 </td>
          <td width="268">	          
          	<c:if test="${fn:length(requestScope.relativeList) > 3 }">
					<c:forEach items="${requestScope.relativeList}" var="result" varStatus="status"  begin="3" end="3">
						    <div id="t_2_3" class="listoff">
						          <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;color: #ffffff">
						             <tr>
						              <td width="132" height="165">
						              	<a href="${ctx }/crazyenglish_hd/filmAction!detail.do?filmId=${result.id}&from=index" onfocus="focusStyle('t_2_3','liston');" onblur="focusStyle('t_2_3','listoff');">
						              	<img src="${ctx }/uploadImages/${result.smallImage_HD.id}.${result.smallImage_HD.suffix}" width="120" height="165" />
						              	</a>
						              </td>
						         	  <td width="116" valign="top"><span style="font-size: 24px">${result.name }</span><br />
					                 	<span style="font-size: 20px">适用：${result.audient }<br />主讲：${result.actor }</span>
					              	  </td>
						             </tr>
						          </table>
			          		</div>
				    </c:forEach>
			</c:if>
		</td>
        </tr>
</table>