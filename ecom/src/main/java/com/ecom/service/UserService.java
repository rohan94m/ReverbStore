package com.ecom.service;

import com.ecom.model.User;

public interface UserService {
	
	
	User findById(Integer id);
	void save(User u);
	void update(User u);
	void delete(Integer id);
	

}
