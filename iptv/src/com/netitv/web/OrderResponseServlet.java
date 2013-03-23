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
import com.netitv.util.HttpUtil;

/**
 * @Todo:处理订购返回结果
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
		String hd_flag = request.getParameter("hd_flag");//高清(hd)、标清标识
		
		String SuccessUrl = "";//订购成功跳转URL
		String FailureUrl = "";//订购失败跳转URL
		String index_url = "";//应用首页地址
		if(hd_flag!=null && "hd".equals(hd_flag)){
			if("1".equals(channelId)){
				SuccessUrl = getRequestPrefix(request)+"/yyzj_hd/filmAction!listAsset.do?filmId="+filmId+"&channelId="+channelId;
				FailureUrl = "/yyzj_hd/error.jsp";
				index_url = getRequestPrefix(request)+"/yyzj_hd/filmAction!eduIndex.do";
			}else if("2".equals(channelId)){
				SuccessUrl = getRequestPrefix(request)+"/crazyenglish_hd/filmAction!listAsset.do?filmId="+filmId+"&channelId="+channelId;
				FailureUrl = "/crazyenglish_hd/error.jsp";
				index_url = getRequestPrefix(request)+"/crazyenglish_hd/filmAction!engIndex.do";
			}else{
				SuccessUrl = getRequestPrefix(request)+"/crjy_hd/filmAction!listAsset.do?filmId="+filmId+"&channelId="+channelId;
				FailureUrl = "/crjy_hd/error.jsp";
				index_url = getRequestPrefix(request)+"/crjy_hd/filmAction!crjyIndex.do";
			}
		}else{
			if("1".equals(channelId)){
				SuccessUrl = getRequestPrefix(request)+"/yyzj/filmAction!listAsset.do?filmId="+filmId+"&channelId="+channelId;
				FailureUrl = "/yyzj/error.jsp";
				index_url = getRequestPrefix(request)+"/yyzj/filmAction!eduIndex.do";
			}else if("2".equals(channelId)){
				SuccessUrl = getRequestPrefix(request)+"/crazyenglish/filmAction!listAsset.do?filmId="+filmId+"&channelId="+channelId;
				FailureUrl = "/crazyenglish/error.jsp";
				index_url = getRequestPrefix(request)+"/crazyenglish/filmAction!engIndex.do";
			}else{
				SuccessUrl = getRequestPrefix(request)+"/crjy/filmAction!listAsset.do?filmId="+filmId+"&channelId="+channelId;
				FailureUrl = "/crjy/error.jsp";
				index_url = getRequestPrefix(request)+"/crjy/filmAction!crjyIndex.do";
			}
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
		
		logger.info("Result====="+Result+",channelId====="+channelId+",UserID====="+UserID+",ProductID====="+ProductID+",ProductName====="+ProductName+",Fee====="+Fee+",Code====="+Code);
		
		if("0".equals(Result)){
			if(UserToken != null && !"".equals(UserToken)){
				request.getSession().setAttribute("UserToken", UserToken);
			}
			
			OrderDetail orderDetail = buildOrderDetail(Description,UserID,ContentID,ServiceID,ProductID,ProductName,PurchaseType,Fee,SPID,TransactionID,ExpiredTime,OrderMode,AvailableIPTVRewardPoints,AvailableTeleRewardPoints,SerStartTime,SerEndTime,channelId);
			OrderDetailService orderDetailService = (OrderDetailService) BeanFactory.getBeanByName("orderDetailService");
			orderDetailService.saveOrderDetail(orderDetail);//保存数据库
			
			logger.info("user_id==="+UserID+",订购产品ProductID:"+ProductID+"成功");
			
			response.sendRedirect(SuccessUrl); //订购成功跳转页
			
		}else{
			if( UserID == null || "".equals(UserID)){
				UserID = HttpUtil.getUserId(request);
			}
			logger.error("user_id==="+UserID+",订购产品ProductID:"+ProductID+",channelId====="+channelId+",失败");
			String returnMsg = buildReturnMsg(Result,index_url);
			request.setAttribute("msg", returnMsg);
			RequestDispatcher rd = request.getRequestDispatcher(FailureUrl); //订购失败跳转页
			rd.forward(request, response);
		}
		
		logger.debug("=====OrderResponse end ========");
	}

	/**
	 * 封装订购明细对象
	 * @param description
	 * @param userID
	 * @param contentID
	 * @param serviceID
	 * @param productID
	 * @param productName
	 * @param purchaseType
	 * @param fee
	 * @param sPID
	 * @param transactionID
	 * @param expiredTime
	 * @param orderMode
	 * @param availableIPTVRewardPoints
	 * @param availableTeleRewardPoints
	 * @param serStartTime
	 * @param serEndTime
	 * @param channelId
	 * @return
	 */
	private OrderDetail buildOrderDetail(String description, String userID,
			String contentID, String serviceID, String productID,
			String productName, String purchaseType, String fee, String sPID,
			String transactionID, String expiredTime, String orderMode,
			String availableIPTVRewardPoints, String availableTeleRewardPoints,
			String serStartTime, String serEndTime,String channelId) {
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
		orderDetail.setChannelid(channelId);
	
		return orderDetail;
		
	}
	
	/**
	 * 根据错误代码，提示前端页面错误信息
	 * @param result 结果代码
	 * @param index_url
	 * @return
	 */
	private String buildReturnMsg(String result,String index_url) {
		String returnMsg = "";
		if( result != null){
			result = result.trim();
		}
		if("33751041".equals(result)){
//			returnMsg= "订购失败，";
		}
		else if("33816579".equals(result)){
			returnMsg= "只支持取消自动续订，";
		}
		else if("33816580".equals(result)){
			returnMsg= "无订购记录，";
		}
		else if("67242120".equals(result)){
			returnMsg= "内容不存在，";
		}
		else if("67242121".equals(result)){
			returnMsg= "验证码为空或输入错误，";
		}
		else if("100".equals(result)){
			returnMsg= "缺省错误码，";
		}
		else if("101".equals(result)){
			returnMsg="扩展信息解析错误，";
		}
		else if("102".equals(result)){
			returnMsg= "自动续订标志错误，";
		}
		else if("103".equals(result)){
			returnMsg= "产品不存在或产品未激活，";
		}
		else if("104".equals(result)){
			returnMsg= "产品已订购，";
		}
		else if("105".equals(result)){
			returnMsg= "影片价格未定义，";
		}
		else if("106".equals(result)){
			returnMsg= "余额已不足,请及时充值，";
		}
		else if("107".equals(result)){
			returnMsg= "扣费处理失败,请稍候再试，";
		}
		else if("108".equals(result)){
			returnMsg= "订购级别不够，";
		}
		else if("109".equals(result)){
			returnMsg= "内容不存在，";
		}
		else if("201".equals(result)){
			returnMsg= "用户未订购此产品或该产品已被取消订购，";
		}
		else if("202".equals(result)){
			returnMsg= "该用户不支持在线订购，";
		}
		else if("203".equals(result)){
			returnMsg= "产品将下线，不支持订购，";
		}
		else if("204".equals(result)){
			returnMsg= "包月产品不允许订购/退订基本包产品，";
		}
		else if("205".equals(result)){
			returnMsg= "订购结束时间不能小于系统当前时间，";
		}
		else if("206".equals(result)){
			returnMsg= "业务类型不存在，";
		}
		else if("207".equals(result)){
			returnMsg= "内容类型不存在，";
		}
		else if("208".equals(result)){
			returnMsg= "订购/退订处理失败（数据库异常），";
		}
		else if("209".equals(result)){
			returnMsg= "政企用户不允许订购按次产品，";
		}
		else if("210".equals(result)){
			returnMsg= "用户IPTV积分点数不够，";
		}
		else if("211".equals(result)){
			returnMsg= "产品不支持IPTV积分订购，";
		}
		else if("212".equals(result)){
			returnMsg= "IPTV积分订购处理失败，";
		}
		else if("213".equals(result)){
			returnMsg= "不允许退订IPTV积分订购的产品，";
		}
		else if("215".equals(result)){
			returnMsg= "不允许用IPTV积分续订产品，";
		}
		else if("220".equals(result)){
			returnMsg= "用户电信积分点数不够，";
		}
		else if("221".equals(result)){
			returnMsg= "产品不支持电信积分订购，";
		}
		else if("222".equals(result)){
			returnMsg= "电信积分订购处理失败，";
		}
		else if("223".equals(result)){
			returnMsg= "不允许退订电信积分订购的产品，";
		}
		else if("225".equals(result)){
			returnMsg= "不允许用电信积分续订产品，";
		}
		else if("400".equals(result)){
			returnMsg= "BSS并发数超出访问限制，";
		}
		
		returnMsg = "订购失败，"+returnMsg+"<a href='"+index_url+"' style='color:#FF9900'>返回首页</a>";
		
		return returnMsg;
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
