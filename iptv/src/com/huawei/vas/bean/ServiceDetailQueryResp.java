
package com.huawei.vas.bean;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for ServiceDetailQueryResp complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ServiceDetailQueryResp">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="serviceDesc" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="serviceID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="serviceName" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ServiceDetailQueryResp", propOrder = {
    "serviceDesc",
    "serviceID",
    "serviceName"
})
public class ServiceDetailQueryResp {

    @XmlElement(required = true, nillable = true)
    protected String serviceDesc;
    @XmlElement(required = true, nillable = true)
    protected String serviceID;
    @XmlElement(required = true, nillable = true)
    protected String serviceName;

    /**
     * Gets the value of the serviceDesc property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getServiceDesc() {
        return serviceDesc;
    }

    /**
     * Sets the value of the serviceDesc property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setServiceDesc(String value) {
        this.serviceDesc = value;
    }

    /**
     * Gets the value of the serviceID property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getServiceID() {
        return serviceID;
    }

    /**
     * Sets the value of the serviceID property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setServiceID(String value) {
        this.serviceID = value;
    }

    /**
     * Gets the value of the serviceName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getServiceName() {
        return serviceName;
    }

    /**
     * Sets the value of the serviceName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setServiceName(String value) {
        this.serviceName = value;
    }

}
