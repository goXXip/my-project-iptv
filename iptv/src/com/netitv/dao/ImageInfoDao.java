package com.netitv.dao;

import com.netitv.domain.ImageInfo;

public interface ImageInfoDao {

	public ImageInfo save(ImageInfo imageInfo);

	public int delete(int id);

	public int update(ImageInfo imageInfo);

	public ImageInfo findById(int id);

}
