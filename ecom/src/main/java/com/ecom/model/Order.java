package com.ecom.model;

import javax.persistence.*;

public class Order {
	
	
	 	@Id
	    @GeneratedValue
	    private int orderid;

	    @OneToOne
	    @JoinColumn(name = "cartId")
	    private Cart cart;

	    @OneToOne
	    @JoinColumn(name = "userid")
	    private User user;

	    @Column
	    private String billingAddress;

	    @Column
	    private String shippingAddress;

		public int getOrderid() {
			return orderid;
		}

		public void setOrderid(int orderid) {
			this.orderid = orderid;
		}

		public Cart getCart() {
			return cart;
		}

		public void setCart(Cart cart) {
			this.cart = cart;
		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

		public String getBillingAddress() {
			return billingAddress;
		}

		public void setBillingAddress(String billingAddress) {
			this.billingAddress = billingAddress;
		}

		public String getShippingAddress() {
			return shippingAddress;
		}

		public void setShippingAddress(String shippingAddress) {
			this.shippingAddress = shippingAddress;
		}
	
	

}
