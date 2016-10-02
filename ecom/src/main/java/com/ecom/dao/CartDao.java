package com.ecom.dao;

import com.ecom.model.Cart;

public interface CartDao {

	
	boolean isCartEmpty();
	
	void updateCart(Cart cart);

	void removeAllItems();
	
}
