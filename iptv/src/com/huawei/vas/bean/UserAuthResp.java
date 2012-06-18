
package com.huawei.vas.bean;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for UserAuthResp complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="UserAuthResp">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="EPGGroupNMB" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="MAC" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="SPID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="STBID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="products" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="userID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "UserAuthResp", propOrder = {
    "epgGroupNMB",
    "mac",
    "spid",
    "stbid",
    "products",
    "userID"
})
public class UserAuthResp {

    @XmlElement(name = "EPGGroupNMB", required = true, nillable = true)
    protected String epgGroupNMB;
    @XmlElement(name = "MAC", required = true, nillable = true)
    protected String mac;
    @XmlElement(name = "SPID", required = true, nillable = true)
    protected String spid;
    @XmlElement(name = "STBID", required = true, nillable = true)
    protected String stbid;
    @XmlElement(required = true, nillable = true)
    protected String products;
    @XmlElement(required = true, nillable = true)
    protected String userID;

    /**
     * Gets the value of the epgGroupNMB property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getEPGGroupNMB() {
        return epgGroupNMB;
    }

    /**
     * Sets the value of the epgGroupNMB property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setEPGGroupNMB(String value) {
        this.epgGroupNMB = value;
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
     * Gets the value of the products property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getProducts() {
        return products;
    }

    /**
     * Sets the value of the products property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setProducts(String value) {
        this.products = value;
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

}
