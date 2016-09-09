package com.learn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class FormularController {
	
	@RequestMapping(value="formular")
	public ModelAndView Main(Model map){
		
		
		return new ModelAndView("index");
	}
}
