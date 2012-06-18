
package com.huawei.vas.bean;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import com.huawei.vas.service.ArrayOfTns1ProductServices;


/**
 * <p>Java class for ProductServiceDetailQueryResp complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ProductServiceDetailQueryResp">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="productAmount" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="productServices" type="{http://service.vas.huawei.com}ArrayOf_tns1_ProductServices"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ProductServiceDetailQueryResp", propOrder = {
    "productAmount",
    "productServices"
})
public class ProductServiceDetailQueryResp {

    protected int productAmount;
    @XmlElement(required = true, nillable = true)
    protected ArrayOfTns1ProductServices productServices;

    /**
     * Gets the value of the productAmount property.
     * 
     */
    public int getProductAmount() {
        return productAmount;
    }

    /**
     * Sets the value of the productAmount property.
     * 
     */
    public void setProductAmount(int value) {
        this.productAmount = value;
    }

    /**
     * Gets the value of the productServices property.
     * 
     * @return
     *     possible object is
     *     {@link ArrayOfTns1ProductServices }
     *     
     */
    public ArrayOfTns1ProductServices getProductServices() {
        return productServices;
    }

    /**
     * Sets the value of the productServices property.
     * 
     * @param value
     *     allowed object is
     *     {@link ArrayOfTns1ProductServices }
     *     
     */
    public void setProductServices(ArrayOfTns1ProductServices value) {
        this.productServices = value;
    }

}
