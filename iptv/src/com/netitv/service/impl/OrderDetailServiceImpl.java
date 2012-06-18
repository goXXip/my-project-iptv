package com.netitv.service.impl;

import java.util.Date;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import com.netitv.cache.AbstractCacheProxy;
import com.netitv.dao.OrderDetailDao;
import com.netitv.domain.OrderDetail;
import com.netitv.service.OrderDetailService;
import com.netitv.util.PageBean;

@SuppressWarnings("unchecked")
public class OrderDetailServiceImpl   extends AbstractCacheProxy implements OrderDetailService {
	
	private OrderDetailDao orderDetailDao;
	private static final String OrderDetail_CACHE_KEY = "orderDetail";
	
	public OrderDetailServiceImpl() {
		super(OrderDetail_CACHE_KEY);
	}


	public void setOrderDetailDao(OrderDetailDao orderDetailDao) {
		this.orderDetailDao = orderDetailDao;
	}

	private int save(OrderDetail orderDetail) {
		// TODO Auto-generated method stub
		return orderDetailDao.save(orderDetail);
	}
	
	
	// 构造一个线程池
	ThreadPoolExecutor threadPool = new ThreadPoolExecutor(4,10, 3,
			TimeUnit.SECONDS, new ArrayBlockingQueue<Runnable>(5),
			new ThreadPoolExecutor.DiscardOldestPolicy());
	
	public int saveOrderDetail(OrderDetail orderDetail){
		
		threadPool.execute(new Task(orderDetail));
		
		return 1;
	}
	
	class Task implements Runnable{
		
		private OrderDetail orderDetail;

		public Task(OrderDetail orderDetail) {
			super();
			this.orderDetail = orderDetail;
		}

		public void run() {
			save(orderDetail);
		}
	}

	
	public PageBean findByPage(int pageSize, int curPage) {
		// TODO Auto-generated method stub
		List items = orderDetailDao.getRows(pageSize, curPage);
		
		int rowsCount = orderDetailDao.getTotalRowsCount();
		
		PageBean pb = new PageBean(items, rowsCount, pageSize, curPage);
		return pb;
	}

	public PageBean findByPage(String userID, String contentID,
			String productID, String productName, Date startTime, Date endTime,
			Integer pageSize, Integer curPage) {
		// TODO Auto-generated method stub
		List items = orderDetailDao.getRows(userID,contentID,productID,productName,startTime,endTime,pageSize, curPage);
		
		int rowsCount = orderDetailDao.getTotalRowsCount(userID,contentID,productID,productName,startTime,endTime);
		
		PageBean pb = new PageBean(items, rowsCount, pageSize, curPage);
		return pb;
	}

	/**
	 * 由用户ID及产品ID查找订单详情
	 * @param userID 用户ID
	 * @param contentID 产品ID
	 * @return 返回订单详情,null：表示未订购
	 */
	public OrderDetail findByContentIdAndUserId(String userID, String contentID) {
		// TODO Auto-generated method stub
		Object orderDetail  =  this.cache.get(OrderDetail_CACHE_KEY+"_"+userID+"_"+contentID);
		if( orderDetail == null ){
			orderDetail = orderDetailDao.findByContentIdAndUserId(userID, contentID);
			OrderDetail o = (OrderDetail) orderDetail;
			
			this.cache.put(OrderDetail_CACHE_KEY+"_"+userID+"_"+contentID,o);
		}
		
		return (OrderDetail)orderDetail;
	}

}
