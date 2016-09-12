package com.ecom.service;

import java.util.List;

import com.ecom.model.Product;

public interface ProductService {


	void saveProduct(Product p);
	void deleteProduct(int prodid);
	void updateProduct(int prodid);
	Product findProductById(int prodid);
	List<Product> getAllProducts();
}