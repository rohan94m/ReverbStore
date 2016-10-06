package com.ecom.model;

import java.io.Serializable;

public class CustomerAddress implements Serializable {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3182051164011100604L;
	private BillingAddress billingAddress;
	private ShippingAddress shippingAddress;
	public BillingAddress getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	
}
