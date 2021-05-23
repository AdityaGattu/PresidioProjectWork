
package com.control;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.component.MyComponent;
import com.model.User;
import com.service.UserService;

@Controller
@RequestMapping("/")
public class LogoutController {
	
	
	@ModelAttribute
	public void addAttributes(Model model) {
	    model.addAttribute("logout", new User());
	    model.addAttribute("userlogin", new User());
	}
	
	@Autowired
	private UserService myservice;
	
	@RequestMapping(value = "userlogout", method = RequestMethod.GET)
	public String submit(@ModelAttribute("logout") User logout) {
		myservice.updateUser(logout,0);
		return "login";
		
	}
}



