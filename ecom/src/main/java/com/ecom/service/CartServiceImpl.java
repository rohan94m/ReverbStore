package com.ecom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.dao.CartDaoImpl;
import com.ecom.model.Cart;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDaoImpl cart;
	
	public boolean isCartEmpty()
	{
		return cart.isCartEmpty();
	}
	
	
	public void updateCart(Cart cartnew)
	{
		cart.updateCart(cartnew);
	}
	
	public void removeAllItems()
	{
		cart.removeAllItems();
	}
}
