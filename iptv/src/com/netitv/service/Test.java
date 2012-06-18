package com.netitv.service;

import java.util.List;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

public class Test {
	
	public static void main(String[] args) {
		
		Cache cache = new Cache("abc", 10000, false, false, 120, 120);
		
		cache.initialise();
		cache.bootstrap();
		
		Element element = new Element("1", "1");
		cache.put(element);
		
		Element obj = cache.get("1");
		if(obj != null){
			System.out.println(obj.getValue());
		}
		
		cache.dispose();
		
	}

}
