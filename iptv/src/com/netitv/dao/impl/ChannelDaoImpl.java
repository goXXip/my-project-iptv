package com.netitv.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.netitv.dao.ChannelDao;
import com.netitv.domain.Channel;

public class ChannelDaoImpl  extends JdbcDaoSupport implements ChannelDao {

	public Channel findById(int id) {
		// TODO Auto-generated method stub
		String sql = "select * from channel where id = ? ";

		List list = this.getJdbcTemplate().query(sql, new Object[]{id},new ChannelMapper());

		if (list.isEmpty())
			return null;
		return (Channel) list.get(0);
		
	}
	
	protected class ChannelMapper implements RowMapper {
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			
			Channel channel = new Channel();
			channel.setId(rs.getInt("id"));
			channel.setName(rs.getString("name"));
			return channel;
		}
	}

	public int delete(int id) {
		// TODO Auto-generated method stub
		String sql = "delete from  channel where id = ?";
		this.getJdbcTemplate().update(sql, new Object[] { id });
		return 1;
	}

	public int save(Channel channel) {
		if(channel == null )
			return 0;
		
		String sql = "insert channel(name) values(?)";
		
		this.getJdbcTemplate().update(sql, new Object[]{channel.getName()});
		
		return 1 ;
	}

	public int update(Channel channel) {
		
		String sql = "update channel set name =? where id = ?";
		
		this.getJdbcTemplate().update(sql, new Object[]{channel.getName(),channel.getId()});
		
		return 1 ;
	}

	public List<Channel> findAll() {
		// TODO Auto-generated method stub
		String sql = "select * from channel order by id desc ";

		List list = this.getJdbcTemplate().query(sql,new ChannelMapper());

		return list;
	}

}
