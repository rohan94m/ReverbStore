package com.ecom.dao;
import java.util.List;

import com.ecom.model.User;

public interface UserDao {
	
	User findById(Integer id);
	void save(User u);
	void update(User u);
	void delete(Integer id);
	List<User> getAllUsers();

}
