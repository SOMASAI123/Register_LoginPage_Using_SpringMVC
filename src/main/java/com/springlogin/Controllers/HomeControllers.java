package com.springlogin.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springlogin.entities.Relo;
import com.springlogin.repository.ReloRepository;
import com.springlogin.service.ReloService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomeControllers {
    
	@Autowired
	private ReloService service;
	
	@GetMapping("/home")
	public String homeLogin()
	{
		return "home";
	}
//	
	@GetMapping("/register")
	public String RegisterUser(Model model)
	{ 
		model.addAttribute("relo", new Relo());
		return "register";
	}
	
    @PostMapping("/registerform")	
	public String submitForm(@ModelAttribute("relo") Relo relo, Model model)
	{
	      boolean status=service.createUser(relo);
	      
	      if(status)
	      {
	    	  model.addAttribute("success msg","user registered sucessfully");
	    	  return "sucess";
	      }
	      else {
	    	  model.addAttribute("errormsg","invalid credentials");
	    	  return "register";
	      }
	}
	
	@GetMapping("/login")
	public String loginUser( Model model)
	{
		model.addAttribute("relo",new Relo());
		
		return "login";
	}
	
	@PostMapping("/loginform")
	public String submitLoginForm(@ModelAttribute("relo") Relo relo, Model model)
	{
		  Relo relo1=service.loginUsser(relo.getEmail(),relo.getPassword());
		  
		  if(relo1 != null)
		  {   
			  model.addAttribute("email", relo1.getEmail());
			  model.addAttribute("password",relo1.getPassword());
			   return "profile";
		  }
		  else {
			   model.addAttribute("errormsg","incorrect credentials");
			   return "login";
		  }
	}
	
	  @GetMapping("/logout")
	    public String logout(HttpServletRequest request) {
	        // Invalidate the session
//	        HttpSession session = request.getSession(false);
//	        if (session != null) {
//	            session.invalidate();
//	        }
//	        // Redirect to login page after logout
	        return "redirect:/login?logout";
	    }
}
