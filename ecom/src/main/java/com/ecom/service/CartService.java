package com.ecom.service;

import com.ecom.model.Cart;

public interface CartService {

boolean isCartEmpty();
	
	void updateCart(Cart cart);

	void removeAllItems();
	
	
}
