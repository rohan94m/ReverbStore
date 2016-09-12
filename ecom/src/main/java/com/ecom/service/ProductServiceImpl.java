package com.ecom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.dao.ProductDaoImpl;
import com.ecom.model.Product;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDaoImpl newprod;
	
	
	public void saveProduct(Product p) {
		
		newprod.saveProduct(p);
		

	}

	public void deleteProduct(int prodid) {
		newprod.deleteProduct(prodid);
	}

	public void updateProduct(int prodid) {
		
		newprod.updateProduct(prodid);

	}

	public Product findProductById(int prodid) {
		
		newprod.findProductById(prodid);
		return null;
	}

	public List<Product> getAllProducts() {
		List<Product> allproducts = null;
		allproducts=newprod.getAllProducts();
		
		
		return allproducts;
	}

}
