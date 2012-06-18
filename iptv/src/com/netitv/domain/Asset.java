package com.netitv.domain;

import java.io.Serializable;

/**
 * @Todo:资产
 * @author: zhuqh
 * @CreateTime:2011-11-8 上午11:15:02
 */
public class Asset implements Serializable{

	private static final long serialVersionUID = -8924163510484968380L;

	private Integer id;
	
	private String name;
	
	private Integer fileId;//视频ID
	
	private Integer filmid; //所属影片

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

	public Integer getFilmid() {
		return filmid;
	}

	public void setFilmid(Integer filmid) {
		this.filmid = filmid;
	}

	public Integer getFileId() {
		return fileId;
	}

	public void setFileId(Integer fileId) {
		this.fileId = fileId;
	}
	
}
