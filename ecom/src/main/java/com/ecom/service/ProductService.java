package com.ecom.service;

import java.util.List;

import com.ecom.model.Product;

public interface ProductService {


	void saveProduct(Product p);
	void deleteProduct(int prodid);
	void updateProduct(int prodid,Product newprod);
	Product findProductById(int prodid);
	List<Product> getAllProducts();
	List<Product> getProductBycategory(String subcat);
	 List<Product> getProductByBrand(String brand);
}
