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
	public ModelAndView EasyMode(Model map){
		AutoFormula autoFormula = new AutoFormula();
		autoFormula.generate(0, 0, 4, 0, 200);
		String formular = autoFormula.formular;
		String result = autoFormula.result;
		
		map.addAttribute("formular", formular);
		map.addAttribute("result", result);
		return new ModelAndView("learn");
	}
	
	@SuppressWarnings("static-access")
	@RequestMapping(value="generate_middle")
	public ModelAndView MiddleMode(Model map){
		AutoFormula autoFormula = new AutoFormula();
		autoFormula.generate(2, 0, 6, 0, 20);
		String formular = autoFormula.formular;
		String result = autoFormula.result;
		formular = formular.replace("*", " \\times ");
		formular = formular.replace("/", " \\div ");
		
		map.addAttribute("formular", formular);
		map.addAttribute("result", result);
		return new ModelAndView("middle");
	}
	
	@SuppressWarnings("static-access")
	@RequestMapping(value="generate_hard")
	public ModelAndView HardMode(Model map){
		AutoFormula autoFormula = new AutoFormula();
		autoFormula.generate(2, 1, 6, 0, 20);
		String mathTex = autoFormula.mathTex;
		String result = autoFormula.result;
		mathTex = mathTex.replace("*", " \\times ");
		mathTex = mathTex.replace("/", " \\div ");
		
		map.addAttribute("formular", mathTex);
		map.addAttribute("result", result);
		return new ModelAndView("hard");
	}
}
