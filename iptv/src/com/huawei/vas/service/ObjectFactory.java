
package com.huawei.vas.service;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;
import com.huawei.vas.bean.ProdDetailQueryReq;
import com.huawei.vas.bean.ProdDetailQueryResp;
import com.huawei.vas.bean.ProductServiceDetailQueryReq;
import com.huawei.vas.bean.ProductServiceDetailQueryResp;
import com.huawei.vas.bean.ServiceAuthReq;
import com.huawei.vas.bean.ServiceAuthResp;
import com.huawei.vas.bean.ServiceDetailQueryReq;
import com.huawei.vas.bean.ServiceDetailQueryResp;
import com.huawei.vas.bean.ServiceOrderReq;
import com.huawei.vas.bean.ServiceOrderResp;
import com.huawei.vas.bean.UserAuthReq;
import com.huawei.vas.bean.UserAuthResp;
import com.huawei.vas.bean.UserTokenUpdateReq;
import com.huawei.vas.bean.UserTokenUpdateResp;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.huawei.vas.service package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _ServiceAuthReq_QNAME = new QName("http://service.vas.huawei.com", "serviceAuthReq");
    private final static QName _ServiceDetailQueryReq_QNAME = new QName("http://service.vas.huawei.com", "serviceDetailQueryReq");
    private final static QName _ProdDetailQueryReq_QNAME = new QName("http://service.vas.huawei.com", "prodDetailQueryReq");
    private final static QName _UserTokenUpdateResponse_QNAME = new QName("http://service.vas.huawei.com", "userTokenUpdateResponse");
    private final static QName _ServiceOrderReq_QNAME = new QName("http://service.vas.huawei.com", "serviceOrderReq");
    private final static QName _ServiceAuthResponse_QNAME = new QName("http://service.vas.huawei.com", "serviceAuthResponse");
    private final static QName _ProductServiceDetailQueryResponse_QNAME = new QName("http://service.vas.huawei.com", "productServiceDetailQueryResponse");
    private final static QName _UserAuthResponse_QNAME = new QName("http://service.vas.huawei.com", "userAuthResponse");
    private final static QName _UserTokenUpdateReq_QNAME = new QName("http://service.vas.huawei.com", "userTokenUpdateReq");
    private final static QName _ServiceOrderResponse_QNAME = new QName("http://service.vas.huawei.com", "serviceOrderResponse");
    private final static QName _ProdDetailQueryResponse_QNAME = new QName("http://service.vas.huawei.com", "prodDetailQueryResponse");
    private final static QName _ProductServiceDetailQueryReq_QNAME = new QName("http://service.vas.huawei.com", "productServiceDetailQueryReq");
    private final static QName _UserAuthReq_QNAME = new QName("http://service.vas.huawei.com", "userAuthReq");
    private final static QName _ServiceDetailQueryResponse_QNAME = new QName("http://service.vas.huawei.com", "serviceDetailQueryResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.huawei.vas.service
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ArrayOfTns1ProductServices }
     * 
     */
    public ArrayOfTns1ProductServices createArrayOfTns1ProductServices() {
        return new ArrayOfTns1ProductServices();
    }

    /**
     * Create an instance of {@link ArrayOfTns1Product }
     * 
     */
    public ArrayOfTns1Product createArrayOfTns1Product() {
        return new ArrayOfTns1Product();
    }

    /**
     * Create an instance of {@link ArrayOfTns1Service }
     * 
     */
    public ArrayOfTns1Service createArrayOfTns1Service() {
        return new ArrayOfTns1Service();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ServiceAuthReq }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.vas.huawei.com", name = "serviceAuthReq")
    public JAXBElement<ServiceAuthReq> createServiceAuthReq(ServiceAuthReq value) {
        return new JAXBElement<ServiceAuthReq>(_ServiceAuthReq_QNAME, ServiceAuthReq.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ServiceDetailQueryReq }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.vas.huawei.com", name = "serviceDetailQueryReq")
    public JAXBElement<ServiceDetailQueryReq> createServiceDetailQueryReq(ServiceDetailQueryReq value) {
        return new JAXBElement<ServiceDetailQueryReq>(_ServiceDetailQueryReq_QNAME, ServiceDetailQueryReq.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ProdDetailQueryReq }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.vas.huawei.com", name = "prodDetailQueryReq")
    public JAXBElement<ProdDetailQueryReq> createProdDetailQueryReq(ProdDetailQueryReq value) {
        return new JAXBElement<ProdDetailQueryReq>(_ProdDetailQueryReq_QNAME, ProdDetailQueryReq.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UserTokenUpdateResp }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.vas.huawei.com", name = "userTokenUpdateResponse")
    public JAXBElement<UserTokenUpdateResp> createUserTokenUpdateResponse(UserTokenUpdateResp value) {
        return new JAXBElement<UserTokenUpdateResp>(_UserTokenUpdateResponse_QNAME, UserTokenUpdateResp.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ServiceOrderReq }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.vas.huawei.com", name = "serviceOrderReq")
    public JAXBElement<ServiceOrderReq> createServiceOrderReq(ServiceOrderReq value) {
        return new JAXBElement<ServiceOrderReq>(_ServiceOrderReq_QNAME, ServiceOrderReq.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ServiceAuthResp }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.vas.huawei.com", name = "serviceAuthResponse")
    public JAXBElement<ServiceAuthResp> createServiceAuthResponse(ServiceAuthResp value) {
        return new JAXBElement<ServiceAuthResp>(_ServiceAuthResponse_QNAME, ServiceAuthResp.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ProductServiceDetailQueryResp }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.vas.huawei.com", name = "productServiceDetailQueryResponse")
    public JAXBElement<ProductServiceDetailQueryResp> createProductServiceDetailQueryResponse(ProductServiceDetailQueryResp value) {
        return new JAXBElement<ProductServiceDetailQueryResp>(_ProductServiceDetailQueryResponse_QNAME, ProductServiceDetailQueryResp.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UserAuthResp }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.vas.huawei.com", name = "userAuthResponse")
    public JAXBElement<UserAuthResp> createUserAuthResponse(UserAuthResp value) {
        return new JAXBElement<UserAuthResp>(_UserAuthResponse_QNAME, UserAuthResp.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UserTokenUpdateReq }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.vas.huawei.com", name = "userTokenUpdateReq")
    public JAXBElement<UserTokenUpdateReq> createUserTokenUpdateReq(UserTokenUpdateReq value) {
        return new JAXBElement<UserTokenUpdateReq>(_UserTokenUpdateReq_QNAME, UserTokenUpdateReq.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ServiceOrderResp }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.vas.huawei.com", name = "serviceOrderResponse")
    public JAXBElement<ServiceOrderResp> createServiceOrderResponse(ServiceOrderResp value) {
        return new JAXBElement<ServiceOrderResp>(_ServiceOrderResponse_QNAME, ServiceOrderResp.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ProdDetailQueryResp }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.vas.huawei.com", name = "prodDetailQueryResponse")
    public JAXBElement<ProdDetailQueryResp> createProdDetailQueryResponse(ProdDetailQueryResp value) {
        return new JAXBElement<ProdDetailQueryResp>(_ProdDetailQueryResponse_QNAME, ProdDetailQueryResp.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ProductServiceDetailQueryReq }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.vas.huawei.com", name = "productServiceDetailQueryReq")
    public JAXBElement<ProductServiceDetailQueryReq> createProductServiceDetailQueryReq(ProductServiceDetailQueryReq value) {
        return new JAXBElement<ProductServiceDetailQueryReq>(_ProductServiceDetailQueryReq_QNAME, ProductServiceDetailQueryReq.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UserAuthReq }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.vas.huawei.com", name = "userAuthReq")
    public JAXBElement<UserAuthReq> createUserAuthReq(UserAuthReq value) {
        return new JAXBElement<UserAuthReq>(_UserAuthReq_QNAME, UserAuthReq.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ServiceDetailQueryResp }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.vas.huawei.com", name = "serviceDetailQueryResponse")
    public JAXBElement<ServiceDetailQueryResp> createServiceDetailQueryResponse(ServiceDetailQueryResp value) {
        return new JAXBElement<ServiceDetailQueryResp>(_ServiceDetailQueryResponse_QNAME, ServiceDetailQueryResp.class, null, value);
    }

}
