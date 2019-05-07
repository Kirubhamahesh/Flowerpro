package com.kce.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kce.dao.DaoInterfacee;
import com.kce.model.Flower;
import com.kce.model.Student;

@Controller
public class Controllerclass {

	
	@Autowired
	DaoInterfacee dao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String dorating(ModelMap model) {
		
		return "login";
	}
	
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String flowerform(ModelMap model) {
		
		return "flowerform";
	}
	
	@RequestMapping(value = "/flower", method = RequestMethod.GET)
	public String flowerinsert(@ModelAttribute Flower ob,ModelMap model) {
		dao.insertflower(ob);
		model.addAttribute("ob",dao.view());
		return "viewcontent";
	}
	
	
	
	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String donew(@ModelAttribute Student ob) {
		
		return "welcome";
	}
	
	
	@RequestMapping(value = "/cpassword", method = RequestMethod.GET)
	public String dochangepassword(@ModelAttribute Student ob) {
		
		return "changepassw";
	}
	
	
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String doview(ModelMap model) {
		
		model.addAttribute("ob",dao.view());
		return "viewcontent";
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "/userSignUpform", method = RequestMethod.GET)
	public String inserttt(ModelMap model,@ModelAttribute Student student) {
		
			dao.insert(student);
			return "login";
	}
	
	
	@RequestMapping(value = "/validate", method = RequestMethod.GET)
	public String dorating(@ModelAttribute Student student,ModelMap model) {
		
			if(dao.validateuser(student) == 1)
			{
				model.addAttribute("ob",dao.view());
				return "viewcontent";
			}
			 return "login";
	}
	
	
}
