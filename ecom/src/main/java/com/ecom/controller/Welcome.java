package com.ecom.controller;
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.servlet.ModelAndView;  

@Controller
class Welcome
{
	
	
	
	@RequestMapping(value={"", "/", "welcome"})
	public ModelAndView welcomeScreen()
	{
		return new ModelAndView("index");
		
	}
	
	
	@RequestMapping("/login")
	public ModelAndView loginScreen()
	{
		return new ModelAndView("login");
		
	}
	
	
	@RequestMapping("/accesories")
	public ModelAndView category()
	{
		return new ModelAndView("accesories");
		
	}
	
	
	
	
	
}
