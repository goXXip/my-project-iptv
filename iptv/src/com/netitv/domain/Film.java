package com.netitv.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @Todo:影视
 * @author: zhuqh
 * @CreateTime:2011-11-8 上午11:26:43
 */
public class Film implements Serializable{
	
	private static final long serialVersionUID = -3758339576068169149L;

	private Integer id;
	
	private String name;
	
	private String description;
	
	private int serialCount;//集数
	
	private String audient;//受众
	
	private String actor;//演员/主讲
	
	private String price;
	
	private String period;//有效期
	
	private ImageInfo bigImage;
	
	private ImageInfo smallImage;
	
	private ImageInfo bigImage_HD;//大海报图(高清)
	
	private ImageInfo smallImage_HD;//小海报图(高清)
	
	private Integer columnId;
	
	private String contentId;//内容ID
	
	private List<Asset> assetList;
	
	private Date uploadDate;
	
	private String istop = "0" ;//是否置顶
	
	private Date modifyDate;//修改时间

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getSerialCount() {
		return serialCount;
	}

	public void setSerialCount(int serialCount) {
		this.serialCount = serialCount;
	}

	public String getAudient() {
		return audient;
	}

	public void setAudient(String audient) {
		this.audient = audient;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

	public List<Asset> getAssetList() {
		return assetList;
	}

	public void setAssetList(List<Asset> assetList) {
		this.assetList = assetList;
	}

	public ImageInfo getBigImage() {
		return bigImage;
	}

	public void setBigImage(ImageInfo bigImage) {
		this.bigImage = bigImage;
	}

	public ImageInfo getSmallImage() {
		return smallImage;
	}

	public void setSmallImage(ImageInfo smallImage) {
		this.smallImage = smallImage;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public Integer getColumnId() {
		return columnId;
	}

	public void setColumnId(Integer columnId) {
		this.columnId = columnId;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getIstop() {
		return istop;
	}

	public void setIstop(String istop) {
		this.istop = istop;
	}

	public String getContentId() {
		return contentId;
	}

	public void setContentId(String contentId) {
		this.contentId = contentId;
	}

	public ImageInfo getBigImage_HD() {
		return bigImage_HD;
	}

	public void setBigImage_HD(ImageInfo bigImageHD) {
		bigImage_HD = bigImageHD;
	}

	public ImageInfo getSmallImage_HD() {
		return smallImage_HD;
	}

	public void setSmallImage_HD(ImageInfo smallImageHD) {
		smallImage_HD = smallImageHD;
	}
}
