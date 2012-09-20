package com.netitv.util;


/**
 * 常量文件
 * @Todo:TODO
 * @author: zhuqh
 * @CreateTime:2011-10-24 05:25:41
 */
public class Constants {
	
	/*************************** 身份认证 begin *******************************/
	public static final  String Authenticate_Url = CommonsUtil.getPropertyValue("config.properties", "Authenticate_Url").trim();
	
	public static final  String SPID =  CommonsUtil.getPropertyValue("config.properties", "SPID").trim();
	
	public static final  String Authenticate_Action = "UserTokenRequest";
	/*************************** 身份认证  end  *******************************/
	
	
	/*************************** 身份认证 begin *******************************/
	public static final  String Order_Url = CommonsUtil.getPropertyValue("config.properties", "Order_Url").trim();
	
	public static final  String ServiceID = "ServiceID";
	
	/*************************** 身份认证 end *******************************/
	
	/*************************** 鉴权 begin *******************************/
	public static final  String WsdlLocation = CommonsUtil.getPropertyValue("config.properties", "wsdlLocation").trim();
	
	/*************************** 鉴权 end  *******************************/
	
	
	
	public static final  String UserID = "UserID";
	
	public static final  String UserToken = "UserToken";

	public static final String AdministratorInfo = "AdministratorInfo";
	
	public static final  String IPTV_USERID = "iptv_userId";
	
	public static final  String IPTV_BACKURL = "iptv_backUrl";
	
	public static final  String IPTV_LOCALIP = "iptv_localIp";
	
}
