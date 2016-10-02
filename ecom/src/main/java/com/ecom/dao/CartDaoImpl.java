package com.ecom.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecom.model.Cart;

@Repository
public class CartDaoImpl implements CartDao {

	@Autowired
	private SessionFactory factory; 
	
	public boolean isCartEmpty() {
		
		Session session = factory.openSession();
		if(session.createQuery("select cartId from cart").list().isEmpty())
		{
			return true;
		}
		else
		{
		return false;
		}
	}

	
	public void updateCart(Cart cart) {
		
		Session session = factory.openSession();
	    Transaction tx = null;
	    try{
	         tx = session.beginTransaction();
	         session.saveOrUpdate(cart);
	         tx.commit();
	      }catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
		
		
		
	}

	
	public void removeAllItems() {
		Session session=factory.openSession();
		Transaction tx=null;
	
		try
		{
			tx=session.beginTransaction();
			String hql="delete from cart";
			Query query=session.createQuery(hql);
			query.executeUpdate();
			tx.commit();
		}
		catch(HibernateException e)
		{
		
		
		e.printStackTrace();
		}
		
		finally{
			
			session.close();
			}
		
		
	}

}
