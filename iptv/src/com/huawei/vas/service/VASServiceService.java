
/*
 * 
 */

package com.huawei.vas.service;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceFeature;
import javax.xml.ws.Service;

/**
 * This class was generated by Apache CXF 2.2.9
 * Mon Oct 24 20:51:03 CST 2011
 * Generated source version: 2.2.9
 * 
 */


@WebServiceClient(name = "VASServiceService", 
                  wsdlLocation = "file:/D:/eclipse/workspace/iptv_access/src/VASService.wsdl",
                  targetNamespace = "http://service.vas.huawei.com") 
public class VASServiceService extends Service {

    public final static URL WSDL_LOCATION;
    public final static QName SERVICE = new QName("http://service.vas.huawei.com", "VASServiceService");
    public final static QName VASService = new QName("http://service.vas.huawei.com", "VASService");
    static {
        URL url = null;
        try {
            url = new URL("file:/D:/eclipse/workspace/iptv_access/src/VASService.wsdl");
        } catch (MalformedURLException e) {
            System.err.println("Can not initialize the default wsdl from file:/D:/eclipse/workspace/iptv_access/src/VASService.wsdl");
            // e.printStackTrace();
        }
        WSDL_LOCATION = url;
    }

    public VASServiceService(URL wsdlLocation) {
        super(wsdlLocation, SERVICE);
    }

    public VASServiceService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public VASServiceService() {
        super(WSDL_LOCATION, SERVICE);
    }
    

    /**
     * 
     * @return
     *     returns VASService
     */
    @WebEndpoint(name = "VASService")
    public VASService getVASService() {
        return super.getPort(VASService, VASService.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns VASService
     */
    @WebEndpoint(name = "VASService")
    public VASService getVASService(WebServiceFeature... features) {
        return super.getPort(VASService, VASService.class, features);
    }

}
