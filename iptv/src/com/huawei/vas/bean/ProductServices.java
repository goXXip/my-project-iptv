
package com.huawei.vas.bean;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import com.huawei.vas.service.ArrayOfTns1Service;


/**
 * <p>Java class for ProductServices complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ProductServices">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="productID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="services" type="{http://service.vas.huawei.com}ArrayOf_tns1_Service"/>
 *         &lt;element name="serviceAmount" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ProductServices", propOrder = {
    "productID",
    "services",
    "serviceAmount"
})
public class ProductServices {

    @XmlElement(required = true, nillable = true)
    protected String productID;
    @XmlElement(required = true, nillable = true)
    protected ArrayOfTns1Service services;
    protected int serviceAmount;

    /**
     * Gets the value of the productID property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getProductID() {
        return productID;
    }

    /**
     * Sets the value of the productID property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setProductID(String value) {
        this.productID = value;
    }

    /**
     * Gets the value of the services property.
     * 
     * @return
     *     possible object is
     *     {@link ArrayOfTns1Service }
     *     
     */
    public ArrayOfTns1Service getServices() {
        return services;
    }

    /**
     * Sets the value of the services property.
     * 
     * @param value
     *     allowed object is
     *     {@link ArrayOfTns1Service }
     *     
     */
    public void setServices(ArrayOfTns1Service value) {
        this.services = value;
    }

    /**
     * Gets the value of the serviceAmount property.
     * 
     */
    public int getServiceAmount() {
        return serviceAmount;
    }

    /**
     * Sets the value of the serviceAmount property.
     * 
     */
    public void setServiceAmount(int value) {
        this.serviceAmount = value;
    }

}
