package com.netitv.dao;

import java.util.List;

import com.netitv.domain.Asset;

public interface AssetDao {

	public int save(Asset asset);

	public int delete(int id);

	public int update(Asset asset);

	public Asset findById(int id);
	
	public List<Asset> findAssetListByFilmId(int filmId);

	public List<Asset> getRows(int pageSize, int curPage, int filmId);

	public int getTotalRowsCount(int filmId);

}
