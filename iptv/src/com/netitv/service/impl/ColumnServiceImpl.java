package com.netitv.service.impl;

import java.util.List;

import com.netitv.cache.AbstractCacheProxy;
import com.netitv.dao.ColumnDao;
import com.netitv.domain.Column;
import com.netitv.service.ColumnService;
import com.netitv.util.PageBean;

@SuppressWarnings("unchecked")
public class ColumnServiceImpl extends AbstractCacheProxy implements ColumnService {
	
	private ColumnDao columnDao;
	private static final String COLUMN_CACHE_KEY = "column";

	public ColumnServiceImpl() {
		super(COLUMN_CACHE_KEY);
	}
	
	private void cleanCache(){
		this.cache.clear();
	}

	public int delete(int id) {
		int r = columnDao.delete(id);
		this.cleanCache();
		return r;
	}
	
	public Column findById(int id) {
		Object column  =  this.cache.get(COLUMN_CACHE_KEY+"_"+id);
		if( column == null ){
			column = columnDao.findById(id);
			this.cache.put(COLUMN_CACHE_KEY+"_"+id,column);
		}
		return (Column)column;
	}

	public int save(Column column) {
		int r =  columnDao.save(column);
		this.cleanCache();
		return r;
	}

	public int update(Column column) {
		int r = columnDao.update(column);
		this.cleanCache();
		return r;
	}

	public void setColumnDao(ColumnDao columnDao) {
		this.columnDao = columnDao;
	}

	public PageBean findByPage(Integer pageSize, Integer curPage,
			String channelId, String name) {
		List items = columnDao.getRows(pageSize, curPage,channelId,name);
		
		int rowsCount = columnDao.getTotalRowsCount(channelId,name);
		
		PageBean pb = new PageBean(items, rowsCount, pageSize, curPage);
		return pb;
	}

}
