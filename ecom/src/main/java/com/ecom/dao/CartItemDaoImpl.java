package com.ecom.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecom.model.CartItem;


@Repository
public class CartItemDaoImpl implements CartItemDao {

	@Autowired
	private SessionFactory factory;
	
	
	
	public void addItem(CartItem item) {
		
		Session session = factory.openSession();
	    Transaction tx = null;
	    try{
	         tx = session.beginTransaction();
	         session.save(item);
	         tx.commit();
	      }catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
		
		
	}

	
	public void removeItem(CartItem item) {
		
		Session session = factory.openSession();
	    Transaction tx = null;
	    try{
	         tx = session.beginTransaction();
	         session.delete(item);
	         tx.commit();
	      }catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
		
	}

	
	public CartItem getCartItemByProductId(int productId) {
		
		Session session=factory.openSession();
		Transaction tx=null;
		CartItem item=null;
		try
		{
			tx=session.beginTransaction();
			String hql="from cartitem where productId = :id";
			Query query=session.createQuery(hql);
			query.setInteger("id", productId);
			item=(CartItem) query.uniqueResult();
			tx.commit();
		}
		catch(HibernateException e)
		{
		
		
		e.printStackTrace();
		}
		
		finally{
			
			session.close();
			}
		
		return item;
		
		
	}

}
