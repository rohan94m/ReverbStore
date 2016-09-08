package com.ecom.dao;

import org.hibernate.HibernateException; 
import org.hibernate.Session; 
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;
import com.ecom.model.Product;

@Repository
public class ProductDaoImpl {
	@Autowired
	private SessionFactory factory;

	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
	
	
	  public Integer addProduct(String name, String brand, long price, String category){
	      Session session = factory.openSession();
	      Transaction tx = null;
	      Integer productID = null;
	      try{
	         tx = session.beginTransaction();
	         Product p = new Product(name,brand, price,category);
	         productID = (Integer) session.save(p); 
	         tx.commit();
	      }catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
	      return productID;
	   }
	
	
	
	

}
