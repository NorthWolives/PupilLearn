package com.learn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.learn.formular.AutoFormula;

@Controller
public class FormularController {
	
	@SuppressWarnings("static-access")
	@RequestMapping(value="generate_easy")
	public ModelAndView Main(Model map){
		AutoFormula autoFormula = new AutoFormula();
		autoFormula.generate(0, 0, 3, 0, 10);
		String formular = autoFormula.formular;
		String result = autoFormula.result;
		
		map.addAttribute("formular", formular);
		map.addAttribute("result", result);
		return new ModelAndView("learn");
	}
}
