package com.control;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.component.MyComponent;
import com.model.User;
import com.service.UserService;

@Controller
@RequestMapping("/")
public class LoginController {
	
	
	@ModelAttribute
	public void addAttributes(Model model) {
	    model.addAttribute("userlogin", new User());
	    model.addAttribute("registration", new User());
	}
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@Autowired
	private UserService myservice;
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(@ModelAttribute("userlogin") User userlogin,Model model) {
		
		if(myservice.checkUser(userlogin)) {
			return "welcome";
		}
		else {
			return "register";
		}
		
	}
}
