package com.ecom.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException; 
import org.hibernate.Session; 
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;
import com.ecom.model.Product;

@Repository
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory factory;

	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
	
	@Transactional
	  public void saveProduct(Product p){
	      Session session = factory.openSession();
	      Transaction tx = null;
	      
	      try{
	         tx = session.beginTransaction();
	         
	         session.save(p); 
	         tx.commit();
	      }catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
	      
	   }

	public void deleteProduct(int prodid) {
		
		Session session=factory.openSession();
		Transaction tx=null;
		Product prod=new Product();
		prod.setProduct_id(prodid);
		
	
		try
		{
			tx=session.beginTransaction();
			session.delete(prod);
			tx.commit();
			
			
		}
		
		catch(HibernateException e)
		{
			if(tx!=null)
			{
				tx.rollback();
			}
			
			e.printStackTrace();
		}
		
		finally
		{
			session.close();
		}
		
	}

	public void updateProduct(int prodid) {
		// TODO Auto-generated method stub
		
	}

	public Product findProductById(int prodid) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Product> getAllProducts() {
		List<Product> products = null;
		Session session=factory.openSession();
		Transaction tx=null;
		try
		{
			tx=session.beginTransaction();
			products=(List<Product>)session.createCriteria(Product.class).list();
			tx.commit();
			
		}
		catch(HibernateException e)
		{
			if(tx!=null)
			{
				tx.rollback();
			}
		
		e.printStackTrace();
	}
	
	finally
	{
		session.close();
	}
		return products;
	
		
	}
}
	
	
	
	

