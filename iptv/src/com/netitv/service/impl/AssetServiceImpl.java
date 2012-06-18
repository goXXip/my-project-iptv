package com.netitv.service.impl;

import java.util.List;

import com.netitv.cache.AbstractCacheProxy;
import com.netitv.dao.AssetDao;
import com.netitv.domain.Asset;
import com.netitv.service.AssetService;
import com.netitv.util.PageBean;

@SuppressWarnings("unchecked")
public class AssetServiceImpl extends AbstractCacheProxy implements AssetService{
	
	private AssetDao assetDao;
	private static final String ASSET_CACHE_KEY = "asset";
	
	public AssetServiceImpl() {
		super(ASSET_CACHE_KEY);
	}
	
	private void cleanCache(){
		this.cache.clear();
	}

	public int delete(int id) {
		// TODO Auto-generated method stub
		int r = assetDao.delete(id);
		this.cleanCache();
		return r;
	}

	public Asset findById(int id) {
		// TODO Auto-generated method stub
		return assetDao.findById(id);
	}

	public int save(Asset asset) {
		// TODO Auto-generated method stub
		int r = assetDao.save(asset);
		this.cleanCache();
		return r;
	}

	public int update(Asset asset) {
		// TODO Auto-generated method stub
		int r =  assetDao.update(asset);
		this.cleanCache();
		return r;
	}

	public void setAssetDao(AssetDao assetDao) {
		this.assetDao = assetDao;
	}

	public PageBean findAssetListByFilmId(int pageSize, int curPage,int filmId) {
		// TODO Auto-generated method stub
		List items =  (List) this.cache.get(ASSET_CACHE_KEY+"_page_"+filmId+"_"+curPage+"_"+pageSize);
		if( items == null){
			 items = assetDao.getRows(pageSize, curPage,filmId);
			 this.cache.put(ASSET_CACHE_KEY+"_page_"+filmId+"_"+curPage+"_"+pageSize,items);
		}
		
		Integer rowsCount = (Integer) this.cache.get(ASSET_CACHE_KEY+"_page_"+filmId+"_count"+"_"+pageSize);
		if( rowsCount == null){
			rowsCount = assetDao.getTotalRowsCount(filmId);
			this.cache.put(ASSET_CACHE_KEY+"_page_"+filmId+"_count"+"_"+pageSize,rowsCount);
		}
		
		PageBean pb = new PageBean(items, rowsCount, pageSize, curPage);
		return pb;
	}

	public List<Asset> findAssetListByFilmId(int filmId) {
		// TODO Auto-generated method stub
		List list =  (List) this.cache.get(ASSET_CACHE_KEY+"_assetlist_"+filmId);
		
		if( list == null){
			list = assetDao.findAssetListByFilmId(filmId);
			this.cache.put(ASSET_CACHE_KEY+"_assetlist_"+filmId,list);
		}
		
		return list;
	}

}
