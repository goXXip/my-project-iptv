package com.netitv.domain;


/**
 * @Todo:图片
 * @author: zhuqh
 * @CreateTime:2011-11-8 上午11:34:12
 */
public class ImageInfo {

	private int id;
	
	private String name;
	
	private String suffix;
	
	private byte[] blob;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSuffix() {
		return suffix;
	}

	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	public byte[] getBlob() {
		return blob;
	}

	public void setBlob(byte[] blob) {
		this.blob = blob;
	}
}
