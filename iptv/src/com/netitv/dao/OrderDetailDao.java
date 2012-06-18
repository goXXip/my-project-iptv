package com.netitv.dao;

import java.util.Date;
import java.util.List;

import com.netitv.domain.OrderDetail;

public interface OrderDetailDao {

	public int save(OrderDetail orderDetail);

	public List<OrderDetail> getRows(int pageSize, int curPage);

	public int getTotalRowsCount();

	/**
	 *@Todo:多条件查询记录结果集
	 *@author:朱庆辉
	 *@CreateTime:2012-4-11 上午09:35:40
	 * @param userID 用户ID
	 * @param contentID  视频内容ID
	 * @param productID  产品ID
	 * @param productName 产品名称
	 * @param startTime 订购日期(起始)
	 * @param endTime 订购日期(截止)
	 * @param pageSize 每页大小
	 * @param curPage  当前页码
	 * @return
	 */
	public List<OrderDetail> getRows(String userID, String contentID, String productID,
			String productName, Date startTime, Date endTime, Integer pageSize,
			Integer curPage);

	/**
	 *@Todo:多条件查询记录条数
	 *@author:朱庆辉
	 *@CreateTime:2012-4-11 上午09:35:40
	 * @param userID 用户ID
	 * @param contentID  视频内容ID
	 * @param productID  产品ID
	 * @param productName 产品名称
	 * @param startTime 订购日期(起始)
	 * @param endTime 订购日期(截止)
	 * @param pageSize 每页大小
	 * @param curPage  当前页码
	 * @return
	 */
	public int getTotalRowsCount(String userID, String contentID,
			String productID, String productName, Date startTime, Date endTime);

	/**
	 * 由用户ID及产品ID查找订单详情
	 * @param userID 用户ID
	 * @param contentID 内容ID
	 * @return null：表示未订购，反之返回订单详情
	 */
	public OrderDetail findByContentIdAndUserId(String userID, String contentID);

}
