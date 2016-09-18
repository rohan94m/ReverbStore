package com.ecom.controller;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.model.Product;
import com.ecom.service.ProductServiceImpl;

@Controller
public class ProductHandleController {

	@Autowired 
	ProductServiceImpl newproduct;
	
	@RequestMapping(value="/newproduct", method=RequestMethod.GET)
	public ModelAndView saveProduct()
	{
		return new ModelAndView("newproduct","productadd",new Product());
		
	}
	
	
	@RequestMapping(value="/savenewproduct",method=RequestMethod.POST)
	public ModelAndView saveNewProduct(@ModelAttribute("productadd") Product newprod,ModelMap model)
	{	
		
		newproduct.saveProduct(newprod);
		model.addAttribute("successmg", "Added Succesfully");
		newprod.setToNull();
		return new ModelAndView("newproduct");
		
		
	}
	
	
	@RequestMapping(value="/productcontrol", method=RequestMethod.GET)
	public ModelAndView adminScreen(Model model)
	{	ObjectMapper mapper = new ObjectMapper();
		List<Product> allproducts;
		
		allproducts=newproduct.getAllProducts();
		try {
			String products=mapper.writeValueAsString(allproducts);
			System.out.println(products);
			model.addAttribute("products", products);
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
		
		
		
		return new ModelAndView("productcontrol");
		
	}
	
	
	@RequestMapping(value="/deleteprod" ,method=RequestMethod.GET)
	public ModelAndView deleteProduct()
	{
		
		
		
		
		return null;
		
	}
	
	
	
	
	@RequestMapping(value="/guitars", method=RequestMethod.GET)
	public ModelAndView guitars(Model model)
	{
		
		ObjectMapper mapper = new ObjectMapper();
		List<Product> acoustic;
		List<Product> electric;
		List<Product> bass;
		
		acoustic=newproduct.getProductBycategory("Acoustic Guitar");
		electric=newproduct.getProductBycategory("Electric Guitar");
		bass=newproduct.getProductBycategory("Bass Guitar");
		try {
			String acousticproducts=mapper.writeValueAsString(acoustic);
			System.out.println(acousticproducts);
			model.addAttribute("acoustic", acousticproducts);
			
			String electricproducts=mapper.writeValueAsString(electric);
			System.out.println(electricproducts);
			model.addAttribute("electric", electricproducts);
			
			
			String bassproducts=mapper.writeValueAsString(bass);
			System.out.println(bassproducts);
			model.addAttribute("bass", bassproducts);
			
			
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
		
		
		return new ModelAndView("guitars");
		
	}
	
	
	
	@RequestMapping(value="/product",method=RequestMethod.GET)
	public ModelAndView product(@RequestParam("productid") String idParam1, Model model)
	{	
		Product p=null;
		int prodid=Integer.parseInt(idParam1);
		System.out.println(prodid);
		p=newproduct.findProductById(prodid);
		System.out.println(p.getName());
		model.addAttribute("prodname",p.getName());
		model.addAttribute("prodprice",p.getPrice());
		model.addAttribute("prodbrand",p.getBrand());
		model.addAttribute("proddescription",p.getDescription());
		model.addAttribute("prodcategory",p.getCategory());
		return new ModelAndView("product");
		
		
	}
	

	
	
}
