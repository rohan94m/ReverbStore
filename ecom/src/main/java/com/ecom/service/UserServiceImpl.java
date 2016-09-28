package com.ecom.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.ecom.dao.UserDaoImpl;
import com.ecom.model.User;



@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	UserDaoImpl newuser;
	
	

	public void save(User u) {
		 
		newuser.save(u);
		
	}

	public void update(User u) {
		// TODO Auto-generated method stub

	}

	public void delete(Integer id) {
		newuser.delete(id);
		

	}
	
	
	public List<User> getAllUsers() {
		List<User> allusers = null;
		allusers=newuser.getAllUsers();
		
		
		return allusers;
	}

	@Override
	public User findByEmail(String email_id) {
	
		return newuser.findByEmail(email_id);
	}
}
