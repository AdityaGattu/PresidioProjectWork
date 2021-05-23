package com.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Cart;
import com.model.User;
import com.service.CartService;
import com.service.UserService;

@Controller
@RequestMapping("/")
public class CartController {
	
//	@Autowired
//	//private InvoiceService invoiceservice;
//	
//	@RequestMapping(value = "generateinvoice", method = RequestMethod.GET)
//	public String submit(@ModelAttribute("allitems") List<Cart> allitems) {
//		//invoiceservice.createInvoice(allitems);
//		return "invoice";
//		
//	}
	
	@ModelAttribute
	public void addAttributes(Model model) {
	    model.addAttribute("updatecartitem", new Cart());
	    model.addAttribute("deletecartitem", new Cart());
	}
	
	@Autowired
	private CartService cartservice;
	
	@RequestMapping(value = "updatecart", method = RequestMethod.POST)
	public String update( @ModelAttribute("updatecartitem") Cart updatecartitem,Model model) {
		int id=updatecartitem.getItemid();
		Cart cartitem=new Cart();
		cartitem=cartservice.getItembyid(id);
		cartitem.setQty(updatecartitem.getQty());
		cartitem.setTotal(updatecartitem.getQty()*cartitem.getCost());
		cartservice.updateItem(cartitem);
		List<Cart>allitems = cartservice.getAllItems();
		model.addAttribute("allitems", allitems);
		return "cart";
	}
	
	@RequestMapping(value = "deletecart", method = RequestMethod.POST)
	public String delete( @ModelAttribute("deletecartitem") Cart deletecartitem,Model model) {
		int id=deletecartitem.getItemid();
		//cartservice.getItembyid(id);
		cartservice.deleteItem(cartservice.getItembyid(id));
		List<Cart>allitems = cartservice.getAllItems();
		model.addAttribute("allitems", allitems);
		return "cart";
	}
	
	@Autowired
	private UserService userservice;
	
	@RequestMapping(value = "generateinvoice", method = RequestMethod.GET)
	public String invoice( Model model) {
		  User u=new User();
		  u=userservice.getloggedinuser();
		  List<Cart>allitems = cartservice.getAllItems();
		  model.addAttribute("allitems", allitems);
		  return "invoice";
	}
}
