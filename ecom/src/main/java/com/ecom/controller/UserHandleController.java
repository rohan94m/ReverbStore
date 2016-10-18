package com.ecom.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.validation.Valid;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping("/useraccount")
	public ModelAndView userScreen(Principal principal,Model model)
	{
		
		
	
			User u=newuser.findByEmail(principal.getName());
			model.addAttribute("activeuser", u);
		
		
		return new ModelAndView("userhome");
		
	}
	
	
	@RequestMapping(value = "/registeruser",method=RequestMethod.POST)
	public ModelAndView adduser(@ModelAttribute("registerform") @Valid User user,BindingResult result,ModelMap model)
	{
		 if(result.hasErrors()){
		model.addAttribute("errors", "Registered Succesfully");
		 return  new ModelAndView("signup");

		 }
		 else
		 {
		newuser.save(user);
		model.addAttribute("successmg", "Registered Succesfully");
		user.setToNull();
		return  new ModelAndView("signupsuccess");
		
		 }
		 
		
	}
	
	@RequestMapping(value="/getusers")
	public ModelAndView displayUsers(Model model)
	{
		List<User> userlist=null;
		userlist=newuser.getAllUsers();
		
		ObjectMapper mapper = new ObjectMapper();
		
		
		
		try {
			String customers=mapper.writeValueAsString(userlist);
			System.out.println(customers);
			model.addAttribute("customers", customers);
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 return  new ModelAndView("userlist");
		
	}
	
	
	
}
