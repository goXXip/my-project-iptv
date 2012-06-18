package com.netitv.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.AbstractLobCreatingPreparedStatementCallback;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.jdbc.support.lob.DefaultLobHandler;
import org.springframework.jdbc.support.lob.LobCreator;
import org.springframework.jdbc.support.lob.LobHandler;

import com.netitv.dao.ImageInfoDao;
import com.netitv.domain.ImageInfo;

public class ImageInfoDaoImpl extends JdbcDaoSupport implements ImageInfoDao {

	final LobHandler lobHandler = new DefaultLobHandler();

	public int delete(int id) {
		// TODO Auto-generated method stub
		String sql = "delete from  image_info where id = ?";

		this.getJdbcTemplate().update(sql, new Object[] { id });

		return 1;
	}

	public ImageInfo findById(int id) {
		// TODO Auto-generated method stub
		String sql = "select id,name,suffix,content from  image_info where id = ?";
		List list = this.getJdbcTemplate().query(sql, new Object[] { id }, new ImageinfoMapper());

		if(list.isEmpty())
			return null;
		
		return (ImageInfo)list.get(0);
	}

	public ImageInfo save(final ImageInfo imageInfo) {
		// TODO Auto-generated method stub
		String sql = " INSERT INTO image_info(name,suffix,content)VALUES(?,?,?)";
		this.getJdbcTemplate().execute(sql,
				new AbstractLobCreatingPreparedStatementCallback(lobHandler) {
					protected void setValues(PreparedStatement ps,
							LobCreator lobCreator) throws SQLException {
						ps.setString(1, imageInfo.getName());
						ps.setString(2, imageInfo.getSuffix());
						lobCreator.setBlobAsBytes(ps, 3, imageInfo.getBlob());
					}
				});
		
		String sql1 = "select id from image_info order by id desc limit 0,1 ";
		int id = this.getJdbcTemplate().queryForInt(sql1);
		imageInfo.setId(id);
		
		return imageInfo;
	}

	public int update(final ImageInfo imageInfo) {
		// TODO Auto-generated method stub
		String sql = " update image_info set name=?,suffix=?,content= ? where id = ?";
		getJdbcTemplate().execute(sql,
				new AbstractLobCreatingPreparedStatementCallback(lobHandler) {
					protected void setValues(PreparedStatement ps,
							LobCreator lobCreator) throws SQLException {
						ps.setString(1, imageInfo.getName());
						ps.setString(2, imageInfo.getSuffix());
						lobCreator.setBlobAsBytes(ps, 3, imageInfo.getBlob());
						ps.setInt(4, imageInfo.getId());
					}
				});

		return 1;
	}

	protected class ImageinfoMapper implements RowMapper {
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			ImageInfo imageinfo = new ImageInfo();
			int postId = rs.getInt("id");
			String name = rs.getString("name");
			String suffix = rs.getString("suffix");
			byte[] attach = lobHandler.getBlobAsBytes(rs,"content");
			imageinfo.setId(postId);
			imageinfo.setBlob(attach);
			imageinfo.setName(name);
			imageinfo.setSuffix(suffix);
			return imageinfo;
		}
	}

}
