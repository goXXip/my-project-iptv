package com.netitv.dao;

import java.util.List;

import com.netitv.domain.Column;

public interface ColumnDao {
	
	public Column findById(int id);
	
	public int save(Column column);

	public int delete(int id);

	public int update(Column column);

	public List getRows(Integer pageSize, Integer curPage, String channelId,String name);

	public int getTotalRowsCount(String channelId, String name);

}
