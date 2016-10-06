package com.ecom.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

@Entity
public class OrderDetail implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1442913000833453365L;

	@Id
	@Column
	@GeneratedValue
	private int orderdetail_id;

	@Column
	private String customer_email;
	
	@Column(length=5000)
	String BillingAddress;
	
	@Column(length=5000)
	String ShippingAddress;
	
	@ManyToMany(cascade=CascadeType.ALL)  
    @JoinTable(name="product_orderdetail", joinColumns=@JoinColumn(name="orderdetailid"), inverseJoinColumns=@JoinColumn(name="itemid"))  
	private List<Product> products;

	
	@Column
	String orderstatus;
	
	
	public String getCustomer_email() {
		return customer_email;
	}


	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}


	public String getBillingAddress() {
		return BillingAddress;
	}


	public void setBillingAddress(String billingAddress) {
		BillingAddress = billingAddress;
	}


	public String getShippingAddress() {
		return ShippingAddress;
	}


	public void setShippingAddress(String shippingAddress) {
		ShippingAddress = shippingAddress;
	}


	


	public int getOrderdetail_id() {
		return orderdetail_id;
	}


	public void setOrderdetail_id(int orderdetail_id) {
		this.orderdetail_id = orderdetail_id;
	}




	




	public List<Product> getProducts() {
		return products;
	}


	public void setProducts(List<Product> products) {
		this.products = products;
	}


	public String getOrderstatus() {
		return orderstatus;
	}


	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}


	
	
	
	
	

}
