package com.netitv.domain;

/**
 * @Todo:TODO
 * @author: 朱庆辉
 * @CreateTime:2012-4-5 上午10:13:11
 */
public class AdministratorInfo {

	private int id;
	
	private String username;
	
	private String password;
	
	private String disable;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getDisable() {
		return disable;
	}
	
	public void setDisable(String disable) {
		this.disable = disable;
	}

}
