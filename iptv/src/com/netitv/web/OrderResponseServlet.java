package com.netitv.web;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.netitv.domain.OrderDetail;
import com.netitv.service.OrderDetailService;
import com.netitv.util.BeanFactory;

/**
 * @Todo:处理订购返回结果
 * @author: zhuqh
 * @CreateTime:2011-11-7 下午04:16:12
 */
public class OrderResponseServlet  extends HttpServlet {

	private static final long serialVersionUID = -2660778550427775915L;
	
	private static Logger logger = Logger.getLogger(OrderResponseServlet.class);
	
	  /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderResponseServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		logger.debug("=====OrderResponse begin ========");
		
		String channelId = request.getParameter("channelId");//频道ID
		String filmId = request.getParameter("filmId");//影片ID
		
		String SuccessUrl = "";//订购成功跳转URL
		String FailureUrl = "";//订购失败跳转URL
		String index_url = "";//应用首页地址
		if("1".equals(channelId)){
			SuccessUrl = getRequestPrefix(request)+"/yyzj/filmAction!listAssetByFilmId.do?filmId="+filmId+"&channelId="+channelId;
			FailureUrl = "/yyzj/error.jsp";
			index_url = getRequestPrefix(request)+"/yyzj/filmAction!eduIndex.do";
		}else{
			SuccessUrl = getRequestPrefix(request)+"/crazyenglish/filmAction!listAssetByFilmId.do?filmId="+filmId+"&channelId="+channelId;
			FailureUrl = "/crazyenglish/error.jsp";
			index_url = getRequestPrefix(request)+"/crazyenglish/filmAction!engIndex.do";
		}
		
		String Result = request.getParameter("Result");
		String Description = request.getParameter("Description");
		String UserID = request.getParameter("UserID");
		String UserToken = request.getParameter("UserToken");
		String ContentID = request.getParameter("ContentID");
		String ServiceID = request.getParameter("ServiceID");
		String ProductID = request.getParameter("ProductID");
		String ProductName = request.getParameter("ProductName");
		String PurchaseType = request.getParameter("PurchaseType");
		String Fee = request.getParameter("Fee");
		String SPID = request.getParameter("SPID");
		String TransactionID = request.getParameter("TransactionID");
		String ExpiredTime = request.getParameter("ExpiredTime");
		String OrderMode = request.getParameter("OrderMode");
		String AvailableIPTVRewardPoints = request.getParameter("AvailableIPTVRewardPoints");
		String AvailableTeleRewardPoints = request.getParameter("AvailableTeleRewardPoints");
		String SerStartTime = request.getParameter("SerStartTime");
		String SerEndTime = request.getParameter("SerEndTime");
		String Code = request.getParameter("Code");
		
		logger.debug("Code====="+Code);
		logger.debug("UserID====="+UserID);
		logger.debug("ProductID====="+ProductID);
		logger.debug("ProductName====="+ProductName);
		logger.debug("Fee====="+Fee);
		
		if("0".equals(Result)){
			if(UserToken != null && !"".equals(UserToken)){
				request.getSession().setAttribute("UserToken", UserToken);
			}
			
			OrderDetail orderDetail = buildOrderDetail(Description,UserID,ContentID,ServiceID,ProductID,ProductName,PurchaseType,Fee,SPID,TransactionID,ExpiredTime,OrderMode,AvailableIPTVRewardPoints,AvailableTeleRewardPoints,SerStartTime,SerEndTime);
			OrderDetailService orderDetailService = (OrderDetailService) BeanFactory.getBeanByName("orderDetailService");
			orderDetailService.saveOrderDetail(orderDetail);
			
			logger.info("user_id==="+UserID+",订购产品ProductID:"+ProductID+"成功");
			
			response.sendRedirect(SuccessUrl); //订购成功跳转页
			
		}else{
			logger.error("user_id==="+UserID+",订购产品ProductID:"+ProductID+"失败");
			request.setAttribute("msg", "订购产品失败,<a href='"+index_url+"'>返回首页</a>");
			RequestDispatcher rd = request.getRequestDispatcher(FailureUrl); //订购失败跳转页
			rd.forward(request, response);
		}
		
		logger.debug("=====OrderResponse end ========");
	}

	private OrderDetail buildOrderDetail(String description, String userID,
			String contentID, String serviceID, String productID,
			String productName, String purchaseType, String fee, String sPID,
			String transactionID, String expiredTime, String orderMode,
			String availableIPTVRewardPoints, String availableTeleRewardPoints,
			String serStartTime, String serEndTime) {
		// TODO Auto-generated method stub
		OrderDetail orderDetail = new OrderDetail();
		
		orderDetail.setAvailable_iptvrewardpoints(availableIPTVRewardPoints);
		orderDetail.setAvailable_teleRewardpoints(availableTeleRewardPoints);
		orderDetail.setContentid(contentID);
		orderDetail.setCreatetime(Calendar.getInstance().getTime());
		orderDetail.setDescription(description);
		orderDetail.setExpired_time(expiredTime);
		orderDetail.setFee(fee);
		orderDetail.setOrdermode(orderMode);
		orderDetail.setProductid(productID);
		orderDetail.setProductname(productName);
		orderDetail.setPurchasetype(purchaseType);
		orderDetail.setSerendtime(serEndTime);
		orderDetail.setSerstarttime(serStartTime);
		orderDetail.setServiceid(serviceID);
		orderDetail.setSpid(sPID);
		orderDetail.setStatus("1");
		orderDetail.setTransaction_id(transactionID);
		orderDetail.setUserid(userID);
	
		return orderDetail;
		
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
