package com.netitv.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.netitv.dao.ChannelDao;
import com.netitv.domain.Channel;

public class ChannelDaoImpl  extends JdbcDaoSupport implements ChannelDao {
	
	private static Map<Integer,Channel> channelMap = new ConcurrentHashMap<Integer,Channel>();

	@SuppressWarnings("unchecked")
	public Channel findById(int id) {
		if(channelMap.containsKey(id)){
			return channelMap.get(id);
		}
		String sql = "select * from channel where id = ? ";

		List list = this.getJdbcTemplate().query(sql, new Object[]{id},new ChannelMapper());

		if (list.isEmpty())
			return null;
		Channel channel = (Channel) list.get(0);
		channelMap.put(channel.getId(), channel);
		return channel;
	}
	
	protected class ChannelMapper implements RowMapper {
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			
			Channel channel = new Channel();
			channel.setId(rs.getInt("id"));
			channel.setName(rs.getString("name"));
			channel.setServiceId(rs.getString("serviceid"));
			channel.setProductId(rs.getString("productid"));
			return channel;
		}
	}

	public int delete(int id) {
		String sql = "delete from  channel where id = ?";
		this.getJdbcTemplate().update(sql, new Object[] { id });
		findAll();
		return 1;
	}

	public int save(Channel channel) {
		if(channel == null )
			return 0;
		
		String sql = "insert channel(name,serviceid,productid) values(?,?,?)";
		
		this.getJdbcTemplate().update(sql, new Object[]{channel.getName(),channel.getServiceId(),channel.getProductId()});
		
		findAll();
		return 1 ;
	}

	public int update(Channel channel) {
		
		String sql = "update channel set name =?,serviceid=?,productid=? where id = ?";
		
		this.getJdbcTemplate().update(sql, new Object[]{channel.getName(),channel.getServiceId(),channel.getProductId(),channel.getId()});
		findAll();
		return 1 ;
	}

	@SuppressWarnings("unchecked")
	public List<Channel> findAll() {
		String sql = "select * from channel order by id desc ";

		List list = this.getJdbcTemplate().query(sql,new ChannelMapper());
		
		channelMap.clear();
		for (int i = 0; i < list.size(); i++) {
			Channel channel = (Channel) list.get(i);
			channelMap.put(channel.getId(), channel);
		}

		return list;
	}

}
