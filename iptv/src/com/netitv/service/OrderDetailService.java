package com.netitv.service;

import java.util.Date;

import com.netitv.domain.OrderDetail;
import com.netitv.util.PageBean;

public interface OrderDetailService {
	
	/**
	 *@Todo:保存订购详细信息
	 *@author:朱庆辉
	 *@CreateTime:2012-4-10 上午08:48:51
	 * @param orderDetail
	 * @return
	 */
	public int saveOrderDetail(OrderDetail orderDetail);

	/**
	 *@Todo:分页查询订购信息
	 *@author:朱庆辉
	 *@CreateTime:2012-4-10 上午08:49:08
	 * @param pageSize
	 * @param curPage
	 * @return
	 */
	public PageBean findByPage(int pageSize, int curPage);

	/**
	 *@Todo:多条件分页查询
	 *@author:朱庆辉
	 *@CreateTime:2012-4-11 上午09:32:14
	 * @param userID 用户ID
	 * @param contentID  视频内容ID
	 * @param productID  产品ID
	 * @param productName  产品名称
	 * @param startTime  订购日期(起始)
	 * @param endTime    订购日期(截止)
	 * @param pageSize   每页大小
	 * @param curPage   当前页码
	 * @return
	 */
	public PageBean findByPage(String userID, String contentID,
			String productID, String productName, Date startTime, Date endTime,
			Integer pageSize, Integer curPage);
	
	/**
	 * 由用户ID及产品ID查找订单详情
	 * @param userID 用户ID
	 * @param contentID 内容ID
	 * @return 返回订单详情,null：表示未订购
	 */
	public OrderDetail findByContentIdAndUserId(String userID,String contentID);

}
