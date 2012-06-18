package com.netitv.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.netitv.dao.AssetDao;
import com.netitv.domain.Asset;

public class AssetDaoImpl  extends JdbcDaoSupport  implements AssetDao{

	public int delete(int id) {
		// TODO Auto-generated method stub
		String sql = "delete from  asset where id = ?";
		
		this.getJdbcTemplate().update(sql, new Object[]{id});
		
		return 1;
	}

	@SuppressWarnings("unchecked")
	public Asset findById(int id) {
		
		String sql = "select * from asset where id = ? ";
		
		List list = this.getJdbcTemplate().query(sql,new Object[]{id} ,new AssetMapper());
		
		if (list.isEmpty())
			return null;
		
		return (Asset) list.get(0);
	}

	public int save(Asset asset) {
		// TODO Auto-generated method stub
		String sql = "insert asset(name,fileid,filmid) values(?,?,?)";
		
		this.getJdbcTemplate().update(sql, new Object[]{asset.getName(),asset.getFileId(),
				asset.getFilmid()});
		
		return 1 ;
	}

	public int update(Asset asset) {
		// TODO Auto-generated method stub
		String sql = "update asset set name =? ,fileid = ?,filmid=? where id = ?";
		
		this.getJdbcTemplate().update(sql, new Object[]{asset.getName(),asset.getFileId(),
				asset.getFilmid(),asset.getId()});
		
		return 1 ;
	}
	
	protected class AssetMapper implements RowMapper {
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			Asset asset  = new Asset();
			asset.setId(rs.getInt("id"));
			asset.setName(rs.getString("name"));
			asset.setFileId(rs.getInt("fileid"));
			asset.setFilmid(rs.getInt("filmid"));
			return asset;
		}
	}

	public List<Asset> findAssetListByFilmId(int filmId) {
		// TODO Auto-generated method stub
		String sql = "select * from asset where filmid =? ";
		
		List list = this.getJdbcTemplate().query(sql, new Object[]{filmId}, new AssetMapper());
		
		return list;
	}

	public List getRows(int pageSize, int curPage, int filmId) {
		// TODO Auto-generated method stub
		String sql = "select * from asset where filmid = ? limit "
			+ (curPage - 1) * pageSize + "," + pageSize;

		List list = this.getJdbcTemplate().query(sql,new Object[]{filmId}, new AssetMapper());
	
		return list;
	}

	public int getTotalRowsCount(int filmId) {
		// TODO Auto-generated method stub
		String sql = "select count(*) from asset  where filmid = ?";

		return this.getJdbcTemplate().queryForInt(sql,new Object[]{filmId});
	}

}
