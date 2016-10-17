package com.ecom.controller;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
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
import org.springframework.web.multipart.MultipartFile;
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
	
	
	private String saveDirectory = "C:/Users/Rohan/git/ReverbStore/ecom/src/main/webapp/resources/img/uploads/";
	
	@RequestMapping(value="/savenewproduct",method=RequestMethod.POST)
	public ModelAndView saveNewProduct(@ModelAttribute("productadd") Product newprod,ModelMap model)
	{	
	
		
		//System.out.println(output);
		
		
		MultipartFile multipartFile=newprod.getImgfile();
		String imgname="";
		imgname=multipartFile.getOriginalFilename();
		newprod.setImgname(imgname);
		System.out.println(multipartFile.getOriginalFilename());
		
		if (!multipartFile.getOriginalFilename().equals("")) {
			try {
				multipartFile.transferTo(new File(saveDirectory + multipartFile.getOriginalFilename()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	 
		
		else
		{
			System.out.println("file is empty");
		}
		
		newproduct.saveProduct(newprod);
		model.addAttribute("successmg", "Added Succesfully");
		newprod.setToNull();
		return new ModelAndView("newproduct");
		
		
	}
	
	@RequestMapping(value="/editproduct",method=RequestMethod.GET)
	public ModelAndView editProduct(@RequestParam("productid") String idParam1, Model model)
		{	Product p=null;
			int prodid=Integer.parseInt(idParam1);
			System.out.println(prodid);
			p=newproduct.findProductById(prodid);
			System.out.println(p.getName());
			model.addAttribute("prodname",p.getName());
			model.addAttribute("prodprice",p.getPrice());
			model.addAttribute("prodbrand",p.getBrand());
			
			
			String desc=p.getDescription();
			model.addAttribute("proddescription",desc);
			model.addAttribute("prodcategory",p.getCategory());
			model.addAttribute("imgname", p.getImgname());
			model.addAttribute("prodqty", p.getQty());
			model.addAttribute("prodsupplier", p.getSuppliername());
		
		
			model.addAttribute("prodid", idParam1);
			
			return new ModelAndView("editproduct","productedit",new Product());
		
	}
	
	
	
	
	
	
	@RequestMapping(value="/editandsaveproduct",method=RequestMethod.POST)
	public String editSaveProduct(@ModelAttribute("productedit") Product newprod,ModelMap model)
	{	
		
		
		//System.out.println(output);
		
		
		Product pnew=newproduct.findProductById(newprod.getProduct_id());
		String imgnameold=pnew.getImgname();
		newprod.setImgname(imgnameold);
		
		
		
		MultipartFile multipartFile=newprod.getImgfile();
		String imgname="";
		imgname=multipartFile.getOriginalFilename();
		
		System.out.println(multipartFile.getOriginalFilename());
		
		if (!multipartFile.getOriginalFilename().equals("")) {
			try {
				multipartFile.transferTo(new File(saveDirectory + multipartFile.getOriginalFilename()));
				newprod.setImgname(imgname);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	 
		
		else
		{
			
			System.out.println("file is empty");
		}
		
		newproduct.saveProduct(newprod);
		
		newprod.setToNull();
		return "redirect:" + "productcontrol";
		
	
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
	public String deleteProduct(@RequestParam("productid") String idParam1, Model mode)
	{
		
		int prodid=Integer.parseInt(idParam1);
		newproduct.deleteProduct(prodid);
		 return "redirect:" + "productcontrol";
	}
	
	
	
	
	
	@RequestMapping(value="/guitars", method=RequestMethod.GET)
	public ModelAndView guitars(Model model,Principal principal)
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
		
		
		return new ModelAndView("guitar");
		
	}
	
	
	@RequestMapping(value="/pedals", method=RequestMethod.GET)
	public ModelAndView pedals(Model model)
	{	
		
		
		
		ObjectMapper mapper = new ObjectMapper();
		
		List<Product> pedals;
		
		
		
		pedals=newproduct.getProductBycategory("Pedals");
		
		try {
			
			
			String pedalproducts=mapper.writeValueAsString(pedals);
			System.out.println(pedalproducts);
			model.addAttribute("pedals", pedalproducts);
			
			
			
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
		
		
		return new ModelAndView("pedals");
		
	}
	
	
	@RequestMapping(value="/amps", method=RequestMethod.GET)
	public ModelAndView Amps(Model model)
	{
		
		ObjectMapper mapper = new ObjectMapper();
		List<Product> amps;
		
		
		amps=newproduct.getProductBycategory("Amplifiers");
	
		try {
			String ampproducts=mapper.writeValueAsString(amps);
			System.out.println(ampproducts);
			model.addAttribute("amps", ampproducts);
			
			
			
			
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
		
		
		
		return new ModelAndView("amps");
	}
	
	
	@RequestMapping(value="/accesories", method=RequestMethod.GET)
	public ModelAndView category(Model model)
	{
		
		ObjectMapper mapper = new ObjectMapper();
		List<Product> amps;
		
		
		amps=newproduct.getProductBycategory("Accesories");
	
		try {
			String ampproducts=mapper.writeValueAsString(amps);
			System.out.println(ampproducts);
			model.addAttribute("amps", ampproducts);
			
			
			
			
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
		
		
		
		return new ModelAndView("accesories");
		
	}
	
	
	@RequestMapping(value="/featured",method=RequestMethod.GET)
	public ModelAndView featured(@RequestParam("productbrand") String idParam1, Model model)
	{
		List<Product> brandlist=null;
		brandlist=newproduct.getProductByBrand(idParam1);
		
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			String featuredproducts=mapper.writeValueAsString(brandlist);
			//System.out.println(ampproducts);
			model.addAttribute("featured", featuredproducts);
			
			
			
			
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
		
		
		
		return new ModelAndView("featured");
		
		
	}
	
	
	
	
	
	
	
	@RequestMapping(value="/product",method=RequestMethod.GET)
	public ModelAndView product(@RequestParam("productid") String idParam1, Model model)
	{	
		Product p=null;
		int prodid=Integer.parseInt(idParam1);
		System.out.println(prodid);
		p=newproduct.findProductById(prodid);
		System.out.println(p.getName());
		model.addAttribute("prodid",p.getProduct_id());
		model.addAttribute("prodname",p.getName());
		model.addAttribute("prodprice",p.getPrice());
		model.addAttribute("prodbrand",p.getBrand());
		model.addAttribute("prodqty", p.getQty());
		
		
		String desc=p.getDescription();
		
		if(p.getQty()>0)
		{
			model.addAttribute("availability","yes");
		}
		else
		{
			model.addAttribute("availability","no");
		}
		
		model.addAttribute("proddescription",desc);
		model.addAttribute("prodcategory",p.getCategory());
		model.addAttribute("imgname", p.getImgname());
		
		
		// For related Products
		
		
		List<Product> related;
		
		
		related=newproduct.getProductBycategory(p.getCategory());
		if(related.size()>=4)
		{
		
			for(int i=0;i<3;i++)
			{
				if(related.get(i).getProduct_id()==p.getProduct_id())
				{
					related.remove(i);
				}
				
			}
			
			model.addAttribute("related1", related.get(0));   
			model.addAttribute("related2", related.get(1));
			model.addAttribute("related3", related.get(2));
		}
		
		
		
		return new ModelAndView("product");
		
		
	}
	
	

	
	
	
	
	
}
