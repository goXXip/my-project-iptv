package com.netitv.service;

import com.netitv.domain.Column;
import com.netitv.util.PageBean;

public interface ColumnService {

	
	public Column findById(int id);
	
	public int save(Column column);

	public int delete(int id);

	public int update(Column column);

	public PageBean findByPage(Integer pageSize, Integer curPage,
			String channelId, String name);
}
