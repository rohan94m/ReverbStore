package com.ecom.service;

import java.util.List;

import com.ecom.model.User;

public interface UserService {
	
	
	User findByEmail(String email_id);
	void save(User u);
	void update(User u);
	void delete(Integer id);
	List<User> getAllUsers();

}
