package com.ecom.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
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
	
	
	  public void saveProduct(Product p){
	      Session session = factory.openSession();
	      Transaction tx = null;
	      
	      try{
	         tx = session.beginTransaction();
	         
	         session.saveOrUpdate(p); 
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
		Product prod=findProductById(prodid);
		
	
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

	public void updateProduct(int prodid,Product newprod) {
		
		Session session=factory.openSession();
		Transaction tx=null;
		Product p=null;
		p=findProductById(prodid);
		newprod.setProduct_id(p.getProduct_id());
		try
		{
			tx=session.beginTransaction();
			session.update(newprod);
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

	public Product findProductById(int prodid) {
		
		Session session=factory.openSession();
		Transaction tx=null;
		Product p=null;
		try
		{
			tx=session.beginTransaction();
			String hql="from Product where product_id = :id";
			Query query=session.createQuery(hql);
			query.setInteger("id", prodid);
			p=(Product) query.uniqueResult();
			tx.commit();
		}
		catch(HibernateException e)
		{
		
		
		e.printStackTrace();
		}
		
		finally{
			
			session.close();
			}
		
		return p;
		
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

	@SuppressWarnings("unchecked")
	public List<Product> getProductByCategory(String cat){
		List<Product> guitars = null;
		Session session=factory.openSession();
		Transaction tx=null;
		
		try{
			tx=session.beginTransaction();
			String hql="from Product where category = :cat";
			
			Query query=session.createQuery(hql);
			query.setString("cat", cat);
			guitars=(List<Product>)query.list();
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
		return guitars;
	}

	
	
	
	
	
	
	
}
	
	
	
	

