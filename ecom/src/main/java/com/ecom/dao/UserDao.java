package com.ecom.dao;
import java.util.List;

import com.ecom.model.User;

public interface UserDao {
	
	User findByEmail(String emailid);
	void save(User u);
	void update(User u);
	void delete(Integer id);
	List<User> getAllUsers();
	User isValidUser(String id, String pass);
	

}
