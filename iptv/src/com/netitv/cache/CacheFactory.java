package com.netitv.cache;


/**
 * Cache实现类工厂
 */
public final class CacheFactory {

	@SuppressWarnings("unchecked")
	public static <T> ICache<T> getCache(String name) {
		ICache<T> ehCache = new EhCacheImpl(name);
		return ehCache;
	}

}
