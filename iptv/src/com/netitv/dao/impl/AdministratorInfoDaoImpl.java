package com.netitv.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.netitv.dao.AdministratorInfoDao;
import com.netitv.domain.AdministratorInfo;

public class AdministratorInfoDaoImpl extends JdbcDaoSupport implements AdministratorInfoDao{

	public List<AdministratorInfo> findByName(String username) {
		// TODO Auto-generated method stub
		String sql = "select * from administrator where username = ?";
		
		List list = this.getJdbcTemplate().query(sql, new Object[]{username},new AdministratorInfoMapper());
		
		return list;
	}
	
	protected class AdministratorInfoMapper implements RowMapper {
		public AdministratorInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
			AdministratorInfo administratorInfo  = new AdministratorInfo();
			administratorInfo.setId(rs.getInt("id"));
			administratorInfo.setUsername(rs.getString("username"));
			administratorInfo.setPassword(rs.getString("password"));
			administratorInfo.setDisable(rs.getString("disable"));
			return administratorInfo;
		}
	}

}
