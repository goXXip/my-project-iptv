package com.netitv.ws;

import java.net.MalformedURLException;
import java.net.URL;

import javax.xml.namespace.QName;

import org.apache.log4j.Logger;

import com.huawei.vas.bean.ServiceAuthReq;
import com.huawei.vas.bean.ServiceAuthResp;
import com.huawei.vas.service.VASService;
import com.huawei.vas.service.VASServiceService;
import com.netitv.util.Constants;

public class VASServiceServiceClient {
	
	private static Logger logger = Logger.getLogger(VASServiceServiceClient.class);

	public final static QName SERVICE_NAME = new QName("http://service.vas.huawei.com", "VASServiceService");
	
	private static VASService vasService = null;
	
	static {
		URL wsdlLocation = null;
		try {
			wsdlLocation = new URL(Constants.WsdlLocation);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		VASServiceService vasServiceService = new VASServiceService(wsdlLocation,SERVICE_NAME);
		vasService = vasServiceService.getVASService();
	}

	public static ServiceAuthResp serviceAuth(ServiceAuthReq serviceAuthReq) {
		
		try {
			
			logger.debug("Invoking serviceAuth...");
			
			ServiceAuthResp  serviceAuthResp = vasService.serviceAuth(serviceAuthReq);
			
			return serviceAuthResp;
			
		} catch (Exception e) {
			
			e.printStackTrace();
			return null;
		}
	}

}
