/**
 * Cookies ��ط���
 * getCookie(key):�õ�cookieֵ
 * setCookie(key,keyValue):�趨cookieֵ
 * ===========================================
 * @author Feiger
 * @version 0.1 2007-01-13
 * @version 0.2 2008-06-23 ����ע��
 * @version 0.3 2009-06-18 ����ɾ��Cookieֵ����
 */


/**
 * ����Cookie
 * @param key cookie��
 * @param keyValue cookie��ֵ
 * @param keyExpries ��Ч��
 * @param keyDomain cookie��
 * @param keyPath ·��
 * @param secure ��ȫ
 */
function setCookie(key,keyValue,keyExpries,keyDomain,keyPath,secure) {
	var str = key + "=" + escape(keyValue);
	if(keyExpries != null) {
		str = str + "; expires=" + keyExpries;
	}	
	if(keyDomain != null) {
		str = str + "; domain=" + keyDomain;
	}
	if(keyPath != null) {
		str = str + "; path=" + keyPath;
	}
	if(secure == true) {
		str = str + "; true";
	}
	document.cookie = str;
}

/**
 * ��ȡָ����Cookieֵ
 * @param key cookie��
 */
function getCookie(key) {
   var search = key + "=";
   if(document.cookie.length > 0) {
      offset = document.cookie.indexOf(search);
      if(offset != -1) {
         offset += search.length;
         end = document.cookie.indexOf(";", offset);
         if(end == -1) end = document.cookie.length;
         return unescape(document.cookie.substring(offset, end));
      }
   }
   return "";
}

/**
 * ɾ��Cookieֵ
 * @param key ��ɾ��Cookie��
 * @param keyDomain cookie��
 * @param keyPath ·��
 * @return
 */
function delCookie(key, keyDomain, keyPath) {
	if(key != null) {
		if(getCookie(key) != "") {
			setCookie(key, "", new Date(((new Date()).getTime())).toGMTString(), keyDomain, keyPath);
			return true;
		}
	}
}

