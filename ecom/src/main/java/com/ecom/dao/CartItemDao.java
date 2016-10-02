package com.ecom.dao;


import com.ecom.model.CartItem;

public interface CartItemDao {

	void addItem(CartItem item);
	void removeItem(CartItem item);
	
	CartItem getCartItemByProductId(int productId);
	
}
