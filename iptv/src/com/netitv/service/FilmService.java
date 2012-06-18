package com.netitv.service;

import java.util.List;

import com.netitv.domain.Channel;
import com.netitv.domain.Column;
import com.netitv.domain.Film;
import com.netitv.util.PageBean;

public interface FilmService {
	
	public int save(Film film);

	public int delete(int id);

	public int update(Film film);

	public Film findById(int id);
	
	/**
	 * 分页查询影片
	 * @param pageSize 页面大小
	 * @param curPage 当前页码
	 * @param channelSelect 频道代码
	 * @return
	 */
	public PageBean findByPage(int pageSize, int curPage, String channelSelect);
	
	public PageBean findByPage(int pageSize, int curPage,int columnid);

	public List<Column> findColumnsByChannelId(Integer channelID);

	public List<Channel>  listAllChannel();
	
	/**
	 * 查找相关影片
	 * @param size  集合大小
	 * @param columnID 影片栏目ID
	 * @param filmId 影片ID
	 * @return
	 */
	public List<Film> listFilmByRand(int size,int columnID,int filmId);

	public Column findColumnByColumnid(int columnid);

	/**
	 *@Todo:更新置顶状态
	 *@author:朱庆辉
	 *@CreateTime:2012-4-5 下午04:40:56
	 * @param filmId
	 * @param flag
	 */
	public int updateTopStatus(int filmId, String flag);

}
