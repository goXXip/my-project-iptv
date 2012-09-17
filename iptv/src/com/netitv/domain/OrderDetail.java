package com.netitv.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * @Todo:订购详细信息
 * @author: 朱庆辉
 * @CreateTime:2012-4-6 下午01:09:05
 */
public class OrderDetail implements Serializable{

	private static final long serialVersionUID = -8098988089086677349L;
	
	private int id;
	private String description;
	private String userid;
	private String contentid;
	private String serviceid;
	private String productid;
	private String channelid;
	private String productname;
	private String purchasetype;//0：包月支付 1：按次支付 2：按次或包月 3：ppv
	private String fee;
	private String spid;
	private String transaction_id;
	private String expired_time;
	private String ordermode;
	private String available_iptvrewardpoints;
	private String available_teleRewardpoints;
	private String serstarttime;
	private String serendtime;
	
	private Date createtime;//记录创建时间
	
	private String status = "0";//订购状态      0：订购未成功   1:订购未成功   

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getContentid() {
		return contentid;
	}

	public void setContentid(String contentid) {
		this.contentid = contentid;
	}

	public String getServiceid() {
		return serviceid;
	}

	public void setServiceid(String serviceid) {
		this.serviceid = serviceid;
	}

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getChannelid() {
		return channelid;
	}

	public void setChannelid(String channelid) {
		this.channelid = channelid;
	}

	public String getPurchasetype() {
		return purchasetype;
	}

	public void setPurchasetype(String purchasetype) {
		this.purchasetype = purchasetype;
	}

	public String getFee() {
		return fee;
	}

	public void setFee(String fee) {
		this.fee = fee;
	}

	public String getSpid() {
		return spid;
	}

	public void setSpid(String spid) {
		this.spid = spid;
	}

	public String getTransaction_id() {
		return transaction_id;
	}

	public void setTransaction_id(String transactionId) {
		transaction_id = transactionId;
	}

	public String getExpired_time() {
		return expired_time;
	}

	public void setExpired_time(String expiredTime) {
		expired_time = expiredTime;
	}

	public String getOrdermode() {
		return ordermode;
	}

	public void setOrdermode(String ordermode) {
		this.ordermode = ordermode;
	}

	public String getAvailable_iptvrewardpoints() {
		return available_iptvrewardpoints;
	}

	public void setAvailable_iptvrewardpoints(String availableIptvrewardpoints) {
		available_iptvrewardpoints = availableIptvrewardpoints;
	}

	public String getAvailable_teleRewardpoints() {
		return available_teleRewardpoints;
	}

	public void setAvailable_teleRewardpoints(String availableTeleRewardpoints) {
		available_teleRewardpoints = availableTeleRewardpoints;
	}

	public String getSerstarttime() {
		return serstarttime;
	}

	public void setSerstarttime(String serstarttime) {
		this.serstarttime = serstarttime;
	}

	public String getSerendtime() {
		return serendtime;
	}

	public void setSerendtime(String serendtime) {
		this.serendtime = serendtime;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
