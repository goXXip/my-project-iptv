package com.netitv.service;

import java.util.List;

import com.netitv.domain.Asset;
import com.netitv.util.PageBean;

public interface AssetService {
	
	public int save(Asset asset);

	public int delete(int id);

	public int update(Asset asset);

	public Asset findById(int id);
	
	public PageBean findAssetListByFilmId(int pageSize, int curPage,int filmId);

	public List<Asset> findAssetListByFilmId(int filmId);

}
