
package com.huawei.vas.bean;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for ServiceOrderReq complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ServiceOrderReq">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="SPID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="action" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="contentID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="productID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="serviceID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="userID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="userToken" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="orderMode" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="continueType" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ServiceOrderReq", propOrder = {
    "spid",
    "action",
    "contentID",
    "productID",
    "serviceID",
    "userID",
    "userToken",
    "orderMode",
    "continueType"
})
public class ServiceOrderReq {

    @XmlElement(name = "SPID", required = true, nillable = true)
    protected String spid;
    @XmlElement(required = true, nillable = true)
    protected String action;
    @XmlElement(required = true, nillable = true)
    protected String contentID;
    @XmlElement(required = true, nillable = true)
    protected String productID;
    @XmlElement(required = true, nillable = true)
    protected String serviceID;
    @XmlElement(required = true, nillable = true)
    protected String userID;
    @XmlElement(required = true, nillable = true)
    protected String userToken;
    @XmlElement(required = true, nillable = true)
    protected String orderMode;
    @XmlElement(required = true, nillable = true)
    protected String continueType;

    /**
     * Gets the value of the spid property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSPID() {
        return spid;
    }

    /**
     * Sets the value of the spid property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSPID(String value) {
        this.spid = value;
    }

    /**
     * Gets the value of the action property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAction() {
        return action;
    }

    /**
     * Sets the value of the action property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAction(String value) {
        this.action = value;
    }

    /**
     * Gets the value of the contentID property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getContentID() {
        return contentID;
    }

    /**
     * Sets the value of the contentID property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setContentID(String value) {
        this.contentID = value;
    }

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
     * Gets the value of the userID property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getUserID() {
        return userID;
    }

    /**
     * Sets the value of the userID property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setUserID(String value) {
        this.userID = value;
    }

    /**
     * Gets the value of the userToken property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getUserToken() {
        return userToken;
    }

    /**
     * Sets the value of the userToken property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setUserToken(String value) {
        this.userToken = value;
    }

    /**
     * Gets the value of the orderMode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getOrderMode() {
        return orderMode;
    }

    /**
     * Sets the value of the orderMode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setOrderMode(String value) {
        this.orderMode = value;
    }

    /**
     * Gets the value of the continueType property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getContinueType() {
        return continueType;
    }

    /**
     * Sets the value of the continueType property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setContinueType(String value) {
        this.continueType = value;
    }

}
