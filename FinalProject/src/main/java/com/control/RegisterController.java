package com.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.component.MyComponent;
import com.model.User;
import com.service.UserService;

@Controller
@RequestMapping("/")
public class RegisterController {
	
	User user1=new User();
	
	@ModelAttribute
	public void addAttributes(Model model) {
	    model.addAttribute("registration", new User());
	    model.addAttribute("userlogin", new User());
	}
	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register(Model model) {
		return "register";
	}
	
	@Autowired
	private UserService myservice;
	
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(@ModelAttribute("registration") User registration) {
		myservice.createUser(registration);
		return "login";
	}
}
