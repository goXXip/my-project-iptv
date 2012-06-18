
package com.huawei.vas.bean;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import com.huawei.vas.service.ArrayOfTns1Product;


/**
 * <p>Java class for ServiceAuthResp complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ServiceAuthResp">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="IP" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="MAC" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="STBID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="balance" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="contentID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="expiredTime" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="productID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="productList" type="{http://service.vas.huawei.com}ArrayOf_tns1_Product"/>
 *         &lt;element name="result" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="serviceID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="transactionID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="userID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="availableIPTVRewardPoints" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="availableTeleRewardPoints" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ServiceAuthResp", propOrder = {
    "ip",
    "mac",
    "stbid",
    "balance",
    "contentID",
    "expiredTime",
    "productID",
    "productList",
    "result",
    "serviceID",
    "transactionID",
    "userID",
    "availableIPTVRewardPoints",
    "availableTeleRewardPoints"
})
public class ServiceAuthResp {

    @XmlElement(name = "IP", required = true, nillable = true)
    protected String ip;
    @XmlElement(name = "MAC", required = true, nillable = true)
    protected String mac;
    @XmlElement(name = "STBID", required = true, nillable = true)
    protected String stbid;
    protected int balance;
    @XmlElement(required = true, nillable = true)
    protected String contentID;
    @XmlElement(required = true, nillable = true)
    protected String expiredTime;
    @XmlElement(required = true, nillable = true)
    protected String productID;
    @XmlElement(required = true, nillable = true)
    protected ArrayOfTns1Product productList;
    @XmlElement(required = true, nillable = true)
    protected String result;
    @XmlElement(required = true, nillable = true)
    protected String serviceID;
    @XmlElement(required = true, nillable = true)
    protected String transactionID;
    @XmlElement(required = true, nillable = true)
    protected String userID;
    protected int availableIPTVRewardPoints;
    protected int availableTeleRewardPoints;

    /**
     * Gets the value of the ip property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getIP() {
        return ip;
    }

    /**
     * Sets the value of the ip property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setIP(String value) {
        this.ip = value;
    }

    /**
     * Gets the value of the mac property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMAC() {
        return mac;
    }

    /**
     * Sets the value of the mac property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMAC(String value) {
        this.mac = value;
    }

    /**
     * Gets the value of the stbid property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSTBID() {
        return stbid;
    }

    /**
     * Sets the value of the stbid property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSTBID(String value) {
        this.stbid = value;
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
     * Gets the value of the productList property.
     * 
     * @return
     *     possible object is
     *     {@link ArrayOfTns1Product }
     *     
     */
    public ArrayOfTns1Product getProductList() {
        return productList;
    }

    /**
     * Sets the value of the productList property.
     * 
     * @param value
     *     allowed object is
     *     {@link ArrayOfTns1Product }
     *     
     */
    public void setProductList(ArrayOfTns1Product value) {
        this.productList = value;
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

}
