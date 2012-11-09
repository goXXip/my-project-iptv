package com.netitv.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import com.netitv.domain.ImageInfo;

public class CommonsUtil {
	
	private final static Logger logger = Logger.getLogger(CommonsUtil.class);

	public static String getMD5(String content) {
		byte[] source = content.getBytes();
		String s = null;
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
				'a', 'b', 'c', 'd', 'e', 'f' };
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(source);

			byte tmp[] = md.digest();
			char str[] = new char[16 * 2];

			int k = 0;
			for (int i = 0; i < 16; i++) { // 

				byte byte0 = tmp[i];

				str[k++] = hexDigits[byte0 >>> 4 & 0xf];

				str[k++] = hexDigits[byte0 & 0xf];
			}
			s = new String(str);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return s;
	}

	public static String md5(String s) {
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
				'A', 'B', 'C', 'D', 'E', 'F' };
		try {
			byte[] strTemp = s.getBytes();
			MessageDigest MD = MessageDigest.getInstance("MD5");
			MD.update(strTemp);
			byte[] md = MD.digest();
			int j = md.length;
			char str[] = new char[j * 2];
			int k = 0;
			for (int i = 0; i < j; i++) {
				byte byte0 = md[i];
				str[k++] = hexDigits[byte0 >>> 4 & 0xf];
				str[k++] = hexDigits[byte0 & 0xf];
			}
			return String.valueOf(str);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static String encode(byte[] fileData) {

		if (fileData == null) {
			return null;
		}

		BASE64Encoder encoder = new BASE64Encoder();
		return encoder.encode(fileData);
	}

	public static byte[] decode(String fileData) {
		if (fileData == null) {
			return null;
		}
		BASE64Decoder decoder = new BASE64Decoder();
		try {
			return decoder.decodeBuffer(fileData);
		} catch (IOException e) {
			logger.debug(e.getMessage());
		}
		return null;
	}

	public static String encodeToString(String string) {
		if (string == null) {
			return null;
		} else {
			return encode(string.getBytes());
		}
	}

	public static String decodeToString(String string) {
		if (string == null) {
			return null;
		} else {
			byte[] _byte = decode(string);
			return new String(_byte);
		}
	}

	public static String getPathSymbol() {
		String label = System.getProperty("file.separator");
		return label;
	}

	public static byte[] BlobToBytes(Blob blob) {
		try {
			return blob.getBytes(0, (int) blob.length());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static String replaceRegex(String content, String regex,
			String replacement) {
		if (replacement == null)
			return content;
		replacement = replacement.replaceAll("[\\\\\\$]", "\\\\$0");
		return content.replaceAll(regex, replacement);
	}

	/**
	 * @param length
	 *            随机数长度
	 * @return
	 */
	public static String getRandomString(int length) {

		return RandomStringUtils
				.random(length,
						"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ");
	}
	
	/**
	 * 时间转为字符串
	 * 
	 * @param date
	 * @param format
	 * @return
	 */
	public static String dateToString(Date date, String format) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
		return simpleDateFormat.format(date);
	}

	public static Date StringToDate(String strDate, String format) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
		try {
			return simpleDateFormat.parse(strDate);
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 将string型的ip转换为long型
	 */
	public static long stringIp2Long(String ip) {
		String[] ips = ip.split("\\.");
		if (ips.length != 4)
			return 0;
		long ip1 = Long.parseLong(ips[0]);
		long ip2 = Long.parseLong(ips[1]);
		long ip3 = Long.parseLong(ips[2]);
		long ip4 = Long.parseLong(ips[3]);
		return ip1 * 256 * 256 * 256 + ip2 * 256 * 256 + ip3 * 256 + ip4;
	}

	/**
	 * 读取属性配置文件
	 */
	public static String getPropertyValue(String propertyName, String key) {
		Properties properties = new Properties();
		try {
			properties.load(CommonsUtil.class.getClassLoader().getResourceAsStream(propertyName));
			String value =  properties.getProperty(key);
			if(value != null){
				return value.trim();
			}
		} catch (FileNotFoundException e) {
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 
	 * @create 2008-5-8 上午11:53:55
	 * @since 获得项目的物理地址路径(最后一个字符是分隔符).
	 * @return
	 */
	@SuppressWarnings("deprecation")
	public static String getAbsPathOfProject() {

		String url = CommonsUtil.class.getClassLoader().getResource("")
				.toString();
		url = URLDecoder.decode(url);
		// Win file:/E:/projects/Eclipse/workspace/SAS-Studio/WEB-INF/classes/
		// Linux file:/home/share/SAS-TOMCAT/webapps/SAS/WEB-INF/classes/
		String reg = "file:(.+)WEB-INF";
		Matcher mat = Pattern.compile(reg, Pattern.CASE_INSENSITIVE).matcher(
				url);
		if (mat.find()) {
			String path = mat.group(1);
			path = path.replaceAll("/", "\\" + File.separator);
			if (File.separator.equals("\\"))// windows
				return path.substring(1);
			return path;
		}
		return url;
	}

	public static String getDayAndWeek(String dayStr, String format) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
		try {
			Date date = simpleDateFormat.parse(dayStr);
			SimpleDateFormat formatYMD = new SimpleDateFormat("dd日 E");
			return formatYMD.format(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return "";
	}

	/** */
	/**
	 * 详细设计： 1.指定日期加1天
	 */
	public static java.util.Date getNextDay(java.util.Date date) {
		GregorianCalendar gc = (GregorianCalendar) Calendar.getInstance();
		gc.setTime(date);
		gc.add(Calendar.DATE, 1);
		return gc.getTime();
	}
	
	public static java.util.Date dateCalculate(java.util.Date date,int n) {
		GregorianCalendar gc = (GregorianCalendar) Calendar.getInstance();
		gc.setTime(date);
		gc.add(Calendar.DATE, n);
		return gc.getTime();
	}

	public static String getNextDayAndWeek(String dayStr, String format) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
		try {
			Date date = simpleDateFormat.parse(dayStr);
			date = getNextDay(date);
			SimpleDateFormat formatYMD = new SimpleDateFormat("dd日 E");
			return formatYMD.format(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return "";
	}

	/**
	 * 得到前一天的时间
	 * 
	 * @param publishTime
	 * @param format
	 * @return
	 */
	public static String getBeforeDay(String publishTime, String format, int n) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
		try {
			Date date = simpleDateFormat.parse(publishTime);
			GregorianCalendar gc = (GregorianCalendar) Calendar.getInstance();
			gc.setTime(date);
			gc.add(Calendar.DATE, n);
			date = gc.getTime();

			return simpleDateFormat.format(date);

		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static byte[] InputStreamToByte(InputStream is) throws IOException {
		ByteArrayOutputStream bytestream = new ByteArrayOutputStream();
		int ch;
		while ((ch = is.read()) != -1) {
			bytestream.write(ch);
		}
		byte imgdata[] = bytestream.toByteArray();
		bytestream.close();
		return imgdata;
	} 
	
    /**
     * 将图片生成在磁盘
     * @param img
     * @param fold
     */
    public static void writeImageInfo(ImageInfo img,String imgPath){
    	if(img == null) return ;
    	
    	if(img.getBlob() == null) return;
    	
    	InputStream is  = null;
    	FileOutputStream fos = null;
		try {
			if(new File(imgPath).exists()){
				return ;//图片已存在
			}
			
			is = new ByteArrayInputStream(img.getBlob());
			fos = new FileOutputStream(imgPath);
			byte[] buf = new byte[1024];
			int len;
			while ((len = is.read(buf)) != -1) {
				fos.write(buf, 0, len);
			}
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			if(fos != null){
				try {
					fos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if(is != null){
				try {
					is.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
    }
    
	/**
	 * 取文件后缀名
	 * @param srcpath 文件路径 
	 */
	public static String getExt(String srcpath) {
		if(srcpath != null && srcpath.length()>2){
			String suffix =  srcpath.lastIndexOf(".") > 0 ? srcpath.substring(srcpath.lastIndexOf(".")+1) : null;
			return suffix;
		}
		return null;
	}
	
	
	/**
	 * 转换为HTML编码.<br>
	 */
	public static String htmlEncoder(String src){
		if (src == null || src.equals("")) {
			return "";
		}

		String dst = src;
		dst = dst.replaceAll("<", "&lt;");
		dst = dst.replaceAll(">", "&rt;");
		dst = dst.replaceAll("\"", "&quot;");
		dst = dst.replaceAll("'", "&#039;");
		dst = dst.replaceAll("&", "&amp;");
		dst = dst.replaceAll("\\?","&#63;");
		dst = dst.replaceAll("=", "&#61;");
		dst = dst.replaceAll("%", "&#37;");

		return dst;
	}
	
}
