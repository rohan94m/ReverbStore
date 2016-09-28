package com.ecom.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.ecom.model.UserRole;

public class UserRoleDaoImpl implements UserRoleDao {

	@Autowired
	private SessionFactory factory;
	
	public UserRole getRole(int id) {
		
		UserRole role=null;
		try
		{
		Session session=factory.openSession();
		 role= (UserRole)session.load(UserRole.class,id);
		}
		
		catch(HibernateException e)
		{
			e.printStackTrace();
		}

		return role;
		
		// http://fruzenshtein.com/spring-mvc-security-mysql-hibernate/
	}

}
