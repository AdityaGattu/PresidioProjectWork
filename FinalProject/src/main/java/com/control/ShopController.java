
package com.control;



import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.component.MyComponent;
import com.model.Cart;
import com.model.Item;
import com.model.User;
import com.service.CartService;
import com.service.ItemService;
import com.service.UserService;

@Controller
@RequestMapping("/")
public class ShopController {

	@ModelAttribute
	public void addAttributes(Model model) {
	    model.addAttribute("additem", new Cart());
	    model.addAttribute("updatecartitem", new Cart());
	    model.addAttribute("deletecartitem", new Cart());
	}
	
	@RequestMapping(value = "shop1", method = RequestMethod.GET)
	public String gotoshop1() {
		return "shop1";
	}
	
	@RequestMapping(value = "shop2", method = RequestMethod.GET)
	public String gotoshop2() {
		return "shop2";
	}
	
	@RequestMapping(value = "shop3", method = RequestMethod.GET)
	public String gotoshop3() {
		return "shop3";
	}
	@Autowired
	private CartService cartservice;
	
	@Autowired
	private ItemService itemservice;
	@RequestMapping(value = "addtocart", method = RequestMethod.POST)
	public String addtocart(@ModelAttribute("additem")Cart additem,Model model) {
		Item i=new Item();
		i=itemservice.getItemById(additem.getItemid());
		additem.setItemid(additem.getItemid());
		additem.setItemname(i.getName());
		additem.setCost(i.getPrice());
		additem.setTotal(additem.getCost()*additem.getQty());
		if(cartservice.getItembyid(additem.getItemid())==null) {
		cartservice.additem(additem);}
		else {
			int updatedqty=cartservice.getItembyid(additem.getItemid()).getQty()+additem.getQty();
			additem.setQty(updatedqty);
			int updatedcost=additem.getCost()*additem.getQty();
			additem.setCost(updatedcost);
			cartservice.updateItem(additem);
		}
		return "shop1";
	}
	
	@RequestMapping(value="showcart",method=RequestMethod.GET)
	public String displaycart(Model model) {
		  List<Cart>allitems = cartservice.getAllItems();
		  model.addAttribute("allitems", allitems);
		  return "cart";
	}
	
}



