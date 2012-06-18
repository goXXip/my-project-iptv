package com.netitv.cache;

import org.apache.log4j.Logger;


/**
 * 缓存代理抽象类
 * @param <T>
 */
public abstract class AbstractCacheProxy<T> {
	protected final Logger logger = Logger.getLogger(getClass());

	protected ICache<T> cache;

	public AbstractCacheProxy(String cacheName) {
		cache = CacheFactory.getCache(cacheName);
	}
	
	
}
