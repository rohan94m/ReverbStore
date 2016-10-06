package com.ecom.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.model.BillingAddress;
import com.ecom.model.Cart;
import com.ecom.model.CartItem;
import com.ecom.model.Product;
import com.ecom.model.ShippingAddress;
import com.ecom.service.ProductServiceImpl;

@Controller
@Component
@SessionAttributes({"personObj","cartObj"})
public class CartController {
	
	@Autowired
	ProductServiceImpl prod;
	
	
	@Autowired
	HttpSession session;
	
	
	@RequestMapping(value="/additemtocart", method=RequestMethod.GET)
	public String addItemToCart(@RequestParam("productid") String idParam1,Model model)
	{
		Cart cart=(Cart)session.getAttribute("cartObj");
		if(cart==null)
		{
			cart=new Cart();
		}
		
		Integer id=Integer.valueOf(idParam1);
		int qty=1;
		Product p=prod.findProductById(id);
		
		CartItem item= new CartItem();
		item.setProduct(p);
		item.setQuantity(qty);
		double totalPrice=p.getPrice().doubleValue()*qty;
		item.setTotalPrice(totalPrice);
		System.out.println(cart.getCartCount());
		
		
		List<CartItem> cartList=new ArrayList<CartItem>();
		if(cart.getCartItems()==null)
		{
			cartList.add(item);
			cart.setCartItems(cartList);
			
		}
		else
		{
		cartList=cart.getCartItems();
		int flag=0;
		
		for(int i=0;i<cartList.size();i++)
		{
			if(cartList.get(i).getProduct().getProduct_id()==p.getProduct_id())
			{
				cartList.get(i).setQuantity(cartList.get(i).getQuantity()+1);
				cartList.get(i).setTotalPrice(cartList.get(i).getTotalPrice()+p.getPrice().doubleValue());
				flag=1;
				break;
			}
			
			
		}
		
		if(flag==0)
		{
		cartList.add(item);
		cart.setCartItems(cartList);
		}
		
		}
		cart.calcGrandTotal();
		cart.setCartCount(cart.getCartCount()+1);
		model.addAttribute("cartObj",cart);
		return "redirect:" + "product?productid="+idParam1;
	}
	
	
	@RequestMapping("/viewcart")
	public ModelAndView viewCart(Model model)
	{
		Cart cart=(Cart)session.getAttribute("cartObj");
		
		if(cart==null|| cart.getCartCount()==0){
			model.addAttribute("emptycart","emptycart");
			
		}
		
		else
		{
			model.addAttribute("emptycart","notempty");
			model.addAttribute("grandtotal", cart.getGrandTotal());
			ObjectMapper mapper = new ObjectMapper();
			List<CartItem> cartitems= cart.getCartItems();
			
			try {
				String cartitemlist=mapper.writeValueAsString(cartitems);
				System.out.println(cartitemlist);
				model.addAttribute("cartitems", cartitemlist);
				
				
				
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
			
			
			
		}
		
		return new ModelAndView("viewcart");
	}
	
	
	
	
	public Cart validateCart(Cart c) throws IOException
	{
		System.out.println("validate reached");
		
		if(c == null || c.getCartItems().size()==0){
            throw new IOException("Cart is empty yo");
        }
		
		/*if(session.getAttribute("personObj")==null)
		{
			throw new IOException("User not logged in");
		}
		
		*/
		
		
		
		return c;
		
	}
	
	
	
	public void processOrder(Cart c, ShippingAddress s, BillingAddress b)
	{
		System.out.println("Processing Order");
		System.out.println("Cart items :");
		for(int i=0;i<c.getCartItems().size();i++)
		{
			
			System.out.println(c.getCartItems().get(i).getProduct().getName());
		}
		
		
		System.out.println(s.addressAsString());
		
		System.out.println(b.addressAsString());
		
		Cart newcart=new Cart();
		session.setAttribute("cartObj", newcart);
		
		
	}
	
	

}
