package com.netitv.web.manager;

import java.io.IOException;

import org.apache.log4j.Logger;

import com.netitv.domain.Asset;
import com.netitv.service.AssetService;
import com.netitv.util.BaseAction;
import com.netitv.util.BeanFactory;

public class AssetAction extends BaseAction<Asset> {

	private static final long serialVersionUID = 1L;
	
	private static Logger logger = Logger.getLogger(AssetAction.class);
	
	private Asset asset;
	private int filmId;
	

	public String addPrepare() {
		
		String filmID = request.getParameter("filmID");
		Integer film_id = Integer.parseInt(filmID);
		
		
		this.asset = new Asset();
		asset.setId(0);
		asset.setFileId(0);
		asset.setFilmid(film_id);
		
		return "addPrepare";
	}

	public String save() throws IOException {

		AssetService assetService = (AssetService) BeanFactory.getBeanByName("assetService");
		
		if( asset.getId() == 0 ){
			assetService.save(asset);
		}else{
			assetService.update(asset);
		}
		
		this.filmId = asset.getFilmid();

		return "saved";
	}
	
	public String modifyPrepare(){
    	
		AssetService assetService = (AssetService) BeanFactory.getBeanByName("assetService");
    	String idStr = request.getParameter("id");
    	int id = 0 ;
    	
    	if(idStr != null){
    		id = Integer.parseInt(idStr);
    	}
    	
    	this.asset = assetService.findById(id);
    	
    	return "modifyPrepare";
    }
    
    public String delete(){
    	
    	String idStr = request.getParameter("id");
    	int id = 0 ;
    	if(idStr != null){
    		id = Integer.parseInt(idStr);
    	}
    	
    	AssetService assetService = (AssetService) BeanFactory.getBeanByName("assetService");
    	
    	this.asset = assetService.findById(id);
    	assetService.delete(id);
    	
    	this.filmId = asset.getFilmid();
    	
    	return "deleted";
    }
    

	public Asset getAsset() {
		return asset;
	}

	public void setAsset(Asset asset) {
		this.asset = asset;
	}

	public int getFilmId() {
		return filmId;
	}

	public void setFilmId(int filmId) {
		this.filmId = filmId;
	}
}
