package com.ecom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.model.User;
import com.ecom.service.UserServiceImpl;

@Controller
public class UserHandleController {

	@Autowired
	UserServiceImpl newuser;
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView signupScreen()
	{
		return new ModelAndView("signup","registerform",new User());
		
	}
	
	
	@RequestMapping(value = "/registeruser",method=RequestMethod.POST)
	public String adduser(@ModelAttribute("registerform") User user,Model model)
	{
		
		
		newuser.save(user);
	return "index";
		
	}
	
	
}
