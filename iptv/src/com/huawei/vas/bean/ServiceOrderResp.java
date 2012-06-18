
package com.huawei.vas.bean;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for ServiceOrderResp complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ServiceOrderResp">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="SPID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="balance" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="contentID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="description" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="expiredTime" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="fee" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="productID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="purchaseType" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="result" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="serviceID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="transactionID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="userID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="userToken" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="orderMode" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="availableIPTVRewardPoints" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="availableTeleRewardPoints" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="serStartTime" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="serEndTime" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ServiceOrderResp", propOrder = {
    "spid",
    "balance",
    "contentID",
    "description",
    "expiredTime",
    "fee",
    "productID",
    "purchaseType",
    "result",
    "serviceID",
    "transactionID",
    "userID",
    "userToken",
    "orderMode",
    "availableIPTVRewardPoints",
    "availableTeleRewardPoints",
    "serStartTime",
    "serEndTime"
})
public class ServiceOrderResp {

    @XmlElement(name = "SPID", required = true, nillable = true)
    protected String spid;
    protected int balance;
    @XmlElement(required = true, nillable = true)
    protected String contentID;
    @XmlElement(required = true, nillable = true)
    protected String description;
    @XmlElement(required = true, nillable = true)
    protected String expiredTime;
    protected int fee;
    @XmlElement(required = true, nillable = true)
    protected String productID;
    protected int purchaseType;
    @XmlElement(required = true, nillable = true)
    protected String result;
    @XmlElement(required = true, nillable = true)
    protected String serviceID;
    @XmlElement(required = true, nillable = true)
    protected String transactionID;
    @XmlElement(required = true, nillable = true)
    protected String userID;
    @XmlElement(required = true, nillable = true)
    protected String userToken;
    @XmlElement(required = true, nillable = true)
    protected String orderMode;
    protected int availableIPTVRewardPoints;
    protected int availableTeleRewardPoints;
    @XmlElement(required = true, nillable = true)
    protected String serStartTime;
    @XmlElement(required = true, nillable = true)
    protected String serEndTime;

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
     * Gets the value of the balance property.
     * 
     */
    public int getBalance() {
        return balance;
    }

    /**
     * Sets the value of the balance property.
     * 
     */
    public void setBalance(int value) {
        this.balance = value;
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
     * Gets the value of the description property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDescription() {
        return description;
    }

    /**
     * Sets the value of the description property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDescription(String value) {
        this.description = value;
    }

    /**
     * Gets the value of the expiredTime property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getExpiredTime() {
        return expiredTime;
    }

    /**
     * Sets the value of the expiredTime property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setExpiredTime(String value) {
        this.expiredTime = value;
    }

    /**
     * Gets the value of the fee property.
     * 
     */
    public int getFee() {
        return fee;
    }

    /**
     * Sets the value of the fee property.
     * 
     */
    public void setFee(int value) {
        this.fee = value;
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
     * Gets the value of the purchaseType property.
     * 
     */
    public int getPurchaseType() {
        return purchaseType;
    }

    /**
     * Sets the value of the purchaseType property.
     * 
     */
    public void setPurchaseType(int value) {
        this.purchaseType = value;
    }

    /**
     * Gets the value of the result property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getResult() {
        return result;
    }

    /**
     * Sets the value of the result property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setResult(String value) {
        this.result = value;
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
     * Gets the value of the transactionID property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTransactionID() {
        return transactionID;
    }

    /**
     * Sets the value of the transactionID property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTransactionID(String value) {
        this.transactionID = value;
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
     * Gets the value of the availableIPTVRewardPoints property.
     * 
     */
    public int getAvailableIPTVRewardPoints() {
        return availableIPTVRewardPoints;
    }

    /**
     * Sets the value of the availableIPTVRewardPoints property.
     * 
     */
    public void setAvailableIPTVRewardPoints(int value) {
        this.availableIPTVRewardPoints = value;
    }

    /**
     * Gets the value of the availableTeleRewardPoints property.
     * 
     */
    public int getAvailableTeleRewardPoints() {
        return availableTeleRewardPoints;
    }

    /**
     * Sets the value of the availableTeleRewardPoints property.
     * 
     */
    public void setAvailableTeleRewardPoints(int value) {
        this.availableTeleRewardPoints = value;
    }

    /**
     * Gets the value of the serStartTime property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSerStartTime() {
        return serStartTime;
    }

    /**
     * Sets the value of the serStartTime property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSerStartTime(String value) {
        this.serStartTime = value;
    }

    /**
     * Gets the value of the serEndTime property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSerEndTime() {
        return serEndTime;
    }

    /**
     * Sets the value of the serEndTime property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSerEndTime(String value) {
        this.serEndTime = value;
    }

}
