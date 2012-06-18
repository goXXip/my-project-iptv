package com.netitv.web.manager;

import java.util.Date;

import com.netitv.domain.OrderDetail;
import com.netitv.service.OrderDetailService;
import com.netitv.util.BaseAction;
import com.netitv.util.BeanFactory;

public class OrderDetailAction  extends BaseAction<OrderDetail> {

	private static final long serialVersionUID = 4763672863824468588L;
	
	private String userID;
	private String contentID;
	private String productID;
	private String productName;
	
	private Date startTime;
	private Date endTime;
	
	
	public String list(){
		
		OrderDetailService orderDetailService = (OrderDetailService) BeanFactory.getBeanByName("orderDetailService");
		
		this.pageBean = orderDetailService.findByPage(userID,contentID,productID,productName,startTime,endTime,pageSize, curPage);
	
		return "list";
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getContentID() {
		return contentID;
	}

	public void setContentID(String contentID) {
		this.contentID = contentID;
	}

	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

}
