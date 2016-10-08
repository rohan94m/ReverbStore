package com.ecom.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
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
	public ModelAndView adduser(@ModelAttribute("registerform") @Valid User user,BindingResult result,ModelMap model)
	{
		 if(result.hasErrors()){
		model.addAttribute("errors", "Registered Succesfully");

		 }
		 else
		 {
		newuser.save(user);
		model.addAttribute("successmg", "Registered Succesfully");
		user.setToNull();
		
		 }
		 return  new ModelAndView("signup");
		
	}
	
	@RequestMapping(value="/getusers")
	public void displayUsers()
	{
		List<User> userlist=null;
		userlist=newuser.getAllUsers();
		
		for(int i=0;i<userlist.size();i++)
		{
			
			System.out.println(userlist.get(i).getFullname()+" "+userlist.get(i).getEmail());
		}
		
	}
	
	
	
}
