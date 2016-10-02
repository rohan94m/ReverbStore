package com.ecom.service;

import com.ecom.model.CartItem;

public interface CartItemService {
	
	void addItem(CartItem item);
	void removeItem(CartItem item);
	
	CartItem getCartItemByProductId(int productId);



}



