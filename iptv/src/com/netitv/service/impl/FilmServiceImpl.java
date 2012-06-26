package com.netitv.service.impl;

import java.io.Serializable;
import java.util.List;

import net.sf.ehcache.Cache;
import net.sf.ehcache.Element;

import com.netitv.cache.AbstractCacheProxy;
import com.netitv.dao.FilmDao;
import com.netitv.domain.Channel;
import com.netitv.domain.Column;
import com.netitv.domain.Film;
import com.netitv.service.FilmService;
import com.netitv.util.PageBean;

@SuppressWarnings("unchecked")
public class FilmServiceImpl extends AbstractCacheProxy implements FilmService{
	
	private FilmDao filmDao;
	private static final String FILM_CACHE_KEY = "film";
	private static final String Relative_CACHE_KEY = "relative";
	private static Cache defaultCache;
	
	static{
		defaultCache = new Cache(Relative_CACHE_KEY, 10000, false, false, 1800, 1800);
		defaultCache.initialise();
		defaultCache.bootstrap();
	}
	
	public FilmServiceImpl() {
		super(FILM_CACHE_KEY);
	}
	
	private void cleanCache(){
		this.cache.clear();
	}

	public int delete(int id) {
		// TODO Auto-generated method stub
		int r =  filmDao.delete(id);
		this.cleanCache();
		return r;
	}

	public Film findById(int id) {
		// TODO Auto-generated method stub
		Object film  =  this.cache.get(FILM_CACHE_KEY+"_"+id);
		if( film == null ){
			film = filmDao.findById(id);
			Film f = (Film)film;
			this.cache.put(FILM_CACHE_KEY+"_"+id,f);
		}
		return (Film)film;
	}

	public int save(Film film) {
		// TODO Auto-generated method stub
		int r =  filmDao.save(film);
		this.cleanCache();
		return r;
	}

	public int update(Film film) {
		// TODO Auto-generated method stub
		int r =  filmDao.update(film);
		this.cleanCache();
		return r;
	}

	public void setFilmDao(FilmDao filmDao) {
		this.filmDao = filmDao;
	}

	public PageBean findByPage(int pageSize, int curPage, String channelSelect) {
		// TODO Auto-generated method stub
		List items =  (List) this.cache.get(FILM_CACHE_KEY+"_channel_"+channelSelect+"_"+curPage+"_"+pageSize);
		if( items == null){
			items = filmDao.getRows(pageSize, curPage,channelSelect);
			this.cache.put(FILM_CACHE_KEY+"_channel_"+channelSelect+"_"+curPage+"_"+pageSize, items);
		}
		
		Integer rowsCount =  (Integer) this.cache.get(FILM_CACHE_KEY+"_channel_"+channelSelect+"_count"+"_"+pageSize);
		if( rowsCount == null){
			rowsCount = filmDao.getTotalRowsCount(channelSelect);
			this.cache.put(FILM_CACHE_KEY+"_channel_"+channelSelect+"_count"+"_"+pageSize, rowsCount);
		}
		
		PageBean pb = new PageBean(items, rowsCount, pageSize, curPage);
		return pb;
	}

	public List<Column> findColumnsByChannelId(Integer channelID) {
		// TODO Auto-generated method stub
		return filmDao.findColumnsByChannelId(channelID);
	}

	public List<Channel> listAllChannel() {
		// TODO Auto-generated method stub
		return filmDao.listAllChannel();
	}

	public PageBean findByPage(int pageSize, int curPage, int columnid) {
		// TODO Auto-generated method stub
		List items =  (List) this.cache.get(FILM_CACHE_KEY+"_column_"+columnid+"_"+curPage+"_"+pageSize);
		if( items == null){
			items = filmDao.getRows(pageSize, curPage,columnid);
			this.cache.put(FILM_CACHE_KEY+"_column_"+columnid+"_"+curPage+"_"+pageSize,items);
		}
		
		Integer rowsCount = (Integer) this.cache.get(FILM_CACHE_KEY+"_column_"+columnid+"_count"+"_"+pageSize);
		if( rowsCount == null){
			rowsCount = filmDao.getTotalRowsCount(columnid);
			this.cache.put(FILM_CACHE_KEY+"_column_"+columnid+"_count"+"_"+pageSize,rowsCount);
		}
		
		PageBean pb = new PageBean(items, rowsCount, pageSize, curPage);
		return pb;
	}

	/**
	 * 查找相关影片
	 * @param size  集合大小
	 * @param columnID 影片栏目ID
	 * @param filmId 影片ID
	 */
	public List<Film> listFilmByRand(int size,int columnID,int filmId) {
		// TODO Auto-generated method stub
		String key = Relative_CACHE_KEY+"_"+columnID+"_"+filmId+"_"+size;
		Element obj = defaultCache.get(key);
		if(obj == null){
			List list = filmDao.listFilmByRand(size,columnID);
			 Element element = new Element((Serializable) key, (Serializable) list);            
			defaultCache.put(element);
			return list;
		}
		
		Object relativeList = (List) obj.getValue();
		if(relativeList != null){
			return (List<Film>)relativeList;
		}
		
		return null;
	}

	public Column findColumnByColumnid(int columnid) {
		// TODO Auto-generated method stub
		return filmDao.findColumnByColumnid(columnid);
	}

	public int updateTopStatus(int filmId, String flag) {
		// TODO Auto-generated method stub
		int r =  filmDao.updateTopStatus(filmId,flag);
		this.cleanCache();
		return r;
	}
	
}
