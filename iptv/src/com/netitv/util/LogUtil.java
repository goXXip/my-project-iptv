package com.netitv.util;

import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

public class LogUtil {
	
	private static Logger logger = Logger.getLogger(LogUtil.class);
	
	/****
	 * 记录访问参数信息
	 * @param channelName 频道名称
	 */
	public static void logAccessInformation(HttpServletRequest request){
		String uri = request.getRequestURI();
		Date time  = Calendar.getInstance().getTime();
		String visitTime = CommonsUtil.dateToString(time,"yyyy-MM-dd HH:mm:ss");
		String client = request.getRemoteAddr();
		log("==========="+visitTime+"======="+ client+"====begin=================");
		
		log("uri==========="+uri);
		String referer = request.getHeader("Referer");
		log("Referer======="+referer);
		
		String params = request.getQueryString();
		log("params=========="+params);
		
		String localIp = request.getParameter("localIp");
		log("localIp======"+localIp);
		
		String userID = request.getParameter("userId");
		log("userID======"+userID);
		
		String backUrl = request.getParameter("backUrl");
		log("backUrl======"+backUrl);
		
		log("===============end=================");
	}
	
	private static void log(String message){
		logger.info(message);
	}

}
