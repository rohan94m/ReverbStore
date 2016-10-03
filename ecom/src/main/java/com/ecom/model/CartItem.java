package com.ecom.model;

import java.io.Serializable;

public class CartItem implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -827108325917255443L;
	/**
	 * 
	 */
	
	private Product product;
	private int quantity;
    private double totalPrice;
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	
	
	
	

}
