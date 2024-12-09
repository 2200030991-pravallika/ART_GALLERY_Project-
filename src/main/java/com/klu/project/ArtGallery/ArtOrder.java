package com.klu.project.ArtGallery;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="art_orders")
public class ArtOrder {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer orderId;
	private String name;
	private String email;
	private String phno;
	private String art;
	private Integer ammount;
	private String orderStatus;
	private String razorpayOrderId;
	/**
	 * @return the orderId
	 */
	public Integer getOrderId() {
		return orderId;
	}
	/**
	 * @param orderId the orderId to set
	 */
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the phno
	 */
	public String getPhno() {
		return phno;
	}
	/**
	 * @param phno the phno to set
	 */
	public void setPhno(String phno) {
		this.phno = phno;
	}
	/**
	 * @return the art
	 */
	public String getArt() {
		return art;
	}
	/**
	 * @param art the art to set
	 */
	public void setArt(String art) {
		this.art = art;
	}
	/**
	 * @return the ammount
	 */
	public Integer getAmmount() {
		return ammount;
	}
	/**
	 * @param ammount the ammount to set
	 */
	public void setAmmount(Integer ammount) {
		this.ammount = ammount;
	}
	/**
	 * @return the orderStatus
	 */
	public String getOrderStatus() {
		return orderStatus;
	}
	/**
	 * @param orderStatus the orderStatus to set
	 */
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	/**
	 * @return the razorpayOrderId
	 */
	public String getRazorpayOrderId() {
		return razorpayOrderId;
	}
	/**
	 * @param razorpayOrderId the razorpayOrderId to set
	 */
	public void setRazorpayOrderId(String razorpayOrderId) {
		this.razorpayOrderId = razorpayOrderId;
	}
	@Override
	public String toString() {
		return "ArtOrder [orderId=" + orderId + ", name=" + name + ", email=" + email + ", phno=" + phno + ", art="
				+ art + ", ammount=" + ammount + ", orderStatus=" + orderStatus + ", razorpayOrderId=" + razorpayOrderId
				+ "]";
	}
	
	
	
	

}
