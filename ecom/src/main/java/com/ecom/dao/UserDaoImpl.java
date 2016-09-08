package com.ecom.dao;

import org.hibernate.HibernateException; 
import org.hibernate.Session; 
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;
import com.ecom.model.User;


@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory factory;
	
	
	public User findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void save(User u) {
		
		Session session=factory.openSession();
		Transaction tx=null;
		
		try
		{
			tx=session.beginTransaction();
			session.saveOrUpdate(u);
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

	public void update(User u) {
		// TODO Auto-generated method stub
		
	}

	public void delete(Integer id) {
		Session session=factory.openSession();
		Transaction tx=null;
		User user=new User();
		user.setUser_id(id);
		try
		{
			tx=session.beginTransaction();
			session.delete(user);
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

	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
	
	
	

}
