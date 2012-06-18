package com.netitv.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.ArrayUtils;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.netitv.dao.OrderDetailDao;
import com.netitv.domain.OrderDetail;

public class OrderDetailDaoImpl  extends JdbcDaoSupport implements OrderDetailDao {

	@SuppressWarnings("unchecked")
	public List<OrderDetail> getRows(int pageSize, int curPage) {
		// TODO Auto-generated method stub
		String  sql =  " select * from orderdetail  order by id desc limit "+ (curPage - 1) * pageSize + "," + pageSize;

		List list = this.getJdbcTemplate().query(sql, new OrderDetailMapper());

		return list;
	}

	public int getTotalRowsCount() {
		// TODO Auto-generated method stub
		String sql = "select count(*) from orderdetail  ";

		return this.getJdbcTemplate().queryForInt(sql);
	}

	public int save(OrderDetail orderDetail) {
		// TODO Auto-generated method stub
		String sql = "insert into orderdetail(available_iptvrewardpoints,available_teleRewardpoints,contentid,description,expired_time,fee,ordermode," +
				" productid,productname,purchasetype,serendtime,serstarttime,serviceid,spid,transaction_id,userid,status,createtime) " +
				"values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		this.getJdbcTemplate().update(sql, new Object[]{orderDetail.getAvailable_iptvrewardpoints(),orderDetail.getAvailable_teleRewardpoints(),orderDetail.getContentid(),orderDetail.getDescription()
				,orderDetail.getExpired_time(),orderDetail.getFee(),orderDetail.getOrdermode(),orderDetail.getProductid(),orderDetail.getProductname(),orderDetail.getPurchasetype(),
				orderDetail.getSerendtime(),orderDetail.getSerstarttime(),orderDetail.getServiceid(),
				orderDetail.getSpid(),orderDetail.getTransaction_id(),orderDetail.getUserid(),orderDetail.getStatus(),orderDetail.getCreatetime()});

		return 1;
	}
	
	
	protected class OrderDetailMapper implements RowMapper {
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setId(rs.getInt("id"));
			orderDetail.setAvailable_iptvrewardpoints(rs.getString("available_iptvrewardpoints"));
			orderDetail.setAvailable_teleRewardpoints(rs.getString("available_teleRewardpoints"));
			orderDetail.setContentid(rs.getString("contentid"));
			orderDetail.setCreatetime(rs.getDate("createtime"));
			orderDetail.setDescription(rs.getString("description"));
			orderDetail.setExpired_time(rs.getString("expired_time"));
			orderDetail.setFee(rs.getString("fee"));
			orderDetail.setOrdermode(rs.getString("ordermode"));
			orderDetail.setProductid(rs.getString("productid"));
			orderDetail.setProductname(rs.getString("productname"));
			orderDetail.setPurchasetype(rs.getString("purchasetype"));
			orderDetail.setSerstarttime(rs.getString("serstarttime"));
			orderDetail.setSerendtime(rs.getString("serendtime"));
			orderDetail.setServiceid(rs.getString("serviceid"));
			orderDetail.setSpid(rs.getString("spid"));
			orderDetail.setStatus(rs.getString("status"));
			orderDetail.setTransaction_id(rs.getString("transaction_id"));
			orderDetail.setUserid(rs.getString("userid"));
			return orderDetail;
		}
	}


	public List<OrderDetail> getRows(String userID, String contentID,
			String productID, String productName, Date startTime, Date endTime,
			Integer pageSize, Integer curPage) {
		// TODO Auto-generated method stub
		
		String  sql =  " select * from orderdetail where 1=1 ";
		
		Object[] arrays = new Object[0];
		
		if(userID != null && !"".equals(userID)){
			sql += " and userID = ? ";
			arrays = ArrayUtils.add(arrays, userID);
		}
		
		if(contentID != null && !"".equals(contentID)){
			sql += " and contentID = ? ";
			arrays = ArrayUtils.add(arrays, contentID);
		}
		
		if(productID != null && !"".equals(productID)){
			sql += " and productID = ? ";
			arrays = ArrayUtils.add(arrays, productID);
		}
		
		if(productName != null && !"".equals(productName)){
			sql += " and productName like ? ";
			arrays = ArrayUtils.add(arrays, "%"+productName+"%");
		}
		
		if(startTime != null){
			sql += " and createtime >= ? ";
			arrays = ArrayUtils.add(arrays, startTime);
		}
		
		if(endTime != null){
			sql += " and createtime < ? ";
			arrays = ArrayUtils.add(arrays, endTime);
		}
		
		sql += " order by id desc limit "+ (curPage - 1) * pageSize + "," + pageSize;

		List list = this.getJdbcTemplate().query(sql,arrays, new OrderDetailMapper());

		return list;
	}

	public int getTotalRowsCount(String userID, String contentID,
			String productID, String productName, Date startTime, Date endTime) {
		// TODO Auto-generated method stub
		String sql = "select count(*) from orderdetail  where 1=1 ";
		
		Object[] arrays = new Object[0];
		
		if(userID != null && !"".equals(userID)){
			sql += " and userID = ? ";
			arrays = ArrayUtils.add(arrays, userID);
		}
		
		if(contentID != null && !"".equals(contentID)){
			sql += " and contentID = ? ";
			arrays = ArrayUtils.add(arrays, contentID);
		}
		
		if(productID != null && !"".equals(productID)){
			sql += " and productID = ? ";
			arrays = ArrayUtils.add(arrays, productID);
		}
		
		if(productName != null && !"".equals(productName)){
			sql += " and productName like ? ";
			arrays = ArrayUtils.add(arrays, "%"+productName+"%");
		}
		
		if(startTime != null){
			sql += " and createtime >= ? ";
			arrays = ArrayUtils.add(arrays, startTime);
		}
		
		if(endTime != null){
			sql += " and createtime < ? ";
			arrays = ArrayUtils.add(arrays, endTime);
		}

		return this.getJdbcTemplate().queryForInt(sql,arrays);
	}

	/**
	 * 由用户ID及产品ID查找订单详情
	 * @param userID 用户ID
	 * @param contentID 内容ID
	 * @return null：表示未订购，反之返回订单详情
	 */
	public OrderDetail findByContentIdAndUserId(String userID, String contentID) {
		// TODO Auto-generated method stub
		String  sql =  " select * from orderdetail where userid = ? and contentid = ?  order by id desc ";

		List list = this.getJdbcTemplate().query(sql, new Object[]{userID,contentID}, new OrderDetailMapper());

		if(list != null && list.size()>0){
			OrderDetail orderDetail = (OrderDetail) list.get(0);
			return orderDetail;
		}
		
		return null;
	}

}
