package com.netitv.web;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.netitv.util.Constants;
import com.netitv.util.HttpUtil;

/**
 * @Todo:处理订购请求,需传入以下参数：ContentID,ProductID,SuccessUrl,FailureUrl
 * @author: zhuqh
 * @CreateTime:2011-11-7 下午04:15:43
 */
public class OrderServlet  extends HttpServlet{
	
	private static final long serialVersionUID = -3760152835457433491L;
	
	private static Logger logger = Logger.getLogger(OrderServlet.class);
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String ContentID = request.getParameter("ContentID");
		String ProductID = "";//产品ID
//		String ServiceID = Constants.ServiceID;
		String filmId = request.getParameter("filmId");//影片ID
		String channelId = request.getParameter("channelId");//频道ID
		
		String Order_ReturnURL =getRequestPrefix(request)+"/servlet/orderResponse?channelId="+channelId+"&filmId="+filmId;
		Order_ReturnURL = URLEncoder.encode(Order_ReturnURL, "utf-8");
		
		String OrderMode = "1";
		String Action = "1";
		String ContinueType = "0";
		
		String user_id = "";
		if(request.getSession().getAttribute(Constants.UserID) != null){
			
			user_id = (String) request.getSession().getAttribute(Constants.UserID);
		}
		
		String UserToken = null;
		if(request.getSession().getAttribute(Constants.UserToken) == null){//重定向到身份认证页面
			String userId = HttpUtil.getCookieValue(request,"userID");
			String toAuthenticationUrl = getRequestPrefix(request)+"/servlet/authenticate?flag="+channelId+"&userId="+userId;
			response.sendRedirect(toAuthenticationUrl); 
			return;
		}else{
			UserToken = (String) request.getSession().getAttribute(Constants.UserToken);
		}
		
		String requestUrl = Constants.Order_Url+"SPID="+Constants.SPID+"&UserID="+ user_id +"&ProductID="
							+ProductID+"&ContentID="+ContentID+"&UserToken="+UserToken+"&Action="+Action+"&OrderMode="+OrderMode+"&ReturnURL="+Order_ReturnURL+"&ContinueType="+ContinueType;
		
		logger.debug("user_id==="+user_id);
		logger.debug("ContentID==="+ContentID);
		logger.debug("ProductID==="+ProductID);
		logger.debug("Order_ReturnURL==="+Order_ReturnURL);
		logger.debug("requestUrl==="+requestUrl);
		
		response.sendRedirect(requestUrl);
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
