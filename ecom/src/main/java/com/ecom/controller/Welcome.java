package com.ecom.controller;
import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.model.User;
import com.ecom.service.UserServiceImpl;  

@Controller
@SessionAttributes("personObj")
class Welcome
{
	
	@Autowired
	UserServiceImpl u;
	
	@RequestMapping(value={"", "/", "welcome"})
	public ModelAndView welcomeScreen(Principal principal,Model model)
	{
		
		String name="";
		try
		{
			name=getCurrentUserdetails(principal);
			ModelAndView modelAndView = new ModelAndView();
		     modelAndView.setViewName("index");
		     modelAndView.addObject("personObj", name);
			return modelAndView;
			
		}
		catch(Exception e)
		{
			System.out.println("No one logged on");
			return new ModelAndView("index");
			
		}
		
		
		
		
		
		
		
		
		
	}
	
	
	@RequestMapping(value="/login")
	public ModelAndView loginScreen()
	{
		
		return new ModelAndView("login");
		
	}
	
	
	@RequestMapping("/accesories")
	public ModelAndView category()
	{
		return new ModelAndView("accesories");
		
	}
	
	
	private String getCurrentUserdetails(Principal p)
	{
		
		 String name=p.getName();
		 User current=u.findByEmail(name);
		 name=current.getFullname();
		return name;
		
	}
	
	@RequestMapping(value="/logout-success")
	public ModelAndView logoutScreen()
	{	
		
		
		return new ModelAndView("logout-success");
		
	}
	
	
	
	
}
