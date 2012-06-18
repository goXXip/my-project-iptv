package com.netitv.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;


/**
 * 日期转换器.
 *
 * @author Lingo
 */
public class DateConvertor extends StrutsTypeConverter {
    /** * 日期格式化器. */
    private static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    
    // 暂时只考虑这几种日期格式  
    public static final DateFormat[] ACCEPT_DATE_FORMATS = {  
    		dateFormat,
    		new SimpleDateFormat("yyyy-MM-dd HH:mm"),  
    		new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss"),  
            new SimpleDateFormat("yyyy-MM-dd"), 
            new SimpleDateFormat("yyyy/MM/dd") }; 

    /**
     * 字符串转换成日期.
     *
     * @param context 上下文
     * @param value 数据
     * @param toType 转换成什么类型
     * @return 日期
     */
    @Override
    public Object convertFromString(Map context, String[] value, Class toType) {
    	 if (value[0] == null || value[0].trim().equals(""))  
             return null;  
		if (Date.class == toType) {
			for (DateFormat format : ACCEPT_DATE_FORMATS) {
				try {
					if (!"".equals(value[0])) {
						return format.parse(value[0]);
					}
				} catch (ParseException e) {
					continue;
				} catch (RuntimeException e) {
					continue;
				}
			}
		}

        return null;
    }

    /**
     * 转换成字符串.
     *
     * @param context 上下文
     * @param o 对象
     * @return 字符串
     */
    @Override
    public String convertToString(Map context, Object o) {
        if (o != null) {
            return dateFormat.format((Date) o);
        } else {
            return null;
        }
    }
}
