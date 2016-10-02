package com.ecom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.dao.CartItemDaoImpl;
import com.ecom.model.CartItem;

@Service
public class CartItemServiceImpl implements CartItemService{
	
	@Autowired
	private CartItemDaoImpl cartitem;
	
	public void addItem(CartItem item) {
	
		
		cartitem.addItem(item);
	}
	
	public void removeItem(CartItem item) {
		cartitem.removeItem(item);
	}
	
	public CartItem getCartItemByProductId(int productId) {
	
		return cartitem.getCartItemByProductId(productId);
	
	}

}
