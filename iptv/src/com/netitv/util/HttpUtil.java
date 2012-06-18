package com.netitv.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HttpUtil {
	
	public static void addCookie(HttpServletResponse response,String cookieName,String value,Integer time){
		if(value == null) return;
		value = EscapeUnescape.escape(value);
		Cookie cookie = new Cookie(cookieName+"_netitv", value);
		if( time!= null){
			cookie.setMaxAge(time);
		}else{
			cookie.setMaxAge(7*24*3600);
		}
		cookie.setPath("/");
		response.addCookie(cookie);
	}
	
	public static String getCookieValue(HttpServletRequest request,String key){
		Cookie myCookie[] = request.getCookies();//创建一个Cookie对象数组
		for(int n=0; myCookie!= null && n < myCookie.length;n++)//设立一个循环，来访问Cookie对象数组的每一个元素
		{
			Cookie newCookie= myCookie[n];
			if(newCookie.getName().equals(key+"_netitv")){
				String value = newCookie.getValue();
				value = EscapeUnescape.unescape(value);
				return value;
			}
		}
		return null;
	}

}
