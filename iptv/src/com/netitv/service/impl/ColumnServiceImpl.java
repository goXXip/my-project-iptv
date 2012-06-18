package com.netitv.service.impl;

import java.util.List;

import com.netitv.dao.ColumnDao;
import com.netitv.domain.Column;
import com.netitv.service.ColumnService;
import com.netitv.util.PageBean;

public class ColumnServiceImpl implements ColumnService {
	
	private ColumnDao columnDao;

	public int delete(int id) {
		// TODO Auto-generated method stub
		return columnDao.delete(id);
	}

	public Column findById(int id) {
		// TODO Auto-generated method stub
		return columnDao.findById(id);
	}

	public int save(Column column) {
		// TODO Auto-generated method stub
		return columnDao.save(column);
	}

	public int update(Column column) {
		// TODO Auto-generated method stub
		return columnDao.update(column);
	}

	public void setColumnDao(ColumnDao columnDao) {
		this.columnDao = columnDao;
	}

	@SuppressWarnings("unchecked")
	public PageBean findByPage(Integer pageSize, Integer curPage,
			String channelId, String name) {
		// TODO Auto-generated method stub
		List items = columnDao.getRows(pageSize, curPage,channelId,name);
		
		int rowsCount = columnDao.getTotalRowsCount(channelId,name);
		
		PageBean pb = new PageBean(items, rowsCount, pageSize, curPage);
		return pb;
	}

}
