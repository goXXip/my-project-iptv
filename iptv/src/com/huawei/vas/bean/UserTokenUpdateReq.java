
package com.huawei.vas.bean;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for UserTokenUpdateReq complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="UserTokenUpdateReq">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="SPID" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="action" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="oldUserToken" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="returnURL" type="{http://www.w3.org/2001/XMLSchema}string"/>
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
@XmlType(name = "UserTokenUpdateReq", propOrder = {
    "spid",
    "action",
    "oldUserToken",
    "returnURL",
    "userID"
})
public class UserTokenUpdateReq {

    @XmlElement(name = "SPID", required = true, nillable = true)
    protected String spid;
    @XmlElement(required = true, nillable = true)
    protected String action;
    @XmlElement(required = true, nillable = true)
    protected String oldUserToken;
    @XmlElement(required = true, nillable = true)
    protected String returnURL;
    @XmlElement(required = true, nillable = true)
    protected String userID;

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
     * Gets the value of the oldUserToken property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getOldUserToken() {
        return oldUserToken;
    }

    /**
     * Sets the value of the oldUserToken property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setOldUserToken(String value) {
        this.oldUserToken = value;
    }

    /**
     * Gets the value of the returnURL property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getReturnURL() {
        return returnURL;
    }

    /**
     * Sets the value of the returnURL property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setReturnURL(String value) {
        this.returnURL = value;
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
