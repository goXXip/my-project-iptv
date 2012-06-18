package com.netitv.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.netitv.dao.ColumnDao;
import com.netitv.domain.Column;

public class ColumnDaoImpl  extends JdbcDaoSupport  implements ColumnDao{

	public Column findById(int id) {
		// TODO Auto-generated method stub
		String sql = "select * from columninfo where id = ? ";

		List list = this.getJdbcTemplate().query(sql, new Object[]{id},new ColumnMapper());

		if (list.isEmpty())
			return null;
		return (Column) list.get(0);
	}
	
	protected class ColumnMapper implements RowMapper {
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			
			Column column = new Column();
			column.setChannelId(rs.getInt("channelid"));
			column.setId(rs.getInt("id"));
			column.setName(rs.getString("name"));
			return column;
		}
	}

	public int delete(int id) {
		// TODO Auto-generated method stub
		String sql = "delete from  columninfo where id = ?";
		this.getJdbcTemplate().update(sql, new Object[] { id });
		return 1;
	}

	public int save(Column column) {
		// TODO Auto-generated method stub
		if(column == null )
			return 0;
		
		String sql = "insert columninfo(name,channelid) values(?,?)";
		
		this.getJdbcTemplate().update(sql, new Object[]{column.getName(),column.getChannelId()});
		
		return 1 ;
	}

	public int update(Column column) {
		// TODO Auto-generated method stub
		String sql = "update columninfo set name =?,channelid=? where id = ?";
		
		this.getJdbcTemplate().update(sql, new Object[]{column.getName(),column.getChannelId(),column.getId()});
		
		return 1 ;
	}

	public List getRows(Integer pageSize, Integer curPage, String channelId,
			String name) {
		// TODO Auto-generated method stub
		if( channelId != null && !"".equals(channelId)){
			String sql = " select columninfo.* from columninfo,channel where columninfo.channelid = channel.id and columninfo.channelid=?  order by columninfo.id desc limit "
				+ (curPage - 1) * pageSize + "," + pageSize;
			
			List list = this.getJdbcTemplate().query(sql,new Object[]{channelId}, new ColumnMapper());

			return list;
		}else{
			String  sql =  " select * from columninfo  order by id desc limit "+ (curPage - 1) * pageSize + "," + pageSize;

			List list = this.getJdbcTemplate().query(sql, new ColumnMapper());

			return list;
		}
	}

	public int getTotalRowsCount(String channelId, String name) {
		// TODO Auto-generated method stub
		if(channelId!= null && !"".equals(channelId)){
			
			String  sql = " select count(*) from columninfo,channel where columninfo.channelid = channel.id and columninfo.channelid=?  ";

			return this.getJdbcTemplate().queryForInt(sql,new Object[]{channelId});
			
		}else{
			String sql = "select count(*) from columninfo  ";

			return this.getJdbcTemplate().queryForInt(sql);
		}
	}

}
