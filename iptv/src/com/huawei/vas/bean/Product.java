
package com.huawei.vas.bean;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for Product complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Product">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="fee" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="limitTimes" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="listPrice" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="productDesc" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="productID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="productName" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="purchaseType" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="rentalTerm" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="iPTVRewardPoints" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="teleRewardPoints" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Product", propOrder = {
    "fee",
    "limitTimes",
    "listPrice",
    "productDesc",
    "productID",
    "productName",
    "purchaseType",
    "rentalTerm",
    "iptvRewardPoints",
    "teleRewardPoints"
})
public class Product {

    protected int fee;
    protected int limitTimes;
    protected int listPrice;
    @XmlElement(required = true, nillable = true)
    protected String productDesc;
    @XmlElement(required = true, nillable = true)
    protected String productID;
    @XmlElement(required = true, nillable = true)
    protected String productName;
    protected int purchaseType;
    protected int rentalTerm;
    @XmlElement(name = "iPTVRewardPoints")
    protected int iptvRewardPoints;
    protected int teleRewardPoints;

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
     * Gets the value of the limitTimes property.
     * 
     */
    public int getLimitTimes() {
        return limitTimes;
    }

    /**
     * Sets the value of the limitTimes property.
     * 
     */
    public void setLimitTimes(int value) {
        this.limitTimes = value;
    }

    /**
     * Gets the value of the listPrice property.
     * 
     */
    public int getListPrice() {
        return listPrice;
    }

    /**
     * Sets the value of the listPrice property.
     * 
     */
    public void setListPrice(int value) {
        this.listPrice = value;
    }

    /**
     * Gets the value of the productDesc property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getProductDesc() {
        return productDesc;
    }

    /**
     * Sets the value of the productDesc property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setProductDesc(String value) {
        this.productDesc = value;
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
     * Gets the value of the productName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getProductName() {
        return productName;
    }

    /**
     * Sets the value of the productName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setProductName(String value) {
        this.productName = value;
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
     * Gets the value of the rentalTerm property.
     * 
     */
    public int getRentalTerm() {
        return rentalTerm;
    }

    /**
     * Sets the value of the rentalTerm property.
     * 
     */
    public void setRentalTerm(int value) {
        this.rentalTerm = value;
    }

    /**
     * Gets the value of the iptvRewardPoints property.
     * 
     */
    public int getIPTVRewardPoints() {
        return iptvRewardPoints;
    }

    /**
     * Sets the value of the iptvRewardPoints property.
     * 
     */
    public void setIPTVRewardPoints(int value) {
        this.iptvRewardPoints = value;
    }

    /**
     * Gets the value of the teleRewardPoints property.
     * 
     */
    public int getTeleRewardPoints() {
        return teleRewardPoints;
    }

    /**
     * Sets the value of the teleRewardPoints property.
     * 
     */
    public void setTeleRewardPoints(int value) {
        this.teleRewardPoints = value;
    }

}
