package com.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.BillingAddress;
import com.model.Cart;
import com.service.CartService;


@Controller
@RequestMapping("/")
public class BillingController {
	
	@ModelAttribute
	public void addAttributes(Model model) {
	    model.addAttribute("bill", new BillingAddress());
	}
	

	@RequestMapping(value = "billingaddress", method = RequestMethod.GET)
	public String fillbill() {
		return "billing";
	}
	
	@Autowired
	CartService cartservice;
	@RequestMapping(value = "fillbill", method = RequestMethod.POST)
	public String gotoinvoice(@ModelAttribute("bill") BillingAddress ba,Model model) {
		List<Cart>allitems = cartservice.getAllItems();
		 model.addAttribute("allitems", allitems);
		return "invoice";
	}

}
	