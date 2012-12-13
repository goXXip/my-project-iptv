package com.netitv.web;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.huawei.vas.bean.ServiceAuthReq;
import com.huawei.vas.bean.ServiceAuthResp;
import com.netitv.domain.Channel;
import com.netitv.service.ChannelService;
import com.netitv.util.BeanFactory;
import com.netitv.util.Constants;
import com.netitv.util.HttpUtil;
import com.netitv.ws.VASServiceServiceClient;

/**
 * @Todo:鉴权,需传入以下参数：ProductID,ServiceID,ContentID,SuccessUrl,FailureUrl
 * @author: zhuqh
 * @CreateTime:2011-11-7 下午03:46:36
 */
public class ServiceAuthServlet   extends HttpServlet{

	private static final long serialVersionUID = -3862614147091335527L;

	private static Logger logger = Logger.getLogger(ServiceAuthServlet.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		logger.debug(" ServiceAuth begin ");
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String userId = HttpUtil.getUserId(request);
		String ProductID = "";
		String ServiceID = "";
		String ContentID = request.getParameter("ContentID");
		String filmId = request.getParameter("filmId");
		String channelId = request.getParameter("channelId");//频道标识
		String from = request.getParameter("from");//来源于哪个页面
		if( channelId != null && !"".equals(channelId)){
			ChannelService channelService = (ChannelService) BeanFactory.getBeanByName("channelService");
			Channel channel = channelService.findById(Integer.valueOf(channelId));
			if( channel != null ){
				ProductID = channel.getProductId();
				ServiceID = channel.getServiceId();
			}
		}
		
		String UserToken = null;
		if(request.getSession().getAttribute(Constants.UserToken) == null){//重定向到身份认证页面
			String toAuthenticationUrl = getRequestPrefix(request)+"/servlet/authenticate?flag="+channelId;
			response.sendRedirect(toAuthenticationUrl); 
			return;
		}else{
			UserToken = (String) request.getSession().getAttribute(Constants.UserToken);
		}

		String SuccessUrl = "";//鉴权成功URL,跳转到影片资产列表(剧集列表)
		String FailureUrl = "";//鉴权失败URL,跳转到订购页
		if("1".equals(channelId)){
			 SuccessUrl = getRequestPrefix(request)+"/yyzj/filmAction!listAsset.do?filmId="+filmId+"&channelId="+channelId+"&from="+from;
			 FailureUrl = getRequestPrefix(request)+"/yyzj/filmAction!orderConfirm.do?filmId="+filmId;
		}else if("2".equals(channelId)){
			 SuccessUrl = getRequestPrefix(request)+"/crazyenglish/filmAction!listAsset.do?filmId="+filmId+"&channelId="+channelId+"&from="+from;
			 FailureUrl = getRequestPrefix(request)+"/crazyenglish/filmAction!orderConfirm.do?filmId="+filmId;
		}else{
			 SuccessUrl = getRequestPrefix(request)+"/crjy/filmAction!listAsset.do?filmId="+filmId+"&channelId="+channelId+"&from="+from;
			 FailureUrl = getRequestPrefix(request)+"/crjy/filmAction!orderConfirm.do?filmId="+filmId;
		}
		
		ServiceAuthReq serviceAuthReq = new ServiceAuthReq();
		serviceAuthReq.setSPID(Constants.SPID);
		serviceAuthReq.setUserID(userId);
		serviceAuthReq.setUserToken(UserToken);
		serviceAuthReq.setProductID(ProductID);
		if( ServiceID != null){
			serviceAuthReq.setServiceID(ServiceID);
		}
		if( ContentID != null){
			serviceAuthReq.setContentID(ContentID);
		}
		long TimeStamp = Calendar.getInstance().getTimeInMillis();
		serviceAuthReq.setTimeStamp(String.valueOf(TimeStamp));
		
		ServiceAuthResp  serviceAuthResp = VASServiceServiceClient.serviceAuth(serviceAuthReq);
		if( serviceAuthResp != null){
			logger.info(" ServiceAuth begin ");
			
			String Result = serviceAuthResp.getResult();
			logger.info("Result==="+Result+",ProductID==="+ProductID+",filmId==="+filmId+",channelId==="+channelId);
			
			if("0".equals(Result)){
				logger.info("userId="+userId+",ProductID="+ProductID+",ServiceID="+ServiceID+"鉴权成功。");
				response.sendRedirect(SuccessUrl); //跳转到鉴权成功页面
			}else{
				logger.error("userId="+userId+",ProductID="+ProductID+",ServiceID="+ServiceID+"鉴权失败。");
				response.sendRedirect(FailureUrl);//跳转到鉴权失败页面
			}
			
			logger.info(" ServiceAuth end ");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private String getRequestPrefix(HttpServletRequest request){
		return request.getScheme()+"://"+ request.getServerName()+":"+request.getServerPort()+request.getContextPath();
	}
}
