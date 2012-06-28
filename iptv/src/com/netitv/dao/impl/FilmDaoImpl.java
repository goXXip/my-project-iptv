package com.netitv.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.AbstractLobCreatingPreparedStatementCallback;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.jdbc.support.lob.DefaultLobHandler;
import org.springframework.jdbc.support.lob.LobCreator;
import org.springframework.jdbc.support.lob.LobHandler;

import com.netitv.dao.AssetDao;
import com.netitv.dao.FilmDao;
import com.netitv.dao.ImageInfoDao;
import com.netitv.domain.Asset;
import com.netitv.domain.Channel;
import com.netitv.domain.Column;
import com.netitv.domain.Film;
import com.netitv.domain.ImageInfo;

public class FilmDaoImpl extends JdbcDaoSupport implements FilmDao {
	
	final LobHandler lobHandler = new DefaultLobHandler();

	private ImageInfoDao imageInfoDao;
	private AssetDao assetDao;

	public int delete(int id) {
		
		// TODO Auto-generated method stub
		Film film = findById(id);
		if( film != null){
			String sql2 = "delete from image_info where id=?";
			if(film.getSmallImage()!= null){
				int smallId = film.getSmallImage().getId();
				this.getJdbcTemplate().update(sql2, new Object[] { smallId });
			}
			
			if( film.getBigImage() != null ){
				int bigId  = film.getBigImage().getId();
				this.getJdbcTemplate().update(sql2, new Object[] { bigId });
			}
		}
		
		String sql = "delete from  film where id = ?";
		this.getJdbcTemplate().update(sql, new Object[] { id });
		
		String sql1 = "delete from  asset where filmid = ?";
		this.getJdbcTemplate().update(sql1, new Object[] { id });

		return 1;
	}

	/**
	 * 根据ID查找影片
	 */
	@SuppressWarnings("unchecked")
	public Film findById(int id) {

		String sql = "select * from film where id = ? ";

		List list = this.getJdbcTemplate().query(sql, new Object[]{id},new FilmMapper());

		if (list.isEmpty())
			return null;
		return (Film) list.get(0);
	}

	/**
	 * 保存影片
	 */
	public int save(final Film film) {
		// TODO Auto-generated method stub
		String sql = "insert film (serial_count,name,description,audient,price,period,upload_date,small_image,big_image,columnid,contentid,actor,istop,modify_date,small_image_hd,big_image_hd) " +
				" values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		final Integer smallImg_id =  film.getSmallImage() == null ? null:film.getSmallImage().getId();
		final Integer bigImg_id =  film.getBigImage() == null ? null:film.getBigImage().getId();
		final Integer smallImg_hd__id =  film.getSmallImage_HD() == null ? null:film.getSmallImage_HD().getId();
		final Integer bigImg_hd__id =  film.getBigImage_HD() == null ? null:film.getBigImage_HD().getId();
		
		this.getJdbcTemplate().execute(sql,
				new AbstractLobCreatingPreparedStatementCallback(lobHandler) {
					protected void setValues(PreparedStatement ps,
							LobCreator lobCreator) throws SQLException {
						ps.setInt(1, film.getSerialCount());
						ps.setString(2,  film.getName());
						ps.setString(3, film.getDescription());
						ps.setString(4, film.getAudient());
						ps.setString(5, film.getPrice());
						ps.setString(6, film.getPeriod());
						ps.setString(7, dateToString(film.getUploadDate()));
						ps.setObject(8, smallImg_id);
						ps.setObject(9, bigImg_id);
						ps.setObject(10, film.getColumnId());
						ps.setObject(11, film.getContentId());
						ps.setString(12, film.getActor());
						ps.setString(13, film.getIstop());
						ps.setString(14,dateToString(film.getModifyDate()));
						ps.setObject(15, smallImg_hd__id);
						ps.setObject(16, bigImg_hd__id);
					}
				});

		return 1;
	}

	/**
	 * 更新影片
	 */
	public int update(final Film film) {
		// TODO Auto-generated method stub
		String sql = "update film set serial_count=?,name=?,description=?,audient=?,price=?,period=?,upload_date=?,small_image=?,big_image=?,columnid=?," +
				" contentid=?,actor = ?,istop=?,modify_date=?,small_image_hd=?,big_image_hd=? where id =?";

		final Integer bigImg_id =  film.getBigImage() == null ? null:film.getBigImage().getId();
		final Integer smallImg_id =  film.getSmallImage() == null ? null:film.getSmallImage().getId();
		final Integer smallImg_hd__id =  film.getSmallImage_HD() == null ? null:film.getSmallImage_HD().getId();
		final Integer bigImg_hd__id =  film.getBigImage_HD() == null ? null:film.getBigImage_HD().getId();
		
		this.getJdbcTemplate().execute(sql,
				new AbstractLobCreatingPreparedStatementCallback(lobHandler) {
					protected void setValues(PreparedStatement ps,
							LobCreator lobCreator) throws SQLException {
						ps.setInt(1, film.getSerialCount());
						ps.setString(2,  film.getName());
						ps.setString(3, film.getDescription());
						ps.setString(4, film.getAudient());
						ps.setString(5, film.getPrice());
						ps.setString(6, film.getPeriod());
						ps.setString(7, dateToString(film.getUploadDate()));
						ps.setObject(8, smallImg_id);
						ps.setObject(9, bigImg_id);
						ps.setObject(10, film.getColumnId());
						ps.setObject(11, film.getContentId());
						ps.setString(12, film.getActor());
						ps.setString(13, film.getIstop());
						ps.setString(14, dateToString(film.getModifyDate()));
						ps.setObject(15, smallImg_hd__id);
						ps.setObject(16, bigImg_hd__id);
						ps.setInt(17, film.getId());
					}
				});

		return 1;
	}
	
	public static String dateToString(Date date) {
		if(date == null) return "";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return simpleDateFormat.format(date);
	}

	/**
	 * 查询结果集(影片)
	 * @param channelSelect 频道编号 
	 */
	@SuppressWarnings("unchecked")
	public List<Film> getRows(int pageSize, int curPage, String channelSelect) {
		
		if(channelSelect!= null && !"".equals(channelSelect)){
			String sql = " select film.* from film,columninfo where film.columnid = columninfo.id and columninfo.channelid=?  order by istop desc,modify_date desc limit "
				+ (curPage - 1) * pageSize + "," + pageSize;
			
			List list = this.getJdbcTemplate().query(sql,new Object[]{channelSelect}, new FilmMapper());

			return list;
		}else{
			String  sql =  " select * from film  order by istop desc,modify_date desc limit "+ (curPage - 1) * pageSize + "," + pageSize;

			List list = this.getJdbcTemplate().query(sql, new FilmMapper());

			return list;
		}
	}

	/**
	 * 查询记录总条数
	 * @param channelSelect 频道编号 
	 */
	public int getTotalRowsCount(String channelSelect) {
		// TODO Auto-generated method stub
		if(channelSelect!= null && !"".equals(channelSelect)){
			String  sql = " select count(*) from film,columninfo where film.columnid = columninfo.id and columninfo.channelid=?";

			return this.getJdbcTemplate().queryForInt(sql,new Object[]{channelSelect});
		}else{
			String sql = "select count(*) from film";

			return this.getJdbcTemplate().queryForInt(sql);
		}
		
	}

	protected class FilmMapper implements RowMapper {
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			Film film = new Film();
			film.setId(rs.getInt("id"));
			film.setAudient(rs.getString("audient"));
			film.setActor(rs.getString("actor"));
			film.setDescription(rs.getString("description"));
			film.setName(rs.getString("name"));
			film.setPeriod(rs.getString("period"));
			film.setPrice(rs.getString("price"));
			film.setSerialCount(rs.getInt("serial_count"));
			int big_image = rs.getInt("big_image");
			int small_image = rs.getInt("small_image");
			int big_image_hd = rs.getInt("big_image_hd");
			int small_image_hd = rs.getInt("small_image_hd");
			film.setUploadDate(rs.getTimestamp("upload_date"));
			film.setColumnId(rs.getInt("columnid"));
			film.setContentId(rs.getString("contentid"));
			film.setIstop(rs.getString("istop"));
			film.setModifyDate(rs.getTimestamp("modify_date"));
			ImageInfo bigImageinfo = imageInfoDao.findById(big_image);
			ImageInfo smallImageinfo = imageInfoDao.findById(small_image);
			film.setBigImage(bigImageinfo);
			film.setSmallImage(smallImageinfo);
			ImageInfo bigImageHD = imageInfoDao.findById(big_image_hd);
			ImageInfo smallImageHD = imageInfoDao.findById(small_image_hd);
			film.setBigImage_HD(bigImageHD);
			film.setSmallImage_HD(smallImageHD);
			List<Asset> assetList = assetDao.findAssetListByFilmId(film.getId());
			film.setAssetList(assetList);
			return film;
		}
	}

	public void setImageInfoDao(ImageInfoDao imageInfoDao) {
		this.imageInfoDao = imageInfoDao;
	}

	public void setAssetDao(AssetDao assetDao) {
		this.assetDao = assetDao;
	}
	

	@SuppressWarnings("unchecked")
	public List<Column> findColumnsByChannelId(Integer channelID) {
		// TODO Auto-generated method stub
		String sql= "select * from columninfo where channelid=?";
		List list  = this.getJdbcTemplate().queryForList(sql,new Object[]{channelID});
		
		if(!list.isEmpty()){
			List<Column> returnList = new ArrayList<Column>();
			for (int j = 0; j < list.size(); j++) {
				Map map = (Map) list.get(j);
				Column column = new Column();
				column.setId((Integer)map.get("id"));
				column.setName((String)map.get("name"));
				column.setChannelId((Integer)map.get("channelid"));
				returnList.add(column);
			}
			
			return returnList;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Channel> listAllChannel() {
		// TODO Auto-generated method stub
		String sql= "select * from channel";
		List list  = this.getJdbcTemplate().queryForList(sql);
		
		if(!list.isEmpty()){
			List<Channel> returnList = new ArrayList<Channel>();
			for (int j = 0; j < list.size(); j++) {
				Map map = (Map) list.get(j);
				Channel channel = new Channel();
				channel.setId((Integer)map.get("id"));
				channel.setName((String)map.get("name"));
				returnList.add(channel);
			}
			
			return returnList;
		}
		
		return null;
	}

	/**
	 * 查询栏目下影片集合
	 * @param columnid栏目编号
	 */
	@SuppressWarnings("unchecked")
	public List<Film> getRows(int pageSize, int curPage, int columnid) {
		// TODO Auto-generated method stub
		String sql = "select * from film where columnid= ? order by id desc limit "
			+ (curPage - 1) * pageSize + "," + pageSize;

		List list = this.getJdbcTemplate().query(sql,new Object[]{columnid}, new FilmMapper());
	
		return list;
	}

	/**
	 * 查询栏目下影片记录条数
	 * @param columnid栏目编号
	 */
	public int getTotalRowsCount(int columnid) {
		// TODO Auto-generated method stub
		String sql = "select count(*) from film  where columnid= ?";

		return this.getJdbcTemplate().queryForInt(sql,new Object[]{columnid});
	}

	/**
	 * 关联影片
	 */
	@SuppressWarnings("unchecked")
	public List<Film> listFilmByRand(int size,int columnID) {
		// TODO Auto-generated method stub
		String sql = "select * from film where columnid = ? order by rand() limit "+ size;

		List list = this.getJdbcTemplate().query(sql,new Object[]{columnID},new FilmMapper());
	
		return list;
	}

	@SuppressWarnings("unchecked")
	public Column findColumnByColumnid(int columnid) {
		// TODO Auto-generated method stub
		String sql= "select * from columninfo where id=?";
		List list  = this.getJdbcTemplate().queryForList(sql,new Object[]{columnid});
		
		if( list.size() > 0 ){
			for (int j = 0; j < list.size();j++) {
				Map map = (Map) list.get(j);
				Column column = new Column();
				column.setId((Integer)map.get("id"));
				column.setName((String)map.get("name"));
				column.setChannelId((Integer)map.get("channelid"));
				
				return column;
			}
		}
		return null;
	}
	
    /**
     * 置顶状态更新
     */
	public int updateTopStatus(int filmId, String flag) {
		// TODO Auto-generated method stub
		String sql = "update film set istop = ?,modify_date=? where id = ?";
		this.getJdbcTemplate().update(sql, new Object[] { flag ,Calendar.getInstance().getTime(),filmId });
		
		return 1;
	}

}
