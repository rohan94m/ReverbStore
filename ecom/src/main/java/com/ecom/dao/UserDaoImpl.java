package com.ecom.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session; 
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;


import com.ecom.model.User;
import com.ecom.model.UserRole;


@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory factory;
	
	
	public User findByEmail(String email) {
	
		
		Session session=factory.openSession();
		Transaction tx=null;
		User u=null;
		System.out.println("Email being seached"+email);
		//UserRole role=null;
		try
		{
			tx=session.beginTransaction();
			System.out.println("FINDING ROLE");
			
			u = (User) session.load(User.class, new String(email));

			
			
			System.out.println(u.getEmail());
			System.out.println(u.getPassword());
			System.out.println(u.getRole().getRole());
		
			tx.commit();
		}
		catch(HibernateException e)
		{
		
		
		e.printStackTrace();
		}
		
		finally{
			
			session.close();
			}
		
		return u;
		
		
		
		
	}
	@Transactional
	public void save(User u) {
		
		Session session=factory.openSession();
		Transaction tx=null;
		UserRole role = new UserRole();
		role.setUserroleid(2);
		u.setRole(role);
		
		
		
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
	
	//todo	
		
	}

	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	
	@SuppressWarnings("unchecked")
	public List<User> getAllUsers() {
		List<User> users = null;
		Session session=factory.openSession();
		Transaction tx=null;
		try
		{
			tx=session.beginTransaction();
			users=(List<User>)session.createCriteria(User.class).list();
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
		return users;
	
		
	}
	public User isValidUser(String email, String pass) {
		
		Session session=factory.openSession();
		Transaction tx=null;
		User u=null;
		try
		{
			tx=session.beginTransaction();
			String hql="from User where email = :emailid and password = :pass";
			Query query=session.createQuery(hql);
			query.setString("emailid", email);
			query.setString("password", pass);
			u=(User) query.uniqueResult();
			tx.commit();
		}
		catch(HibernateException e)
		{
		
		
		e.printStackTrace();
		}
		
		finally{
			
			session.close();
			}
		
		return u;
		
	}
	
	
	

}
