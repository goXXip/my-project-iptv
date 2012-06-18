package com.netitv.dao;

import java.util.List;

import com.netitv.domain.Channel;
import com.netitv.domain.Column;
import com.netitv.domain.Film;

public interface FilmDao {

	public int save(Film film);

	public int delete(int id);

	public int update(Film film);

	public Film findById(int id);

	public List<Film> getRows(int pageSize, int curPage, String channelSelect);

	public int getTotalRowsCount(String channelSelect);
	
	public List<Film> getRows(int pageSize, int curPage,int columnid);

	public int getTotalRowsCount(int columnid);

	public List<Column> findColumnsByChannelId(Integer channelID);

	public List<Channel> listAllChannel();

	public List<Film> listFilmByRand(int size,int columnID);

	public Column findColumnByColumnid(int columnid);

	public int updateTopStatus(int filmId, String flag);

}
