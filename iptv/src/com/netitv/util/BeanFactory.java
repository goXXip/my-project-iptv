package com.netitv.util;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class BeanFactory implements ApplicationContextAware{
	
	private static ApplicationContext applicationContext;

	public static Object getBeanByName(String beanName) {
		if(applicationContext == null){
			applicationContext = new ClassPathXmlApplicationContext(new String[]{"config/applicationContext.xml"});
		}
		return applicationContext.getBean(beanName);
	}

	public void setApplicationContext(ApplicationContext arg0) throws BeansException {
		applicationContext = arg0;		
	}
	
}
